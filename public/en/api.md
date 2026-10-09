# API Endpoints - Personal Health Records v1.0.0-ballot2

## API Endpoints

### PHR Export and Import Operations

Systems MAY implement standard APIs for generating and importing `.phr` or `.sphr` files. These operations enable patients to export their complete health records from one system and import them into another, supporting the core PHR use case of patient-controlled data portability.

#### API Conformance

Systems that implement the export and import APIs described on this page are subject to the following conformance requirements, which reflect what interoperated successfully across six systems at the September 2026 Connectathon (Life Library, FlexPa, Chronicle Workstation, Android HealthConnect, Apple HealthKit, Epic Sandbox):

* Servers implementing PHR export **MUST** support the `outputFormat` parameter.
* Servers **MUST** support FHIR Bundle output (`application/fhir+json`) for small exports.
* Servers **SHOULD** support NDJSON output for large exports. As a rule of thumb, beyond a few thousand resources or roughly 50 MB of serialized content, NDJSON SHOULD be used rather than a single Bundle.
* Clients importing PHR data **MUST** accept both FHIR Bundle and NDJSON payloads.
* PHR systems following this implementation guide **MUST** include the API endpoints they expose in their FHIR server's CapabilityStatement (see [Capability Statement](#capability-statement) below).

#### Export Operations

The `$phr-export` operation generates a complete patient health record in various formats. This operation is typically invoked by the patient or their authorized application.

```
# Export as FHIR Bundle (default)
GET /Bundle/$phr-export

# Export as NDJSON Bulk Data file
GET /Bundle/$phr-export?outputFormat=ndjson

# Export as PHR file (NDJSON with .phr extension)
GET /Bundle/$phr-export?outputFormat=phr

# Export as SPHR file (zip container with supporting documents)
GET /Bundle/$phr-export?outputFormat=sphr

```

**Date Range Filtering:**

Exporters can request specific time periods to reduce payload size or focus on recent data:

```
# Export everything from 2010 to current
GET /Bundle/$phr-export?start=2010

# Export specific date range
GET /Bundle/$phr-export?start=2010&end=2020-06

# Export last year only
GET /Bundle/$phr-export?start=2024-01-01&end=2024-12-31

```

**Multi-Patient Systems:**

For systems managing multiple patients (e.g., EHR systems), specify the patient identifier:

```
# Export for specific patient
GET /Bundle/$phr-export?patient=Patient/12345

# Export with date range and format
GET /Bundle/$phr-export?patient=Patient/12345&outputFormat=sphr&start=2020

```

#### Import Operations

The `$import` operation accepts PHR data in NDJSON format and imports it into the receiving system. This operation should handle deduplication, provenance tracking, and conflict resolution.

```
# Import PHR data (NDJSON format)
POST /Bundle/$import
Content-Type: application/x-ndjson

# Import with merge strategy
POST /Bundle/$import?strategy=merge

# Import with validation only (no commit)
POST /Bundle/$import?mode=validate

```

**Import Considerations:**

* **Deduplication**: System should detect and handle duplicate resources
* **Provenance**: Imported resources should retain original provenance metadata
* **Validation**: All resources should be validated against FHIR profiles (see the [Conformance](./conformance.md) page for multi-schema validation guidance)
* **Conflict Resolution**: System should have policies for handling conflicting data

##### Asynchronous Import and Back Pressure

