# JAMI Meeting JIRA Tickets: Draft Content

This document contains first-pass draft content for JIRA tickets FHIR-53509 through FHIR-53524, generated from feedback at the 2025-11 Japanese PHR Council & JAMI Meeting in Himeji, Japan.

---

## Implementation Checklist

### Execution Order & Status

Work through tickets in order (53509 → 53524) for clean git history. Each ticket gets its own commit.

- [ ] **FHIR-53509** - Add "LifeLog" Use Case
  - **Files:** Modify `index.md` (Use Cases section)
  - **Commit:** `git commit -m "FHIR-53509: Add LifeLog use case to homepage"`

- [ ] **FHIR-53514** - Add "Healthy Living" Use Case
  - **Files:** Modify `index.md` (Use Cases section)
  - **Commit:** `git commit -m "FHIR-53514: Add Healthy Living use case to homepage"`

- [ ] **FHIR-53510** - Add FAQ Page
  - **Files:** Create `faq.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53510: Add FAQ page with common questions"`

- [ ] **FHIR-53511** - Add Minimum Viable PHR Example
  - **Files:** Create `minimum-viable-phr.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53511: Add minimum viable PHR file example"`

- [ ] **FHIR-53512** - SMART Health Links / QR Code Example
  - **Files:** Create `smart-health-links.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53512: Add SMART Health Links documentation with QR code examples"`

- [ ] **FHIR-53513** - PHR NDJSON Over the Wire
  - **Files:** Expand `api.md` (add streaming section)
  - **Commit:** `git commit -m "FHIR-53513: Add PHR streaming over HTTP documentation to API page"`

- [ ] **FHIR-53515** - Document Adverse Events (Vulcan)
  - **Files:** Create `adverse-events.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53515: Add adverse event reporting documentation (Vulcan alignment)"`

- [ ] **FHIR-53516** - Real World Data Harmonization (Vulcan)
  - **Files:** Create `real-world-data.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53516: Add Real World Data harmonization documentation (Vulcan)"`

- [ ] **FHIR-53517** - IPS Harmonization
  - **Files:** Create `ips-harmonization.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53517: Add IPS harmonization documentation"`

- [ ] **FHIR-53518** - mHealth Harmonization
  - **Files:** Create `mhealth.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53518: Add mHealth harmonization documentation"`

- [ ] **FHIR-53519** - Expanded Filtering Options
  - **Files:** Expand `api.md` (add filtering section)
  - **Commit:** `git commit -m "FHIR-53519: Add expanded query and filtering documentation to API page"`

- [ ] **FHIR-53520** - Additional Algorithm Examples
  - **Files:** Expand `algorithms.md` (add 5 new algorithms)
  - **Commit:** `git commit -m "FHIR-53520: Add additional algorithm examples (deduplication, trends, interactions, care gaps, LLM)"`

- [ ] **FHIR-53521** - Update Acknowledgements
  - **Files:** Modify `index.md` (Acknowledgements section)
  - **Commit:** `git commit -m "FHIR-53521: Update acknowledgements with JAMI and international contributors"`

- [ ] **FHIR-53522** - Internationalization Framework
  - **Files:** Create `internationalization.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53522: Add internationalization framework documentation"`

- [ ] **FHIR-53523** - Japanese Homepage Translation
  - **Files:** Create `index-ja.md`, modify `sushi-config.yaml`
  - **Commit:** `git commit -m "FHIR-53523: Add Japanese translation of homepage (index-ja.md)"`

- [ ] **FHIR-53524** - Full Guide Translation
  - **Status:** Future work - not implemented in this phase
  - **Scope:** Create `-ja.md` versions of all content pages

### Summary Statistics

- **Total tickets:** 16
- **New files to create:** 10 pages
- **Existing files to expand:** 3 pages (index.md, api.md, algorithms.md)
- **Configuration updates:** 13 updates to sushi-config.yaml
- **Expected commits:** 15 (excluding 53524)

### Menu Organization for sushi-config.yaml

New pages will be added to the menu structure as follows:

**Home section:**
- FAQ (new)

**Supplemental section:**
- Minimum Viable PHR (new)
- SMART Health Links (new)
- IPS Harmonization (new)
- mHealth Harmonization (new)
- Adverse Events (new)
- Real World Data (new)
- Internationalization (new)

**Pages expanded (no menu changes):**
- API Endpoints (existing - add streaming + filtering)
- Algorithms (existing - add 5 algorithms)
- Getting Started / Home (existing - add use cases + acknowledgements)

---

## Detailed Ticket Content

### FHIR-53509: Add "LifeLog" Use Case

**Target file:** `input/pagecontent/index.md` (Use Cases section)

### Draft Content:

```markdown
- *Lifelog* - Digital records of an individual's daily activities collected continuously from wearable devices, smartphones, and smart home sensors. Lifelog data typically includes step counts, walking distance, calories burned, sleep duration and quality, resting heart rate, stress indicators, and other biometric measurements. In countries like Japan, lifelog data is increasingly integrated with PHRs to enable predictive and preemptive medicine—identifying health risks before disease onset. Patients use these continuous measurements to establish baseline health patterns, detect early warning signs of deterioration, and share objective lifestyle data with clinicians. The PHR challenge is standardizing and aggregating lifelog data across heterogeneous device types and applications (Apple HealthKit, Google Fit, Fitbit, Garmin, etc.) into a coherent longitudinal record that can be clinically meaningful.
```

---

## FHIR-53514: Add "Healthy Living" Use Case

**Target file:** `input/pagecontent/index.md` (Use Cases section)

### Draft Content:

```markdown
- *Healthy Living* - Proactive wellness management focused on disease prevention rather than treatment. Unlike clinical use cases that begin with a diagnosis, the Healthy Living scenario involves individuals without acute conditions who use their PHR to optimize lifestyle factors: nutrition tracking, physical activity goals, sleep hygiene, stress management, and preventive screening schedules. This use case is particularly important in aging societies where extending healthy life expectancy (健康寿命, "kenkou jumyou" in Japanese) is a public health priority distinct from simply extending lifespan. PHR systems support Healthy Living by integrating data from fitness apps, nutrition trackers, and annual health checkups (人間ドック) to identify trends, generate personalized recommendations, and motivate sustained behavior change through goal-setting and progress visualization.
```

---

## FHIR-53510: Add a FAQ Page

**Target file:** `input/pagecontent/faq.md` (NEW FILE)

### Draft Content:

