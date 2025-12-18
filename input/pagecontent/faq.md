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