A complete PHR import can run to gigabytes, and a synchronous `POST $import` risks client timeouts while giving the server no flow control. Servers SHOULD support the standard [FHIR Asynchronous Request Pattern](https://www.hl7.org/fhir/R4/async.html) for imports:

```
POST /Bundle/$import
Prefer: respond-async
Content-Type: application/x-ndjson

HTTP/1.1 202 Accepted
Content-Location: https://example.org/jobs/import/789

```

The client polls the `Content-Location` URL; the server responds `202 Accepted` with an `X-Progress` header while processing, and `200 OK` with an import manifest (resource counts, OperationOutcomes for rejected resources) when complete.

For back pressure, servers MAY respond `429 Too Many Requests` with a `Retry-After` header when ingestion is saturated, and clients MUST honor it. Synchronous import remains appropriate for small Bundles. This pattern is aligned with the Bulk Data import/`$submit` work; as that specification matures, this guide expects to reference it directly rather than define a competing mechanism.

##### Operation Sequencing and Dependent Operations

Export, validation, and import are frequently chained. The recommended pipeline is **export → validate → import → reconcile**: validate the payload (e.g., `POST /Bundle/$import?mode=validate`) before committing it, then reconcile duplicates and conflicts after commit (see [Merging and Versioning](./longitudinal.md)).

NDJSON provides no ordering guarantee, so importers MUST tolerate forward references — an Observation may appear on an earlier line than the Encounter it references. Two workable strategies:

1. **Two-pass import**: first pass indexes every resource`id`; second pass commits with references resolved.
1. **Deferred resolution**: commit resources as they stream in, holding unresolved references in a pending queue until the target arrives, and reporting any still-unresolved references in the import manifest.

Importers MUST resolve internal references within the payload (including `urn:uuid:` placeholders in Bundles) rather than rejecting resources for referencing content later in the stream.

#### Response Formats

Export operations support multiple response formats:

| | | |
| :--- | :--- | :--- |
| Bundle | `application/fhir+json` | Standard FHIR Bundle resource |
| NDJSON | `application/x-ndjson` | Newline-delimited JSON, one resource per line |
| PHR | `application/x-ndjson` | Same as NDJSON with`.phr`extension |
| SPHR | `application/zip` | Zip archive containing .phr file(s) plus supporting documents |

##### NDJSON Line Discipline

At the September 2026 Connectathon, systems disagreed about whether exported NDJSON may be pretty-printed or word-wrapped. To remove the ambiguity, this guide adopts the same line discipline as the [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/):

* Producers **MUST** serialize each resource as a single line of minified JSON, terminated by a newline (`\n`).
* Producers **MUST NOT** pretty-print, word-wrap, or otherwise introduce line breaks within a serialized resource.
* Consumers **SHOULD** tolerate a trailing newline at end of file and SHOULD skip empty lines.
* Consumers **MUST NOT** assume any particular resource ordering within the file (see Operation Sequencing above).

#### Capability Statement

PHR systems following the PHR FHIR Implementation Guide MUST include the API endpoints they are exposing in the PHR's FHIR server's CapabilityStatement:

```
{
  "resourceType": "CapabilityStatement",
  "rest": [{
    "mode": "server",
    "operation": [
      {
        "name": "phr-export",
        "definition": "http://hl7.org/fhir/uv/phr/OperationDefinition/phr-export"
      },
      {
        "name": "import",
        "definition": "http://hl7.org/fhir/uv/phr/OperationDefinition/phr-import"
      }
    ]
  }]
}

```

Formal definitions for these operations are published as [phr-export](./OperationDefinition-phr-export.md) and [phr-import](./OperationDefinition-phr-import.md).

### Relationship to Other Export Operations

`$phr-export` is not the only way to get a complete record out of a system, and at the September 2026 Connectathon the [EHI Export API](https://build.fhir.org/ig/argonautproject/ehi-api/) was exercised successfully across systems. This guide deliberately keeps the `$phr-export` name — renaming it `$ehi-export` would collide with the existing EHI Export semantics — and instead documents how the operations relate:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `$phr-export` | This IG | Single patient | Heterogeneous NDJSON / Bundle /`.sphr` | Patient-mediated export into a personal record |
| `$ehi-export` | [Argonaut EHI Export API](https://build.fhir.org/ig/argonautproject/ehi-api/) | Single patient or population | Vendor-defined EHI document set | Regulatory "complete EHI" export from a certified EHR |
| `Patient/$everything` | [FHIR core (R4/R5)](https://www.hl7.org/fhir/R5/operation-patient-everything.html) | Single patient compartment | searchset Bundle | Online, interactive retrieval from a FHIR server |
| `$export`(Bulk Data) | [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/) | Group or population | Per-resource-type NDJSON files | Backend, population-scale export |

To keep these interoperable, `$phr-export` parameters are aligned with R5 `Patient/$everything`: `_since` and `_type` carry the same meaning in both operations, and a server MAY implement `$phr-export` as a façade over `$everything` plus serialization. Likewise, a server that already implements EHI Export MAY expose `$phr-export` as an alias of `$ehi-export`, accepting the same requests and returning the exported record in one of the formats above — implementers should treat the two operation names as interchangeable in that configuration. A system that already supports EHI Export or Bulk Data satisfies the **data liberation** goal of this guide; `$phr-export` adds the PHR-specific packaging (single heterogeneous file, cover Composition, IPS table of contents).

### SMART Health Links for PHR Sharing

SMART Health Links (SHLinks) provide a mechanism for patients to share their health records via QR codes or short URLs. A SMART Health Link encodes an API endpoint URL along with a decryption key, enabling secure, convenient data sharing without requiring pre-established technical connectivity.

#### Use Cases

* **Emergency Room Intake**: Patient presents QR code containing medication list and allergies
* **Pharmacy**: Sharing current prescriptions with a new pharmacy
* **Travel**: Carrying vaccination records across borders
* **Specialist Referral**: Sharing relevant history with a new provider

#### QR Code Example

A SMART Health Link QR code encodes a URL in the format:

```
shlink:/eyJ1cmwiOiJodHRwczovL...

```

When scanned, the QR code provides access to an API endpoint that returns encrypted health data. The decryption key is embedded in the link itself.

#### Technical Structure

A SMART Health Link URL payload contains:

```
{
  "url": "https://example.org/api/shl/abc123",
  "key": "rxTgYlOaKJPFtcEd0qcceN8wEU4p94SqAwIWQe6uX7Q",
  "exp": 1735689600,
  "flag": "LP",
  "label": "Patient Health Summary"
}

```

| | |
| :--- | :--- |
| `url` | API endpoint where encrypted payload can be retrieved |
| `key` | Base64url-encoded decryption key (256-bit AES-GCM) |
| `exp` | Optional expiration time (Unix timestamp) |
| `flag` | `L`= long-term,`P`= passcode required,`U`= single use |
| `label` | Human-readable description |

#### Encryption

SMART Health Links use **A256GCM** (AES-256 in Galois/Counter Mode). The payload retrieved from the URL is a JWE (JSON Web Encryption) that can be decrypted using the embedded key.

#### Integration with .sphr Files

When sharing via SMART Health Link:

1. Upload .sphr file to hosting service
1. Generate unique retrieval URL
1. Encrypt with random 256-bit key
1. Encode URL + key into SHLink
1. Render as QR code

#### References

* [SMART Health Links Specification](https://docs.smarthealthit.org/smart-health-links/)
* [SMART Health Cards](https://smarthealth.cards/)

### Streaming PHR Data Over HTTP

While the .phr format is primarily designed for file-based storage and exchange, systems may also transmit PHR data directly over HTTP connections using streaming techniques.

#### Content-Type Headers

When transmitting .phr content over HTTP, use the following headers:

```
Content-Type: application/x-ndjson
Content-Disposition: attachment; filename="patient-record.phr"
X-PHR-Version: 1.0

```

For FHIR-aware systems:

```
Content-Type: application/fhir+ndjson

```

#### Streaming Benefits

NDJSON format is well-suited for streaming because each line is a complete, parseable JSON object. Receivers can process records as they arrive without waiting for the complete transmission, enabling:

* **Progressive rendering**: Display data as it arrives
* **Memory efficiency**: Process large records without loading entire payload
* **Resilience**: Partial data available even if connection interrupts
* **Real-time feedback**: Show progress indicators during transfer

#### Streaming Implementation Example

**Server (streaming response):**

```
// Node.js example
response.setHeader('Content-Type', 'application/x-ndjson');
response.setHeader('Transfer-Encoding', 'chunked');

for await (const resource of patientResources) {
  response.write(JSON.stringify(resource) + '\n');
}
response.end();

```

**Client (streaming consumption):**

```
// Process each line as it arrives
const readline = require('readline');
const rl = readline.createInterface({ input: response });

rl.on('line', (line) => {
  const resource = JSON.parse(line);
  processResource(resource);
});

```

#### Comparison with Bulk Data IG

| | | |
| :--- | :--- | :--- |
| File structure | Single heterogeneous .ndjson | Separate file per resource type |
| Typical use | Single patient export | Multi-patient population export |
| Resource ordering | Patient-centric, mixed types | Grouped by resourceType |
| Streaming | Well-suited | Designed for batch |

The PHR format uses a single file with mixed resource types for patient-centric simplicity, while Bulk Data separates by type (Observation.ndjson, Condition.ndjson, etc.) for scalability with large populations.

#### Error Handling

For streaming transfers, errors may occur mid-stream. Recommended approach:

```
{"resourceType":"OperationOutcome","issue":[{"severity":"error","code":"processing","diagnostics":"Error at line 847: invalid reference"}]}

```

Include OperationOutcome resources inline to indicate processing errors while allowing the stream to continue for partial data recovery.

### Query and Filter Parameters

PHR systems should support flexible filtering to allow patients and applications to retrieve specific subsets of data.

#### Standard FHIR Search Parameters

All standard FHIR search parameters apply. Common patterns for PHR queries:

```
# Resources modified since a date
GET /Observation?_lastUpdated=gt2025-01-01

# Resources within a date range
GET /Observation?date=ge2024-01-01&date=le2024-12-31

# Specific resource types
GET /Condition?patient=Patient/123

# By category
GET /Observation?category=vital-signs
GET /Observation?category=laboratory
GET /Observation?category=activity

```

#### PHR-Specific Filters

##### By Data Source

Filter by originating system:

```
GET /Observation?_source=urn:ehr:hospital-xyz
GET /Observation?_source=urn:device:fitbit
GET /Observation?_source=urn:phr:patient-entered

```

##### By Clinical Relevance

Filter for active/current data (suitable for IPS generation):

```
GET /Condition?clinical-status=active
GET /MedicationStatement?status=active
GET /AllergyIntolerance?clinical-status=active

```

##### By Verification Status

Distinguish verified vs unverified data:

```
GET /Condition?verification-status=confirmed
GET /Observation?_tag=clinician-verified

```

#### Bulk Export Filters

When using the $phr-export operation:

```
# Export only specific resource types
GET /Patient/123/$phr-export?_type=Condition,MedicationStatement,AllergyIntolerance

# Export data from a specific time period
GET /Patient/123/$phr-export?_since=2024-01-01&_until=2024-12-31

# Export only clinical data (exclude device/activity data)
GET /Patient/123/$phr-export?_profile=clinical

# Export only for sharing (IPS-compatible subset)
GET /Patient/123/$phr-export?_profile=ips-compatible

```

#### Patient Sharing Preferences

PHRs may implement patient-controlled sharing filters using Consent resources:

```
{
  "resourceType": "Consent",
  "id": "sharing-preferences",
  "status": "active",
  "scope": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentscope",
      "code": "patient-privacy"
    }]
  },
  "provision": {
    "type": "deny",
    "provision": [
      {
        "type": "permit",
        "class": [
          {"code": "Condition"},
          {"code": "MedicationStatement"},
          {"code": "AllergyIntolerance"}
        ]
      }
    ]
  }
}

```

#### Response Pagination

For large result sets:

```
GET /Observation?_count=100&_offset=0

```

Response includes pagination links:

```
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1250,
  "link": [
    {"relation": "self", "url": "...?_count=100&_offset=0"},
    {"relation": "next", "url": "...?_count=100&_offset=100"}
  ]
}

```

#### Selective Field Retrieval

Request only specific elements to reduce payload size:

```
GET /Observation?_elements=code,valueQuantity,effectiveDateTime

```