```markdown
### Frequently Asked Questions

This page addresses common questions from implementers, patients, and healthcare organizations about the Personal Health Record Implementation Guide.

#### General Questions

**What is a Personal Health Record (PHR)?**

A Personal Health Record is an electronic health record that is owned and controlled by the patient, rather than a healthcare provider or institution. While an Electronic Medical Record (EMR) or Electronic Health Record (EHR) is owned by a hospital or clinic, the PHR belongs to the patient and can aggregate data from multiple healthcare sources, consumer devices, and patient-entered information.

**What is the difference between .phr and .sphr files?**

- `.phr` - An unencrypted file containing FHIR resources in newline-delimited JSON (NDJSON) format. This is a simple, text-based format suitable for data exchange between trusted systems.
- `.sphr` - A Secure Personal Health Record file. This is a compressed (.zip) folder containing one or more .phr files plus supporting materials (images, PDFs, DICOM files), encrypted and optionally signed with X.509 certificates.

**What FHIR version does this IG use?**

This implementation guide is based on FHIR R4B. Resources should conform to R4B specifications, and implementers should reference the [FHIR R4B specification](https://hl7.org/fhir/R4B/) for detailed resource definitions.

**How does this IG relate to the International Patient Summary (IPS)?**

The IPS is a standardized summary document containing essential patient information for unplanned care. A PHR can contain one or more IPS documents, and the .sphr format supports IPS as a "table of contents" or summary view of the complete record. See the [IPS Harmonization](ips-harmonization.html) page for details.

#### Implementation Questions

**What is the minimum data required for a valid .phr file?**

At minimum, a conformant .phr file must contain:
1. One Patient resource (identifying the record owner)
2. One Composition resource (serving as the cover page/manifest)

See the [Minimum Viable PHR](minimum-viable-phr.html) example for a complete minimal implementation.

**How do I handle records from multiple healthcare systems?**

The PHR format is designed for longitudinal records spanning multiple sources. Key strategies include:
- Use Provenance resources to track data origin
- Maintain original identifiers in resource.identifier fields
- Use the meta.source element to record originating system
- Consider a merge/reconciliation algorithm for duplicate detection

See the [Longitudinal Records](longitudinal.html) page for detailed guidance.

**How do I register .phr and .sphr file extensions on my operating system?**

See the [Operating Systems](operating-systems.html) page for instructions on registering file type associations on Windows, macOS, and Linux.

#### Security Questions

**What encryption is supported for .sphr files?**

The .sphr format supports:
- Passphrase-based encryption for unknown recipients
- Public key encryption (X.509/PKI) for known recipients
- SMART Health Links (SHLink) using A256GCM algorithm for QR code sharing

See the [Record Keeping](recordkeeping.html) page for detailed security guidance.

**How do I verify the authenticity of a received PHR file?**

Recipients can verify authenticity through:
1. JWS signature verification using the sender's public key
2. SHA-256 hash verification for data integrity
3. X.509 certificate chain validation for trust establishment

#### Data Questions

**What types of data can be stored in a PHR?**

The PHR can store any data expressible as FHIR resources, including:
- Clinical data (conditions, medications, allergies, procedures)
- Observations (vital signs, lab results, device measurements)
- Documents (clinical notes, imaging reports, advance directives)
- Administrative data (insurance, appointments, care team)
- Patient-generated data (symptoms, lifestyle tracking, goals)

See the [Data Model](datamodel.html) page for the complete resource inventory.

**Can I include non-FHIR data in a PHR?**

Yes. The .sphr format allows "ride-along" files such as PDFs, images, DICOM files, and other media. Each such file should have a corresponding FHIR DocumentReference resource in the .phr file that points to it.

**How do I handle data from consumer wearables and fitness devices?**

Consumer device data should be converted to FHIR Observation resources using appropriate LOINC codes. See the [mHealth Harmonization](mhealth.html) page and the [Physical Activity IG](https://build.fhir.org/ig/HL7/physical-activity) for standardized approaches.
```

---

## FHIR-53511: Add a "Minimum Viable PHR File" Example

**Target file:** `input/pagecontent/minimum-viable-phr.md` (NEW FILE)

### Draft Content:

```markdown
### Minimum Viable PHR File

This page provides the smallest possible conformant .phr file, serving as a "hello world" starting point for implementers.

#### Requirements

A minimum viable .phr file MUST contain:
1. **Patient** - Identifies the owner of the health record
2. **Composition** - Serves as the cover page and manifest

#### Example: Minimal PHR

The following example shows a complete, minimal .phr file in NDJSON format (each resource on its own line):

```json
{"resourceType":"Patient","id":"minimal-patient","meta":{"lastUpdated":"2025-01-15T10:30:00Z"},"identifier":[{"system":"urn:example:phr","value":"patient-001"}],"name":[{"use":"official","family":"Tanaka","given":["Yuki"]}],"gender":"female","birthDate":"1985-03-15"}
{"resourceType":"Composition","id":"minimal-composition","meta":{"lastUpdated":"2025-01-15T10:30:00Z"},"status":"final","type":{"coding":[{"system":"http://loinc.org","code":"11503-0","display":"Medical records"}]},"subject":{"reference":"Patient/minimal-patient"},"date":"2025-01-15T10:30:00Z","author":[{"reference":"Patient/minimal-patient","display":"Yuki Tanaka"}],"title":"Personal Health Record for Yuki Tanaka","section":[{"title":"Patient Information","code":{"coding":[{"system":"http://loinc.org","code":"10154-3","display":"Chief complaint"}]},"text":{"status":"generated","div":"<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Personal Health Record created 2025-01-15</p></div>"}}]}
```

#### Formatted View

**Patient Resource:**
```json
{
  "resourceType": "Patient",
  "id": "minimal-patient",
  "meta": {
    "lastUpdated": "2025-01-15T10:30:00Z"
  },
  "identifier": [{
    "system": "urn:example:phr",
    "value": "patient-001"
  }],
  "name": [{
    "use": "official",
    "family": "Tanaka",
    "given": ["Yuki"]
  }],
  "gender": "female",
  "birthDate": "1985-03-15"
}
```

**Composition Resource:**
```json
{
  "resourceType": "Composition",
  "id": "minimal-composition",
  "meta": {
    "lastUpdated": "2025-01-15T10:30:00Z"
  },
  "status": "final",
  "type": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "11503-0",
      "display": "Medical records"
    }]
  },
  "subject": {
    "reference": "Patient/minimal-patient"
  },
  "date": "2025-01-15T10:30:00Z",
  "author": [{
    "reference": "Patient/minimal-patient",
    "display": "Yuki Tanaka"
  }],
  "title": "Personal Health Record for Yuki Tanaka",
  "section": [{
    "title": "Patient Information",
    "code": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "10154-3",
        "display": "Chief complaint"
      }]
    },
    "text": {
      "status": "generated",
      "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Personal Health Record created 2025-01-15</p></div>"
    }
  }]
}
```

#### Adding Basic Clinical Data

A slightly expanded example might include a vital sign observation:

```json
{"resourceType":"Observation","id":"obs-weight","meta":{"lastUpdated":"2025-01-15T10:30:00Z"},"status":"final","category":[{"coding":[{"system":"http://terminology.hl7.org/CodeSystem/observation-category","code":"vital-signs","display":"Vital Signs"}]}],"code":{"coding":[{"system":"http://loinc.org","code":"29463-7","display":"Body weight"}]},"subject":{"reference":"Patient/minimal-patient"},"effectiveDateTime":"2025-01-15T10:00:00Z","valueQuantity":{"value":62.5,"unit":"kg","system":"http://unitsofmeasure.org","code":"kg"}}
```

#### File Naming

Save the file with a `.phr` extension:
- `yuki-tanaka-2025-01-15.phr`
- `minimal-example.phr`

#### Next Steps

From this minimal foundation, implementers can progressively add:
- Conditions (diagnoses, problems)
- Medications and allergies
- Immunization records
- Laboratory results
- Care plans and goals
- Provenance for data tracking

See the [Data Model](datamodel.html) page for the full inventory of supported resources.
```

---

## FHIR-53512: Show Example of QR Code (SMART Health Link)

**Target file:** `input/pagecontent/smart-health-links.md` (NEW FILE)

### Draft Content:

