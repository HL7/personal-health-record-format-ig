### PHR Export and Import Operations

Systems MAY implement standard APIs for generating and importing `.phr` or `.sphr` files. These operations enable patients to export their complete health records from one system and import them into another, supporting the core PHR use case of patient-controlled data portability.

#### Export Operations

The `$phr-export` operation generates a complete patient health record in various formats. This operation is typically invoked by the patient or their authorized application.

```bash
# Export as FHIR Bundle (default)
GET /Bundle/$phr-export

# Export as NDJSON Bulk Data file
GET /Bundle/$phr-export?outputFormat=ndjson

# Export as PHR file (NDJSON with .phr extension)
GET /Bundle/$phr-export?outputFormat=phr

# Export as secure SPHR file (encrypted zip container)
GET /Bundle/$phr-export?outputFormat=sphr
```

**Date Range Filtering:**

Exporters can request specific time periods to reduce payload size or focus on recent data:

```bash
# Export everything from 2010 to current
GET /Bundle/$phr-export?start=2010

# Export specific date range
GET /Bundle/$phr-export?start=2010&end=2020-06

# Export last year only
GET /Bundle/$phr-export?start=2024-01-01&end=2024-12-31
```

**Multi-Patient Systems:**

For systems managing multiple patients (e.g., EHR systems), specify the patient identifier:

```bash
# Export for specific patient
GET /Bundle/$phr-export?patient=Patient/12345

# Export with date range and format
GET /Bundle/$phr-export?patient=Patient/12345&outputFormat=sphr&start=2020
```

#### Import Operations

The `$import` operation accepts PHR data in NDJSON format and imports it into the receiving system. This operation should handle deduplication, provenance tracking, and conflict resolution.

```bash
# Import PHR data (NDJSON format)
POST /Bundle/$import
Content-Type: application/x-ndjson

# Import with merge strategy
POST /Bundle/$import?strategy=merge

# Import with validation only (no commit)
POST /Bundle/$import?mode=validate
```

**Import Considerations:**

- **Deduplication**: System should detect and handle duplicate resources
- **Provenance**: Imported resources should retain original provenance metadata
- **Validation**: All resources should be validated against FHIR profiles
- **Conflict Resolution**: System should have policies for handling conflicting data

#### Response Formats

Export operations support multiple response formats:

| Format | MIME Type | Description |
|--------|-----------|-------------|
| Bundle | `application/fhir+json` | Standard FHIR Bundle resource |
| NDJSON | `application/x-ndjson` | Newline-delimited JSON, one resource per line |
| PHR | `application/x-ndjson` | Same as NDJSON with `.phr` extension |
| SPHR | `application/zip` | Encrypted zip containing .phr file(s) plus supporting documents |

#### Capability Statement

Systems MUST advertise supported operations in their CapabilityStatement:

```json
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

### SMART Health Links for PHR Sharing

SMART Health Links (SHLinks) provide a mechanism for patients to share their health records via QR codes or short URLs. A SMART Health Link encodes an API endpoint URL along with a decryption key, enabling secure, convenient data sharing without requiring pre-established technical connectivity.

#### Use Cases

- **Emergency Room Intake**: Patient presents QR code containing medication list and allergies
- **Pharmacy**: Sharing current prescriptions with a new pharmacy
- **Travel**: Carrying vaccination records across borders
- **Specialist Referral**: Sharing relevant history with a new provider

#### QR Code Example

A SMART Health Link QR code encodes a URL in the format:

```
shlink:/eyJ1cmwiOiJodHRwczovL...
```

When scanned, the QR code provides access to an API endpoint that returns encrypted health data. The decryption key is embedded in the link itself.

#### Technical Structure

A SMART Health Link URL payload contains:

```json
{
  "url": "https://example.org/api/shl/abc123",
  "key": "rxTgYlOaKJPFtcEd0qcceN8wEU4p94SqAwIWQe6uX7Q",
  "exp": 1735689600,
  "flag": "LP",
  "label": "Patient Health Summary"
}
```

| Field | Description |
|-------|-------------|
| `url` | API endpoint where encrypted payload can be retrieved |
| `key` | Base64url-encoded decryption key (256-bit AES-GCM) |
| `exp` | Optional expiration time (Unix timestamp) |
| `flag` | `L` = long-term, `P` = passcode required, `U` = single use |
| `label` | Human-readable description |

#### Encryption

SMART Health Links use **A256GCM** (AES-256 in Galois/Counter Mode). The payload retrieved from the URL is a JWE (JSON Web Encryption) that can be decrypted using the embedded key.

#### Integration with .sphr Files

When sharing via SMART Health Link:

1. Upload .sphr file to hosting service
2. Generate unique retrieval URL
3. Encrypt with random 256-bit key
4. Encode URL + key into SHLink
5. Render as QR code

#### References

- [SMART Health Links Specification](https://docs.smarthealthit.org/smart-health-links/)
- [SMART Health Cards](https://smarthealth.cards/)

### Streaming PHR Data Over HTTP

While the .phr format is primarily designed for file-based storage and exchange, systems may also transmit PHR data directly over HTTP connections using streaming techniques.

#### Content-Type Headers

When transmitting .phr content over HTTP, use the following headers:

```http
Content-Type: application/x-ndjson
Content-Disposition: attachment; filename="patient-record.phr"
X-PHR-Version: 1.0
```

For FHIR-aware systems:
```http
Content-Type: application/fhir+ndjson
```

#### Streaming Benefits

NDJSON format is well-suited for streaming because each line is a complete, parseable JSON object. Receivers can process records as they arrive without waiting for the complete transmission, enabling:

- **Progressive rendering**: Display data as it arrives
- **Memory efficiency**: Process large records without loading entire payload
- **Resilience**: Partial data available even if connection interrupts
- **Real-time feedback**: Show progress indicators during transfer

#### Streaming Implementation Example

**Server (streaming response):**

```javascript
// Node.js example
response.setHeader('Content-Type', 'application/x-ndjson');
response.setHeader('Transfer-Encoding', 'chunked');

for await (const resource of patientResources) {
  response.write(JSON.stringify(resource) + '\n');
}
response.end();
```

**Client (streaming consumption):**

```javascript
// Process each line as it arrives
const readline = require('readline');
const rl = readline.createInterface({ input: response });

rl.on('line', (line) => {
  const resource = JSON.parse(line);
  processResource(resource);
});
```

#### Comparison with Bulk Data IG

| Aspect | PHR Format | Bulk Data IG |
|--------|-----------|--------------|
| File structure | Single heterogeneous .ndjson | Separate file per resource type |
| Typical use | Single patient export | Multi-patient population export |
| Resource ordering | Patient-centric, mixed types | Grouped by resourceType |
| Streaming | Well-suited | Designed for batch |

The PHR format uses a single file with mixed resource types for patient-centric simplicity, while Bulk Data separates by type (Observation.ndjson, Condition.ndjson, etc.) for scalability with large populations.

#### Error Handling

For streaming transfers, errors may occur mid-stream. Recommended approach:

```json
{"resourceType":"OperationOutcome","issue":[{"severity":"error","code":"processing","diagnostics":"Error at line 847: invalid reference"}]}
```

Include OperationOutcome resources inline to indicate processing errors while allowing the stream to continue for partial data recovery.  