```markdown
### SMART Health Links for PHR Sharing

SMART Health Links (SHLinks) provide a mechanism for patients to share their health records via QR codes or short URLs. This is particularly useful for scenarios where patients need to share records quickly without requiring the recipient to have pre-established technical connectivity.

#### Overview

A SMART Health Link encodes:
1. A URL pointing to the encrypted health data
2. A decryption key for accessing the data
3. Optional: a flag indicating whether the link is for one-time use

The patient can display the QR code on their smartphone, print it on paper, or share the URL directly.

#### Use Cases

- **Emergency Room Intake**: Patient presents QR code containing medication list and allergies
- **Pharmacy**: Sharing current prescriptions with a new pharmacy
- **Travel**: Carrying vaccination records across borders
- **Specialist Referral**: Sharing relevant history with a new provider
- **Insurance**: Providing claims documentation

#### QR Code Example

Below is a conceptual representation of a SMART Health Link QR code:

```
┌─────────────────────────────────┐
│ ▄▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄ ▄▄▄▄▄▄▄ │
│ █ ▄▄▄ █ ▀█▄▀▄ ▀▄█ █ ▄▄▄ █ │
│ █ ███ █ ▀▄▀▄█▀▄▀▀ █ ███ █ │
│ █▄▄▄▄▄█ ▄▀█ █ ▄▀█ █▄▄▄▄▄█ │
│ ▄▄ ▄ ▄▄▄▀██▄▀▄█▀▄▄▄▄▄ │
│ ██▀▄▀▄▄ ▀█ ▄█▀▄ ▀▀█▄▀▀▄ │
│ ▄▄▄▄▄▄▄ █▄▀▄█ ▀ █▄█ ▄▀ │
│ █ ▄▄▄ █ ▄▀▀▄█▀▄▀ ▄▄▀▀▄ │
│ █ ███ █ █ ▄▀▄▀█▀█▀▀█▄▀▄ │
│ █▄▄▄▄▄█ ██▀▄ █ ▀▄█ ▄ █▀ │
└─────────────────────────────────┘
     Scan to access health record
```

#### Technical Structure

A SMART Health Link URL has the following structure:

```
shlink:/eyJ1cmwiOiJodHRwczovL...
```

When decoded, the payload contains:
```json
{
  "url": "https://example.org/api/shl/abc123",
  "key": "rxTgYlOaKJPFtcEd0qcceN8wEU4p94SqAwIWQe6uX7Q",
  "exp": 1735689600,
  "flag": "LP",
  "label": "Yuki's Health Summary"
}
```

| Field | Description |
|-------|-------------|
| `url` | Location where encrypted payload can be retrieved |
| `key` | Base64url-encoded decryption key (256-bit) |
| `exp` | Optional expiration time (Unix timestamp) |
| `flag` | `L` = long-term, `P` = passcode required, `U` = single use |
| `label` | Human-readable description |

#### Encryption

SMART Health Links use:
- **Algorithm**: A256GCM (AES-256 in Galois/Counter Mode)
- **Key derivation**: Direct use of the embedded key

The payload retrieved from the URL is a JWE (JSON Web Encryption) compact serialization that can be decrypted using the key embedded in the QR code.

#### Integration with .sphr Files

When sharing an .sphr file via SMART Health Link:

1. The .sphr file is uploaded to a hosting service
2. A unique URL is generated for retrieval
3. The file is encrypted with a random 256-bit key
4. The URL and key are encoded into the SHLink
5. The SHLink is rendered as a QR code

#### Implementation Considerations

- **Expiration**: Consider setting reasonable expiration times for shared links
- **Passcodes**: For sensitive data, require an additional passcode
- **Audit**: Log when links are accessed for patient awareness
- **Revocation**: Provide mechanism for patients to invalidate shared links
- **Offline**: QR codes can be printed for scenarios without connectivity

#### References

- [SMART Health Links Specification](https://docs.smarthealthit.org/smart-health-links/)
- [SMART Health Cards](https://smarthealth.cards/)
- [JWE RFC 7516](https://tools.ietf.org/html/rfc7516)
```

---

## FHIR-53513: PHR (NDJSON) Over the Wire

**Target file:** `input/pagecontent/api.md` (EXPAND existing file)

### Draft Content to Add:

```markdown
### Streaming PHR Data Over HTTP

While the .phr format is primarily designed for file-based storage and exchange, systems may also transmit PHR data directly over HTTP connections.

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

#### Streaming NDJSON

NDJSON format is well-suited for streaming because each line is a complete, parseable JSON object. Receivers can process records as they arrive without waiting for the complete transmission.

**Sender (streaming):**
```javascript
// Node.js example
response.setHeader('Content-Type', 'application/x-ndjson');
response.setHeader('Transfer-Encoding', 'chunked');

for await (const resource of patientResources) {
  response.write(JSON.stringify(resource) + '\n');
}
response.end();
```

**Receiver (streaming):**
```javascript
// Process each line as it arrives
const readline = require('readline');
const rl = readline.createInterface({ input: response });

rl.on('line', (line) => {
  const resource = JSON.parse(line);
  processResource(resource);
});
```

#### API Endpoints for PHR Transfer

```http
# Request a complete PHR export (streaming response)
GET /Patient/{id}/$phr-export
Accept: application/x-ndjson

# Request PHR with date filtering
GET /Patient/{id}/$phr-export?_since=2024-01-01
Accept: application/x-ndjson

# Submit PHR data (streaming upload)
POST /Patient/{id}/$phr-import
Content-Type: application/x-ndjson
Transfer-Encoding: chunked

# Bi-directional sync
POST /Patient/{id}/$phr-sync
Content-Type: application/x-ndjson
Accept: application/x-ndjson
```

#### Comparison with Bulk Data IG

| Aspect | PHR Format | Bulk Data IG |
|--------|-----------|--------------|
| File structure | Single heterogeneous .ndjson | Separate file per resource type |
| Typical use | Single patient export | Multi-patient population export |
| Resource ordering | Patient-centric, mixed types | Grouped by resourceType |
| Streaming | Well-suited | Designed for batch |

The PHR format uses a single file with mixed resource types for simplicity, while Bulk Data separates by type (Observation.ndjson, Condition.ndjson, etc.) for scalability with large populations.

#### Real-time Sync Patterns

For applications requiring ongoing synchronization:

```http
# Subscribe to changes
POST /Subscription
Content-Type: application/fhir+json

{
  "resourceType": "Subscription",
  "status": "requested",
  "criteria": "Patient/123",
  "channel": {
    "type": "rest-hook",
    "endpoint": "https://phr-app.example.org/webhooks/fhir",
    "payload": "application/fhir+ndjson"
  }
}
```

#### Error Handling

For streaming transfers, errors may occur mid-stream. Recommended approach:

```json
{"resourceType":"OperationOutcome","issue":[{"severity":"error","code":"processing","diagnostics":"Error at line 847: invalid reference"}]}
```

Include OperationOutcome resources inline to indicate processing errors while allowing the stream to continue.
```

---

## FHIR-53515: Document How to Log Adverse Events (Vulcan)

**Target file:** `input/pagecontent/adverse-events.md` (NEW FILE)

### Draft Content:

```markdown
### Adverse Event Reporting

This page documents how patients can record adverse events in their Personal Health Record, supporting both clinical care and research data collection initiatives such as the Vulcan Accelerator Real World Data projects.

#### Overview

Adverse events in the context of a PHR may include:
- **Medication side effects**: Reactions to prescribed or over-the-counter drugs
- **Vaccine reactions**: Post-immunization adverse events
- **Medical device problems**: Issues with implants, wearables, or therapeutic devices
- **Procedure complications**: Unexpected outcomes from medical procedures
- **Healthcare-associated events**: Hospital-acquired infections, falls, etc.

#### FHIR Resources

| Event Type | Primary Resource | Supporting Resources |
|------------|-----------------|---------------------|
| Medication reaction | AdverseEvent | MedicationStatement, Medication |
| Allergic reaction | AllergyIntolerance | Observation (symptoms) |
| Vaccine reaction | AdverseEvent | Immunization |
| Device problem | AdverseEvent | Device, DeviceUseStatement |

#### AdverseEvent Resource Example

```json
{
  "resourceType": "AdverseEvent",
  "id": "adverse-event-medication",
  "status": "completed",
  "actuality": "actual",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/adverse-event-category",
      "code": "medication-mishap",
      "display": "Medication Mishap"
    }]
  }],
  "subject": {
    "reference": "Patient/example-patient"
  },
  "date": "2025-01-10T14:30:00Z",
  "detected": "2025-01-10T16:00:00Z",
  "recordedDate": "2025-01-10T18:00:00Z",
  "seriousness": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
      "code": "non-serious",
      "display": "Non-serious"
    }]
  },
  "outcome": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/adverse-event-outcome",
      "code": "recovering",
      "display": "Recovering"
    }]
  },
  "suspectEntity": [{
    "instance": {
      "reference": "MedicationStatement/statin-therapy"
    },
    "causality": [{
      "assessment": {
        "coding": [{
          "system": "http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess",
          "code": "probably-likely",
          "display": "Probably/Likely"
        }]
      }
    }]
  }],
  "description": "Patient reports muscle pain (myalgia) in legs starting 2 weeks after beginning statin therapy. Pain rated 5/10, affecting sleep quality."
}
```

#### Patient-Reported vs Clinician-Recorded

Distinguish data provenance using the `recorder` and meta elements:

```json
{
  "resourceType": "AdverseEvent",
  "meta": {
    "source": "urn:phr:patient-reported"
  },
  "recorder": {
    "reference": "Patient/example-patient",
    "display": "Self-reported by patient"
  }
}
```

For clinician-recorded events:
```json
{
  "meta": {
    "source": "urn:ehr:hospital-xyz"
  },
  "recorder": {
    "reference": "Practitioner/dr-smith"
  }
}
```

#### Vulcan Accelerator Alignment

The Vulcan Accelerator initiative promotes standardized real-world data collection. For adverse event reporting aligned with Vulcan:

- Use standardized terminology (MedDRA for adverse event terms)
- Include severity grading (CTCAE for oncology contexts)
- Document temporal relationships clearly
- Capture concomitant medications
- Enable consent-based research sharing

#### Workflow for Patient Self-Reporting

1. **Detection**: Patient notices symptoms
2. **Recording**: Patient logs event in PHR app
3. **Association**: App prompts to link to recent medications/vaccines
4. **Severity**: Patient rates severity and impact
5. **Sharing**: Patient optionally shares with provider or research registry

#### Regulatory Reporting

For serious adverse events, PHR systems may facilitate reporting to regulatory bodies:
- **FDA MedWatch** (United States)
- **PMDA** (Japan - 医薬品医療機器総合機構)
- **EudraVigilance** (European Union)

Note: PHR systems should not automatically submit regulatory reports; they should facilitate patient or provider submission.

#### References

- [FHIR AdverseEvent Resource](https://www.hl7.org/fhir/adverseevent.html)
- [Vulcan Accelerator](https://www.hl7.org/vulcan/)
- [MedDRA Terminology](https://www.meddra.org/)
- [FDA MedWatch](https://www.fda.gov/safety/medwatch-fda-safety-information-and-adverse-event-reporting-program)
```

---

## FHIR-53516: Real World Data (RWD) Harmonization (Vulcan)

**Target file:** `input/pagecontent/real-world-data.md` (NEW FILE)

### Draft Content:

```markdown
### Real World Data Harmonization

This page documents how Personal Health Record data can contribute to Real World Data (RWD) and Real World Evidence (RWE) initiatives, supporting clinical research and regulatory decision-making.

#### Overview

Real World Data encompasses health data collected outside of traditional clinical trials, including:
- Electronic Health Records (EHR)
- Claims and billing data
- Patient registries
- **Personal Health Records (PHR)**
- Wearable devices and mobile health apps
- Social determinants of health data

PHRs offer unique value for RWD because they:
- Capture patient-reported outcomes and experiences
- Include data from consumer devices not connected to clinical systems
- Span multiple healthcare providers and systems
- Reflect the patient's complete health journey

#### Vulcan Accelerator Alignment

The HL7 Vulcan Accelerator program works to harmonize standards for clinical research data. PHR implementations should consider alignment with:

| Vulcan Project | PHR Relevance |
|----------------|---------------|
| Real World Data | Patient-contributed data for observational studies |
| Adverse Events | Patient-reported side effects and reactions |
| Patient Registries | Longitudinal condition tracking |
| Electronic Data Capture | Structured questionnaire responses |

#### Data Quality Considerations

Patient-contributed data requires attention to quality:

**Provenance Tracking**
```json
{
  "resourceType": "Provenance",
  "target": [{"reference": "Observation/bp-home-reading"}],
  "recorded": "2025-01-15T08:30:00Z",
  "agent": [{
    "type": {
      "coding": [{
        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code": "author"
      }]
    },
    "who": {
      "reference": "Patient/example"
    }
  }],
  "entity": [{
    "role": "source",
    "what": {
      "display": "Omron Blood Pressure Monitor Model HEM-7600T"
    }
  }]
}
```

**Data Quality Flags**
- Device-captured vs manually entered
- Validated vs unvalidated measurements
- Professional vs consumer-grade devices
- Clinician-verified vs patient-reported

#### Consent for Research Use

PHR systems must implement consent management for research data sharing:

```json
{
  "resourceType": "Consent",
  "id": "research-consent",
  "status": "active",
  "scope": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentscope",
      "code": "research"
    }]
  },
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
      "code": "research"
    }]
  }],
  "patient": {
    "reference": "Patient/example"
  },
  "dateTime": "2025-01-01",
  "organization": [{
    "reference": "Organization/research-institution"
  }],
  "provision": {
    "type": "permit",
    "purpose": [{
      "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code": "HRESCH",
      "display": "Healthcare Research"
    }],
    "dataPeriod": {
      "start": "2020-01-01",
      "end": "2030-12-31"
    }
  }
}
```

#### De-identification Requirements

When contributing PHR data to research datasets:

| Data Element | Action |
|--------------|--------|
| Patient name | Remove |
| Dates | Shift or generalize |
| Geographic data | Generalize to region |
| Device identifiers | Remove or pseudonymize |
| Biometric data | Assess re-identification risk |

Reference: [HIPAA Safe Harbor](https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html)

#### CDISC Alignment

For clinical research integration, PHR data may need transformation to CDISC standards:

| FHIR Resource | CDISC Domain |
|---------------|--------------|
| Observation (vital signs) | VS (Vital Signs) |
| Observation (labs) | LB (Laboratory) |
| Condition | MH (Medical History) |
| MedicationStatement | CM (Concomitant Meds) |
| AdverseEvent | AE (Adverse Events) |
| Procedure | PR (Procedures) |

#### Patient Data Registries

PHRs can contribute to condition-specific registries:
- Oncology registries (mCODE alignment)
- Rare disease registries
- Post-market device surveillance
- Long COVID tracking

#### References

- [Vulcan Accelerator](https://www.hl7.org/vulcan/)
- [FDA Real World Evidence](https://www.fda.gov/science-research/science-and-research-special-topics/real-world-evidence)
- [CDISC Standards](https://www.cdisc.org/)
- [OHDSI OMOP](https://www.ohdsi.org/)
```

---

## FHIR-53517: IPS Harmonization

**Target file:** `input/pagecontent/ips-harmonization.md` (NEW FILE)

### Draft Content:

```markdown
### International Patient Summary Harmonization

This page documents the relationship between the Personal Health Record (PHR) format and the International Patient Summary (IPS), and provides guidance for bidirectional data exchange.

#### Overview

The **International Patient Summary (IPS)** is a standardized, minimal dataset for cross-border and emergency care scenarios. The **Personal Health Record (PHR)** is a comprehensive longitudinal record owned by the patient.

| Aspect | IPS | PHR |
|--------|-----|-----|
| Purpose | Emergency/unplanned care | Complete health history |
| Scope | Essential current data | All historical data |
| Size | Compact (KB) | Comprehensive (MB-GB) |
| Authorship | Clinical system | Patient + multiple sources |
| Standard | HL7 IPS IG | This IG |

#### Relationship

```
┌─────────────────────────────────────────┐
│           Personal Health Record        │
│  ┌─────────────────────────────────┐    │
│  │    International Patient Summary │    │
│  │    (Summary view of PHR data)   │    │
│  └─────────────────────────────────┘    │
│  + Historical data                      │
│  + Patient-contributed data             │
│  + Supporting documents                 │
│  + Device data                          │
└─────────────────────────────────────────┘
```

The IPS can be thought of as a "table of contents" or "executive summary" extracted from the complete PHR.

#### Generating IPS from PHR

To generate an IPS document from PHR data:

1. **Extract current medications** → IPS Medication Summary
2. **Extract active conditions** → IPS Problem List
3. **Extract current allergies** → IPS Allergies and Intolerances
4. **Extract recent immunizations** → IPS Immunizations
5. **Extract recent procedures** → IPS History of Procedures
6. **Extract relevant observations** → IPS Vital Signs, Results

**Composition mapping:**

| IPS Section | PHR Source |
|-------------|------------|
| Medication Summary | MedicationStatement (status=active) |
| Allergies and Intolerances | AllergyIntolerance (clinicalStatus=active) |
| Problem List | Condition (clinicalStatus=active) |
| Immunizations | Immunization (status=completed, recent) |
| History of Procedures | Procedure (recent, significant) |
| Medical Devices | DeviceUseStatement (status=active) |
| Diagnostic Results | Observation (recent, significant) |
| Vital Signs | Observation (category=vital-signs, recent) |
| Pregnancy | Condition/Observation (if applicable) |
| Social History | Observation (category=social-history) |
| Plan of Care | CarePlan (status=active) |
| Functional Status | Observation (functional assessments) |
| Advance Directives | Consent (category=acd) |

#### Importing IPS into PHR

When a patient receives an IPS from a healthcare provider:

1. **Parse the IPS Bundle** - Extract the Composition and referenced resources
2. **Add Provenance** - Record the source system and date received
3. **Deduplicate** - Check for existing equivalent records
4. **Merge** - Integrate new data with existing PHR contents
5. **Flag conflicts** - Identify discrepancies for patient review

**Provenance for imported IPS:**
```json
{
  "resourceType": "Provenance",
  "target": [{"reference": "Bundle/imported-ips"}],
  "recorded": "2025-01-15T10:00:00Z",
  "reason": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code": "RECORDMGT"
    }]
  }],
  "agent": [{
    "type": {
      "coding": [{
        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code": "author"
      }]
    },
    "who": {
      "display": "Tokyo General Hospital EHR System"
    }
  }]
}
```

#### IPS in .sphr Files

The .sphr container can include IPS documents:

```
patient-record.sphr/
├── manifest.json
├── patient-data.phr          # Complete PHR data
├── ips-2025-01-15.json       # IPS snapshot
├── ips-2024-06-01.json       # Previous IPS version
└── supporting-docs/
    └── lab-report.pdf
```

The IPS serves as an index to the most critical current information.

#### Terminology Alignment

IPS requires internationally recognized code systems:

| Data Type | Required Code System |
|-----------|---------------------|
| Conditions | SNOMED CT (IPS subset) |
| Medications | SNOMED CT, ATC, or national drug codes |
| Allergies | SNOMED CT |
| Procedures | SNOMED CT |
| Lab results | LOINC |
| Units | UCUM |

PHR systems importing data from regional systems may need to map local codes to IPS-compatible terminologies.

#### Multi-language Support

IPS supports translations via the `translation` extension:

```json
{
  "text": "Hypertension",
  "_text": {
    "extension": [{
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        {"url": "lang", "valueCode": "ja"},
        {"url": "content", "valueString": "高血圧"}
      ]
    }]
  }
}
```

#### References

- [International Patient Summary IG](http://hl7.org/fhir/uv/ips/)
- [IPS Terminology](https://www.snomed.org/snomed-ct/use-snomed-ct/international-patient-summary)
- [ISO 27269:2021 - IPS Standard](https://www.iso.org/standard/79491.html)
```

---

## FHIR-53518: mHealth Harmonization

**Target file:** `input/pagecontent/mhealth.md` (NEW FILE)

### Draft Content:

```markdown
### Mobile Health (mHealth) Harmonization

This page documents how Personal Health Records integrate with mobile health applications, consumer wearables, and health platform APIs.

#### Overview

Mobile health data sources include:
- **Smartphone platforms**: Apple HealthKit, Google Health Connect, Samsung Health
- **Wearable devices**: Fitbit, Garmin, Apple Watch, Oura Ring
- **Connected medical devices**: Blood pressure monitors, glucose meters, pulse oximeters
- **Health apps**: Nutrition trackers, meditation apps, symptom journals

#### Platform Integration

##### Apple HealthKit

HealthKit categories map to FHIR Observations:

| HealthKit Type | FHIR Resource | LOINC Code |
|----------------|---------------|------------|
| HKQuantityTypeIdentifierStepCount | Observation | 55423-8 |
| HKQuantityTypeIdentifierHeartRate | Observation | 8867-4 |
| HKQuantityTypeIdentifierBloodPressureSystolic | Observation | 8480-6 |
| HKQuantityTypeIdentifierBloodPressureDiastolic | Observation | 8462-4 |
| HKQuantityTypeIdentifierBodyMass | Observation | 29463-7 |
| HKQuantityTypeIdentifierOxygenSaturation | Observation | 2708-6 |
| HKCategoryTypeIdentifierSleepAnalysis | Observation | 93832-4 |

Reference: [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)

##### Google Health Connect

```json
{
  "resourceType": "Observation",
  "meta": {
    "source": "urn:google:health-connect"
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
      "code": "activity"
    }]
  }],
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "55423-8",
      "display": "Number of steps in 24 hour Measured"
    }]
  },
  "effectivePeriod": {
    "start": "2025-01-15T00:00:00Z",
    "end": "2025-01-15T23:59:59Z"
  },
  "valueQuantity": {
    "value": 8742,
    "unit": "steps",
    "system": "http://unitsofmeasure.org",
    "code": "{steps}"
  },
  "device": {
    "display": "Google Pixel Watch 2"
  }
}
```

#### Physical Activity IG Alignment

The [Physical Activity IG](https://build.fhir.org/ig/HL7/physical-activity) provides standardized profiles for activity data:

- **PA Observation Activity Measure** - Daily/weekly activity totals
- **PA Observation Activity Group** - Grouped activity sessions
- **PA Goal** - Activity goals and targets
- **PA Care Plan** - Exercise prescriptions

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": ["http://hl7.org/fhir/us/physical-activity/StructureDefinition/pa-observation-activity-measure"]
  },
  "status": "final",
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "55423-8"
    }]
  },
  "valueQuantity": {
    "value": 8742,
    "unit": "steps/day"
  }
}
```

#### Device Resource for Wearables

```json
{
  "resourceType": "Device",
  "id": "fitbit-charge-5",
  "identifier": [{
    "system": "urn:fitbit:device-id",
    "value": "ABC123456"
  }],
  "manufacturer": "Fitbit",
  "deviceName": [{
    "name": "Charge 5",
    "type": "model-name"
  }],
  "type": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "706767009",
      "display": "Patient data recorder"
    }]
  },
  "patient": {
    "reference": "Patient/example"
  }
}
```

#### Data Aggregation Patterns

Consumer devices often report high-frequency data. Recommended aggregation:

| Raw Data | Aggregation | Use Case |
|----------|-------------|----------|
| Per-second heart rate | Hourly averages + daily min/max | Trends |
| Per-step timestamps | Daily totals | Activity tracking |
| Per-minute sleep stages | Sleep session summary | Sleep quality |
| Continuous glucose | 15-minute intervals | Glucose management |

#### Lifelog Data Categories

Based on Japanese PHR initiatives, lifelog data typically includes:

| Category | Measurements | Frequency |
|----------|--------------|-----------|
| Activity | Steps, distance, floors, active minutes | Daily |
| Sleep | Duration, stages, quality score | Nightly |
| Vitals | Heart rate, HRV, SpO2, temperature | Continuous |
| Nutrition | Calories, macros, hydration | Per-meal |
| Body composition | Weight, body fat %, muscle mass | Weekly |
| Mental wellness | Stress score, mood tracking | Daily |

#### Data Quality Indicators

Consumer device data quality varies. Include quality metadata:

```json
{
  "resourceType": "Observation",
  "extension": [{
    "url": "http://example.org/fhir/StructureDefinition/data-quality",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://example.org/data-quality",
        "code": "consumer-device",
        "display": "Consumer-grade device measurement"
      }]
    }
  }]
}
```

#### References

- [Physical Activity IG](https://build.fhir.org/ig/HL7/physical-activity)
- [Patient Health Devices IG](http://hl7.org/fhir/uv/phd/)
- [Mobile Access to Health Documents](https://profiles.ihe.net/ITI/MHD/)
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)
- [Google Health Connect](https://developer.android.com/health-and-fitness/guides/health-connect)
```

---

## FHIR-53519: Expanded Filtering Options

**Target file:** `input/pagecontent/api.md` (EXPAND existing file)

### Draft Content to Add:

```markdown
### Query and Filter Parameters

PHR systems should support flexible filtering to allow patients and applications to retrieve specific subsets of data.

#### Standard FHIR Search Parameters

All standard FHIR search parameters apply. Common patterns for PHR queries:

```http
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
```http
GET /Observation?_source=urn:ehr:hospital-xyz
GET /Observation?_source=urn:device:fitbit
GET /Observation?_source=urn:phr:patient-entered
```

##### By Clinical Relevance

Filter for active/current data (suitable for IPS generation):
```http
GET /Condition?clinical-status=active
GET /MedicationStatement?status=active
GET /AllergyIntolerance?clinical-status=active
```

##### By Verification Status

Distinguish verified vs unverified data:
```http
GET /Condition?verification-status=confirmed
GET /Observation?_tag=clinician-verified
```

#### Bulk Export Filters

When using the $phr-export operation:

```http
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

PHRs may implement patient-controlled sharing filters:

```json
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
      },
      {
        "type": "deny",
        "class": [{"code": "Observation"}],
        "code": [{
          "coding": [{
            "system": "http://loinc.org",
            "code": "21112-8",
            "display": "Birth date"
          }]
        }]
      }
    ]
  }
}
```

#### Response Pagination

For large result sets:

```http
GET /Observation?_count=100&_offset=0
```

Response includes pagination links:
```json
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

#### _elements Parameter

Request only specific elements to reduce payload size:

```http
GET /Observation?_elements=code,valueQuantity,effectiveDateTime
```
```

---

## FHIR-53520: Need Examples of Algorithms

**Target file:** `input/pagecontent/algorithms.md` (EXPAND existing file)

### Draft Content to Add:

```markdown
### Additional Algorithm Examples

#### Record Deduplication

When importing records from multiple sources, duplicates must be identified and merged.

**Algorithm: Duplicate Detection**

1. **Exact match**: Compare resource identifiers across systems
2. **Fuzzy match**: For resources without shared identifiers:
   - Same patient + same code + same date (±tolerance) = potential duplicate
   - Apply resource-specific rules (see below)
3. **Confidence scoring**: Assign confidence level to matches
4. **Human review**: Flag low-confidence matches for patient review

**Resource-Specific Rules:**

| Resource | Key Fields | Date Tolerance |
|----------|------------|----------------|
| Condition | code, onsetDateTime | ±30 days |
| MedicationStatement | medication, effectivePeriod | ±7 days |
| Observation (vitals) | code, effectiveDateTime | ±1 hour |
| Observation (labs) | code, effectiveDateTime | ±1 day |
| Immunization | vaccineCode, occurrenceDateTime | ±1 day |
| Procedure | code, performedDateTime | ±1 day |

**Pseudocode:**
```python
def find_duplicates(new_resource, existing_resources):
    candidates = []
    for existing in existing_resources:
        if exact_identifier_match(new_resource, existing):
            return [(existing, confidence=1.0)]
        
        score = calculate_similarity(new_resource, existing)
        if score > THRESHOLD:
            candidates.append((existing, score))
    
    return sorted(candidates, key=lambda x: x[1], reverse=True)

def calculate_similarity(r1, r2):
    score = 0.0
    if same_code(r1, r2): score += 0.4
    if same_date_within_tolerance(r1, r2): score += 0.3
    if same_value(r1, r2): score += 0.2
    if same_source_context(r1, r2): score += 0.1
    return score
```

---

#### Trend Detection

Identify significant trends in time-series health data.

**Algorithm: Vital Sign Trend Analysis**

1. **Data collection**: Gather observations of same type over time window
2. **Outlier removal**: Filter statistical outliers (>3 standard deviations)
3. **Smoothing**: Apply moving average (window size depends on data frequency)
4. **Trend calculation**: Linear regression or slope analysis
5. **Significance test**: Determine if trend is clinically meaningful
6. **Alert generation**: Notify patient/provider of significant changes

**Pseudocode:**
```python
def analyze_trend(observations, window_days=30):
    # Filter to time window
    recent = filter_by_date(observations, days=window_days)
    
    # Remove outliers
    cleaned = remove_outliers(recent, std_threshold=3)
    
    # Calculate trend
    times = [o.effectiveDateTime for o in cleaned]
    values = [o.valueQuantity.value for o in cleaned]
    
    slope, intercept, r_value, p_value, std_err = linear_regression(times, values)
    
    # Assess significance
    if p_value < 0.05 and abs(slope) > CLINICAL_THRESHOLD:
        return TrendResult(
            direction="increasing" if slope > 0 else "decreasing",
            rate=slope,
            confidence=r_value**2,
            significant=True
        )
    return TrendResult(significant=False)
```

**Clinical Thresholds (examples):**

| Measurement | Concerning Trend |
|-------------|-----------------|
| Weight | >2 kg/week gain or loss |
| Blood pressure | >10 mmHg/month increase |
| Resting heart rate | >10 bpm/month increase |
| Blood glucose (fasting) | >20 mg/dL/month increase |

---

#### Medication Interaction Checker

Screen for potential drug-drug interactions.

**Algorithm: Interaction Detection**

1. **Extract active medications** from MedicationStatement resources
2. **Normalize drug codes** to common terminology (RxNorm)
3. **Query interaction database** for each medication pair
4. **Classify severity**: Major, Moderate, Minor
5. **Generate warnings** with clinical context

**Pseudocode:**
```python
def check_interactions(medication_statements):
    active_meds = [m for m in medication_statements if m.status == 'active']
    
    # Normalize to RxNorm
    rxnorm_codes = [normalize_to_rxnorm(m.medication) for m in active_meds]
    
    interactions = []
    for i, med1 in enumerate(rxnorm_codes):
        for med2 in rxnorm_codes[i+1:]:
            result = query_interaction_db(med1, med2)
            if result:
                interactions.append(result)
    
    return sorted(interactions, key=lambda x: x.severity, reverse=True)
```

**Data Sources:**
- [NIH Drug Interaction API](https://rxnav.nlm.nih.gov/InteractionAPIs.html)
- [DrugBank](https://www.drugbank.ca/)

---

#### Care Gap Detection

Identify overdue preventive care based on guidelines.

**Algorithm: Preventive Care Gaps**

1. **Load patient demographics** (age, sex, conditions)
2. **Load applicable guidelines** (USPSTF, etc.)
3. **Query existing procedures/observations** for each guideline
4. **Calculate due dates** based on last occurrence
5. **Generate gap report** with recommendations

**Pseudocode:**
```python
def find_care_gaps(patient, guidelines):
    gaps = []
    
    for guideline in guidelines:
        if not applies_to_patient(guideline, patient):
            continue
        
        last_occurrence = find_last_occurrence(
            patient, 
            guideline.procedure_codes
        )
        
        if last_occurrence is None:
            gaps.append(CareGap(
                guideline=guideline,
                status="never_performed",
                priority="high"
            ))
        elif is_overdue(last_occurrence, guideline.interval):
            gaps.append(CareGap(
                guideline=guideline,
                status="overdue",
                last_date=last_occurrence.date,
                priority="medium"
            ))
    
    return gaps

# Example guidelines
GUIDELINES = [
    Guideline(
        name="Colonoscopy",
        applies_to=lambda p: p.age >= 45,
        procedure_codes=["73761001"],  # SNOMED
        interval_years=10
    ),
    Guideline(
        name="Mammogram",
        applies_to=lambda p: p.sex == "female" and p.age >= 40,
        procedure_codes=["71651007"],
        interval_years=2
    ),
    Guideline(
        name="Flu Vaccine",
        applies_to=lambda p: True,
        procedure_codes=["86198006"],
        interval_years=1
    )
]
```

---

#### Data Summarization with LLM

Generate human-readable summaries of patient records.

**Algorithm: LLM-Based Summary**

1. **Extract key resources**: Conditions, medications, recent observations
2. **Convert to text normal form**: Standardize terminology and format
3. **Construct prompt**: Include relevant clinical context
4. **Generate summary**: Call LLM API with appropriate guardrails
5. **Validate output**: Check for hallucinations and PHI handling

**Pseudocode:**
```python
def generate_summary(patient_bundle, summary_type="brief"):
    # Extract and normalize
    conditions = extract_active_conditions(patient_bundle)
    medications = extract_active_medications(patient_bundle)
    recent_vitals = extract_recent_vitals(patient_bundle, days=30)
    
    # Build prompt
    prompt = f"""
    Generate a {summary_type} clinical summary for this patient:
    
    Active Conditions: {format_conditions(conditions)}
    Current Medications: {format_medications(medications)}
    Recent Vitals: {format_vitals(recent_vitals)}
    
    Guidelines:
    - Use plain language suitable for patient understanding
    - Highlight any concerning trends
    - Do not fabricate information not present in the data
    - Format as 2-3 paragraphs
    """
    
    # Call LLM with safety settings
    response = llm_api.generate(
        prompt=prompt,
        max_tokens=500,
        temperature=0.3  # Lower temperature for factual content
    )
    
    # Validate
    if contains_fabricated_info(response, patient_bundle):
        raise ValidationError("Summary contains information not in source data")
    
    return response
```

**Safety Considerations:**
- Validate LLM output against source data
- Include disclaimer that summary is AI-generated
- Allow patient/provider review before sharing
- Log prompts and responses for audit
```

---

## FHIR-53521: Add Acknowledgements to PHR Business Association

**Target file:** `input/pagecontent/index.md` (UPDATE Acknowledgements section)

### Draft Content:

```markdown
### Acknowledgements  

This implementation guide was developed through extensive collaboration across multiple organizations and international stakeholders.

#### HL7 Patient Empowerment Workgroup
- Jan Oldenburg, Workgroup Co-Chair

#### MITRE Corporation
- Dr. Neelima Karipineni
- Salim K Semy
- Abigail Watson

#### Clinical Cloud Solutions
- Dave Carlson

#### EMI Advisors
- Savannah Mueller

#### Japanese PHR Council (日本PHR協会)
We extend special thanks to the Japanese PHR Council for their valuable feedback and collaboration, particularly during the November 2025 JAMI meeting in Himeji, Japan.

#### Japan Association for Medical Informatics (JAMI - 日本医療情報学会)
- University of Ehime
- Kyoto University of Medicine
- Meeting participants and reviewers

#### International Contributors
- PHR Business Association members
- HL7 International community
- IHE International

#### Academic Institutions
- University of Chicago
- Stanford University (HealthKit on FHIR)

We also acknowledge the broader FHIR community and the many implementation guide authors whose work informed this specification.
```

---

## FHIR-53522: Build IG Scaffold for Internationalization

**Target file:** `input/pagecontent/internationalization.md` (NEW FILE) + structural guidance

### Draft Content:

```markdown
### Internationalization (i18n) Framework

This page documents the infrastructure for maintaining translated versions of the Personal Health Record Implementation Guide.

#### Overview

The PHR IG aims to support multiple languages to facilitate international adoption. The internationalization framework enables:
- Translated page content
- Localized examples
- Region-specific guidance
- Terminology translations

#### Directory Structure

Translated content follows a parallel structure:

```
input/
├── pagecontent/
│   ├── index.md                 # English (default)
│   ├── index-ja.md              # Japanese
│   ├── index-de.md              # German
│   ├── faq.md
│   ├── faq-ja.md
│   └── ...
├── images/
│   ├── diagram.png              # Language-neutral
│   ├── screenshot-en.png        # English screenshot
│   └── screenshot-ja.png        # Japanese screenshot
└── resources/
    └── (FHIR resources - language-neutral)
```

#### Language Codes

Use ISO 639-1 two-letter codes:

| Language | Code | Status |
|----------|------|--------|
| English | en | Complete (default) |
| Japanese | ja | In progress |
| German | de | Planned |
| French | fr | Planned |
| Spanish | es | Planned |
| Chinese (Simplified) | zh | Planned |
| Korean | ko | Planned |

#### Page Naming Convention

- `{page-name}.md` - English (default)
- `{page-name}-{lang}.md` - Translated version

Example:
- `recordkeeping.md` (English)
- `recordkeeping-ja.md` (Japanese)

#### Translation Workflow

1. **Source update**: English content is updated
2. **Change flagging**: Modified sections are marked for translation
3. **Translation**: Translators update language-specific files
4. **Review**: Native speakers review translations
5. **Publication**: Translated pages are published with version alignment

#### FHIR IG Publisher Configuration

In `sushi-config.yaml`:

```yaml
parameters:
  default-language: en
  
pages:
  index.md:
    title: Home
  index-ja.md:
    title: ホーム
    language: ja
```

#### Content Guidelines for Translators

1. **Preserve technical terms**: FHIR, NDJSON, REST, etc. may remain in English
2. **Translate examples**: Update patient names, addresses to locale-appropriate examples
3. **Adapt cultural references**: Healthcare system differences may require explanation
4. **Maintain links**: Update internal links to translated pages where available
5. **Note untranslated sections**: Mark sections pending translation

#### Machine Translation Assistance

Machine translation may assist but requires human review:
- Technical accuracy verification
- Cultural appropriateness check
- Terminology consistency review

#### Contribution

Community contributions for translations are welcome. See the [contribution guidelines](contributing.html) for how to submit translated content.
```

---

## FHIR-53523 & FHIR-53524: Translate Homepage to Japanese / Translate Entire Guide

**Target file:** `input/pagecontent/index-ja.md` (NEW FILE - Japanese homepage)

### Draft Content:

```markdown
### パーソナルヘルスレコード実装ガイド

#### はじめに

この実装ガイドの目的は、患者健康記録（PHR）を実装する開発者を支援することです。パーソナルヘルスレコード（PHR）の概念は、電子医療記録（EMR）の概念から発展したものです。主な違いは所有権にあります。PHRは患者が所有し、EMRは病院が所有します。

本ドキュメントでは、Fast Healthcare Interoperability Resources（FHIR）の医療業界標準に基づいた設計ガイダンスと標準化されたAPIを提供します。本ドキュメントは、ソフトウェアのプログラミング方法を規定するものではありません。提供するのは、他のPHRおよびEMRアプリとのデータ交換を成功させるためのガイダンスです。

#### この実装ガイドへの期待

読者は、この実装ガイドをスプリントではなくマラソンとして考えることをお勧めします。完全なPHRの実装は簡単な作業ではなく、多くの場合、完了までに1年以上かかることがあります。

#### パーソナルヘルスレコードとは？

![VennDiagram.png](VennDiagram.png){:width="100%"}    

パーソナルヘルスレコードは、患者が所有・管理する電子健康記録です。複数の医療機関、消費者向けデバイス、患者入力情報からのデータを集約できます。

#### 関連法規

- 21世紀キュア法（21st Century Cures Act）
- メディケア（Medicare）
- CARES法（CARES Act）

#### 目的・設計思想

パーソナルヘルスレコードの核心は医療グレードであるべきであり、病院訪問後に受け取るあらゆる医療記録を組み込むことができ、患者が一つの医療提供者から次の医療提供者へ持ち運ぶことができるものです。

#### ユースケース  

本ガイドは、複数の医療システムやデバイスから医療記録を収集・集約し、一貫性のある全体にまとめる問題に特に関心を持っています。

- *縦断的健康記録（Longitudinal Health Records）* - 長期間（一般的に20年以上）にわたる記録の集合。異なる医療システムからのものを含む場合があります。

- *縦断研究（Longitudinal Studies）* - 20年以上にわたって患者の結果を追跡する臨床研究。小児研究にとって非常に重要です。

- *スノーバード（Snowbirds）* - 多くの患者は複数の居住地を持ち、季節によって国内の異なる場所で過ごすことがあります。これにより医療記録が断片化されます。

- *症状追跡（Symptom Tracking）* - 病気の症状は、気候、食事、生活環境などの影響を受けて、状態の改善や悪化に伴い変化することがあります。

- *ロングCOVID（Long COVID）* - COVID-19の長期的な影響を継続的に調査する縦断研究の例です。

- *複数の慢性疾患（Multiple Chronic Conditions）* - すべての医療状態がすべての医療提供者に報告されるわけではありません。

- *ライフログ（Lifelog）* - ウェアラブルデバイス、スマートフォン、スマートホームセンサーから継続的に収集される個人の日常活動のデジタル記録。歩数、歩行距離、消費カロリー、睡眠時間と質、安静時心拍数、ストレス指標などのバイオメトリックデータを含みます。

- *健康生活（Healthy Living）* - 治療ではなく予防に焦点を当てた積極的な健康管理。診断から始まる臨床ユースケースとは異なり、急性疾患のない個人がPHRを使用してライフスタイル要因を最適化するシナリオです。

#### 謝辞  

- Jan Oldenburg, Patient Empowerment Workgroup
- Dr. Neelima Karipineni, MITRE
- Salim K Semy, MITRE  
- Dave Carlson, Clinical Cloud Solutions
- Savannah Mueller, EMI Advisors
- 日本PHR協会
- 日本医療情報学会（JAMI）
- 愛媛大学
- 京都府立医科大学

#### 参考文献  

- [Patient Health Record - System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)  
- [Personal Health Records Software for Consumers](https://www.medicalrecords.com/personal-health-records)    
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)

---

> **注記**: この日本語版は翻訳進行中です。最新の情報については英語版を参照してください。

---
```

---

## Summary: Files to Create/Modify

| JIRA Ticket | File | Action |
|-------------|------|--------|
| FHIR-53509 | index.md | Add Lifelog use case |
| FHIR-53514 | index.md | Add Healthy Living use case |
| FHIR-53510 | faq.md | NEW FILE |
| FHIR-53511 | minimum-viable-phr.md | NEW FILE |
| FHIR-53512 | smart-health-links.md | NEW FILE |
| FHIR-53513 | api.md | EXPAND with streaming content |
| FHIR-53515 | adverse-events.md | NEW FILE |
| FHIR-53516 | real-world-data.md | NEW FILE |
| FHIR-53517 | ips-harmonization.md | NEW FILE |
| FHIR-53518 | mhealth.md | NEW FILE |
| FHIR-53519 | api.md | EXPAND with filtering content |
| FHIR-53520 | algorithms.md | EXPAND with additional algorithms |
| FHIR-53521 | index.md | UPDATE acknowledgements |
| FHIR-53522 | internationalization.md | NEW FILE |
| FHIR-53523 | index-ja.md | NEW FILE |
| FHIR-53524 | (multiple -ja.md files) | Future translation work |

---

## Next Steps for Claude Code

1. Review this draft content with stakeholders
2. Create new files in `/input/pagecontent/`
3. Update `sushi-config.yaml` to include new pages in navigation
4. Run SUSHI to validate
5. Build IG and review rendered output
6. Submit for workgroup review