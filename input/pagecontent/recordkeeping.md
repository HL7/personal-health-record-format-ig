A complete longitudinal patient health record may feasibly span 100 years or more.  This presents numerous challenges, especially considering that the earliest EMR systems were only first written in the early 1970s.  Statute of limitations specify that healthcare practitioners keep pediatric records until an 18th birthday, but even an 18 year storage requirement by providers falls well short of a 76yr lifespan.  Anybody over 30 years of age is therefore almost guaranteed to have some records on hardcopy paper, compact disk, USB drive, floppy drive, or other storage mediums.  

As such, this implementation guide is particularly concerned with this data storage challenge that is unique to patients, and does not immediately assume availability of B2B over-the-wire data interfaces.  This guide differs from guides produced by other working groups, in that it is less concerned with over-the-wire workflows, and more concerned with the notion of a patient asking for a copy of their complete medical history, and how that would work with devices... be they smartphones, consumer medical devices, compact disks (CD), digital video disks (DVD), thumbdrives, and other storage devices for bulk data; and how that would be imported into the another system.  


### FHIR Storage 

A useful way to think of data storage is in terms of slow-motion data transfer.  The earliest electronic data storage devices were cathode ray tubes, the same devices used in computer monitors for decades.  As such, there isn't as much difference between the devices that store bits and the devices that display data or transmits data over the wire as many people think.  If one considers the storage device as an actor on the wire that can send or receive data, storage is just like any other data transfer - but with the ability to press a `pause` button indefinately mid-transfer.  

As such, this implementation guide recommends that implementors treat storage in much the same way as over-the-wire data transfers.  We simply are defining file formats, rather than wire formats.  To this extent, we recommend the following principles when exporting data from their systems:

- Systems MUST use FHIR data schemas to claim to be compliant with this IG.  
- Systems SHOULD use the `.phr` and `.sphr` MIME types when possible.
- Systems MAY treat directories as Bundle entries or NDJSON lines by default.

![./SphrFileType.jpg](./SphrFileType.jpg){:width="40%"}  

#### File Extensions - .phr

The `.phr` file extension is introduced in this guide, to a) specify files which contain FHIR resources, and b) to allow 3rd party applications to identify files which contain FHIR resources.  Data exports containing FHIR resources SHOULD be saved with a `.phr` extension, using new-line deliminated JSON (NDJSON) format, similar to the Bulk Data specification. 

This format is a simple, text-based format that is easy to parse and edit.  It is also a good fit for streaming data, as it is easy to append to a file without having to rewrite the entire file.  And perhaps most importantly, it allows multiple .phr files to be easily 'globbed' together.

##### Minimum Viable PHR Example

A minimum viable .phr file must contain at minimum a Patient resource and a Composition resource. This example shows the smallest possible conformant .phr file in NDJSON format (each resource on its own line):

```json
{"resourceType":"Patient","id":"minimal-patient","meta":{"lastUpdated":"2025-01-15T10:30:00Z"},"identifier":[{"system":"urn:example:phr","value":"patient-001"}],"name":[{"use":"official","family":"Tanaka","given":["Yuki"]}],"gender":"female","birthDate":"1985-03-15"}
{"resourceType":"Composition","id":"minimal-composition","meta":{"lastUpdated":"2025-01-15T10:30:00Z"},"status":"final","type":{"coding":[{"system":"http://loinc.org","code":"11503-0","display":"Medical records"}]},"subject":{"reference":"Patient/minimal-patient"},"date":"2025-01-15T10:30:00Z","author":[{"reference":"Patient/minimal-patient","display":"Yuki Tanaka"}],"title":"Personal Health Record for Yuki Tanaka","section":[{"title":"Patient Information","code":{"coding":[{"system":"http://loinc.org","code":"10154-3","display":"Chief complaint"}]},"text":{"status":"generated","div":"<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Personal Health Record created 2025-01-15</p></div>"}}]}
```

This minimal file can be saved as `yuki-tanaka-2025-01-15.phr` and serves as a starting point for implementers. From this foundation, implementers can progressively add Conditions, MedicationStatements, Observations, and other resources.

#### File Extensions - .sphr

The `.sphr` file extension is introduced for when there are additional supporting materials, which cannot be fully expressed in FHIR format.  The `.sphr` is a zip folder, which contains one or more FHIR resources, as well as additional supporting materials.  

The `.sphr` file extension is intended to be used for data exports that are saved to a CD, DVD, thumbdrive, etc.  Each `.sphr` folder should contain at least one `.phr` file within it, as well as additional supporting materials such as images, documents, and other media.

Per the `.zip` specification, the `.sphr` folder may be cryptographically signed.


#### Meta Data

The `.sphr ` container MAY contain two meta data files.  One of these files is a Composition record, which acts like the 'cover page' of the bundle.  This record records ownership, versioning, and various other data elements necessary for parsing the record.  The second file is an International Patient Summary file, which acts as a manifest and table of contents of critical documents in the record.  

#### Compression  

Files containing patient health information MAY be zipped. The `.sphr` file extension is an alias for `.fhir.zip` or `.fhir.gz`. When using compression, systems SHOULD use the [DEFLATE](https://en.wikipedia.org/wiki/Deflate) algorithm.  DEFLATE is supported by both ZIP and GZIP compression utilities.  

#### Media Files & Raw Documents

Supporting media files and raw documents may be added into the `.sphr` directory.  Such files may include DICOM files, 3D models, images, PDFs, and other media.  Each record SHOULD have a corresponding FHIR DocumentReference pointer in the `.phr` file.  

#### Bulk Data Exports

Should use [NDJSON format](http://ndjson.org/) and save to a password encrypted zip file.  Please see [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/) more additional design guidance.

The primary difference between the Bulk Data Access format and the `.phr` file, is that Bulk Data exports data according to resource type.  That is, all Observations get written to an `Observation.ndjson` file; all Condititions get written to a `Conditions.ndjson` file, all MedicationStatements to a `MedicationStatement.ndjson` file, and so forth.  

Meanwhile, the `.phr` file is a single hetergenous `.ndjson` file that contains all of the data for a patient.  It is a `.ndjson` file with mixed resource types.  This is done to simplify the process of importing and exporting data.  It is also done to simplify the process of querying data.  It is easier to query a single file than it is to query multiple files.  However, it does introduce import/export parsing requirements, that are not present in the Bulk Data Access format.

### Data provenance and security

Here we describe the asymmetric cryptography algorithms to support both signing and encryption of PHR files.

#### Signing
Signing allows the source system of the PHR file to attest to the contents of that file and the recipient to verify authenticity and identity of the data source. If the full file is used as the message digest of a digital signature, it can allow the recipient to also verify data integrity and provides mechanism for non-repudiation.

##### Attestation
The source system MAY provide a FHIR Signature on the PhrBundle resource or individual PhrProvenance resources. The signature SHALL be a detached signature on the canonical form of the resource in compliance with the [FHIR Signature](http://hl7.org/fhir/R4/datatypes.html#Signature) guidance.

##### Data integrity
The source system MAY sign a hash of the full and optionally compressed or encrypted PHR file and provide a JWS as a separate file to the recipient to allow the recipient to both identify the source of data and verify data integrity. The source system should use the SHA-256 hash algorithm to create a message digest of the SPHR file for signing. As with FHIR Signatures, the JWS should be a detached signature without a payload. 

The recipient MAY verify the integrity of the SPHR file by verifying the signature of the provided JWS against the SHA-256 hash of the SPHR file. Note that there may be significant performance limitations in creating the hash based on size of the file.

##### Trust and key distribution
While a verifiable signature may provide some context as to the identity of the data source, it does not ensure that that data source is a reliable actor. The recipient who wishes to verify a digital signature MAY also verify that the signer is a trusted entity as defined by participation in a mutual trust network. The recipient SHOULD assure that any trust network in which they choose to participate enforces policies and provides adequate governance to prevent unreliable data sources from entering the network.

Retrieving the source system's public keys may depend on the key formats and distribution methods inherent to the trust networks in which a recipient chooses to participate.

In an X.509 based PKI, the recipient MAY receive the source system's public key from a trusted certificate authority. If the certificate is distributed out of band, the recipient MAY verify that the root of the chain of trust is a trusted certificate authority and that the certificate is not revoked. 

#### Encryption
Files containing patient health information should be encrypted to protect the data in case of unauthorized interception.

##### Public key encryption
If the PHR file is being generated for a known intended recipient, then the file MAY be encrypted using the discoverable public key of that recipient. Key distribution for the recipients public key would follow the same guidance as in "Trust and key distribution". Encryption SHOULD use the ES256 algorithm. The intended recipient would use their equivalent private key and the same algorithm to decrypt the file.

##### Passphrase-based encryption
If the intended recipient is not known at time of file generation, the source system SHOULD use a unique secret key or passphrase to encrypt the file. This passphrase can be shared out of band by the patient with any recipient of their choosing.

Public key encryption and secret key may be combined in a PGP solution.

A SMART Health Links based solution will distribute the encryption key within a shareable QR which the patient can display to recipients of an SPHR file for scanning. The recipient would decrypt the linked file using the A256GCM algorithm.


### Conformance Testing

For conformance testing with this IG, the primary success critieria is that systems MUST have the ability to import/export the `.sphr` filetype. This entails storing FHIR records in a new-line delimited file (including a cover composition resource, a document manifest, and provenance records as needed), compressing the file with DEFLATE algorithm (as needed), and then signing with an X.509 security certificate. 

#### Creating a Personal Health Record    

The process flow below is based on encrypting files with PGP/GPG utilities, which support asymmetric cryptography algorithms and X.509 certificates.

- Gather the data you want to include.
- Convert or encode the data as FHIR resources.
- Ensure there is at least 1 Patient resource.
- Add US realm extensions to resources to comply with US Core (if needed).
- If less than 16MB, add resources to a Bundle and save as .json
- If over 16MB, use Bulk Data format and save as nd-json.
- Add international patient summary (if needed).
- Add problem oriented health record components (if needed).
- Add provenance resources and optionally sign them with a FHIR Signature.
- Add media and supporting documents.
- Optionally add a FHIR Signature to a PhrBundle instance.
- Rename the .ndjson file with .phr extension.
- Compress the file (or directory) with zip and DEFLATE algorithms.
- Encrypt the file with a passphrase or the public key in the intended recipient's X.509 certificate.
- Rename the .phr file with .sphr extension.
- Optionally hash the file and produce a JWS signature using your discoverable X.509 certificate.

#### Importing a Personal Health Record 

- Configure operating sytem to open the .sphr with the application of your choice.
- If .sphr not registered, rename to .zip
- Optionally validate the associated JWS signature using the source system's X.509 certificate.
- Decompress the file (or directory) with zip and DEFLATE algorithms.
- Decrypt using a provided passphrase or the private key associated with your discoverable X.509 certificate.
- If a directory, scan for media and supporting documents such as PDF.
- Scan the contents of the directory for a .phr or .ndjson file.
- Scan the .phr file for the Composition resource.
- Scan the .phr file for the Document Manifest resource.
- Scan the .phr file for the primary Patient resource.
- Scan the .phr file for provenance resources.
- If found, decode each provenance signature and extract payload contents.
- Scan for an international patient summary, and supporting resources.
- Scan for a problems list, and supporting resources.
- Scan the remaining resources, and operate on them as if a PUT or POST message.

### References  

- [Convert a X.509 (PKI) certificate to GPG](https://www.pengdows.com/2020/06/27/convert-a-x-509-pki-certificate-to-gpg/)
- [GPG Encryption/Decryption in Node.js](https://www.npmjs.com/package/gpg)


#### Directory Structure  

The SPHR file format takes much inspiration from the DICOM DIR specification.  Grossly speaking, the DICOM DIR format is like a manilla envelope. It is not a specification about the paper or documents within it, but rather, about the envelope that contains the documents of interest.  

Similarly, SPHR seeks a mechanism whereby a patient's health record can be sent in structured, machine-readable formats; but which can also include copies of the raw data in various other formats.  We can achieve this goal, by adopting a folder format that contains both a specified JSON or NDJSON data, along with elements in the folder that 'ride along' with the structured data.  These ride along files, might be PDFs, photos of receipts, video recordings, or whatever other data that is relevant to the patient's health.  

But to make that happen, we must clarify the details of the envelope that will contain such data.  

- [Opening a DICOMDIR File](https://filext.com/file-extension/DICOMDIR)  
- [DICOM PS3.3 2024b - Information Object Definitions](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_F.2.2.2.html)
- [DICOM PS3.11 2024b - Media Storage Application Profiles](https://dicom.nema.org/medical/dicom/current/output/chtml/part11/sect_d.3.3.html)

### IPS Harmonization

As mentioned earlier, the .sphr container MAY include an International Patient Summary (IPS) file that acts as a manifest and table of contents. This section provides detailed guidance on the relationship between PHR and IPS formats.

#### IPS vs PHR Comparison

| Aspect | IPS | PHR |
|--------|-----|-----|
| Purpose | Emergency/unplanned care | Complete health history |
| Scope | Essential current data | All historical data |
| Size | Compact (KB) | Comprehensive (MB-GB) |
| Authorship | Clinical system | Patient + multiple sources |
| Standard | HL7 IPS IG | This IG |

The IPS can be thought of as an "executive summary" extracted from the complete PHR - containing only active, current information needed for immediate care decisions.

#### Generating IPS from PHR

To generate an IPS document from PHR data, extract current/active resources:

| IPS Section | PHR Source |
|-------------|------------|
| Medication Summary | MedicationStatement (status=active) |
| Allergies and Intolerances | AllergyIntolerance (clinicalStatus=active) |
| Problem List | Condition (clinicalStatus=active) |
| Immunizations | Immunization (status=completed, recent) |
| History of Procedures | Procedure (recent, significant) |
| Medical Devices | DeviceUseStatement (status=active) |
| Vital Signs | Observation (category=vital-signs, recent) |

#### Importing IPS into PHR

When a patient receives an IPS from a healthcare provider:

1. **Parse the IPS Bundle** - Extract Composition and referenced resources
2. **Add Provenance** - Record source system and date received
3. **Deduplicate** - Check for existing equivalent records
4. **Merge** - Integrate new data with existing PHR contents
5. **Flag conflicts** - Identify discrepancies for patient review

**Provenance example:**
```json
{
  "resourceType": "Provenance",
  "target": [{"reference": "Bundle/imported-ips"}],
  "recorded": "2025-01-15T10:00:00Z",
  "agent": [{
    "type": {
      "coding": [{
        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code": "author"
      }]
    },
    "who": {
      "display": "Hospital EHR System"
    }
  }]
}
```

#### Terminology Requirements

IPS requires internationally recognized code systems:

| Data Type | Required Code System |
|-----------|---------------------|
| Conditions | SNOMED CT (IPS subset) |
| Medications | SNOMED CT, ATC, or national drug codes |
| Allergies | SNOMED CT |
| Lab results | LOINC |
| Units | UCUM |

#### References

- [International Patient Summary IG](http://hl7.org/fhir/uv/ips/)
- [IPS Terminology](https://www.snomed.org/snomed-ct/use-snomed-ct/international-patient-summary)

#### Configuring Operating Systems to Recognize .phr and .sphr Filetypes

- [How to set default apps on Mac](https://www.imore.com/how-set-mac-app-default-when-opening-file)
- [How to properly register a file extension on mac so it will also work by running open from the command line? ](https://apple.stackexchange.com/questions/94954/how-to-properly-register-a-file-extension-on-mac-so-it-will-also-work-by-running)
- [Adding or registering a file type so it can be associated with an application](https://superuser.com/questions/1080453/adding-or-registering-a-file-type-so-it-can-be-associated-with-an-application)
- [Set default app for .file type file](https://answers.microsoft.com/en-us/windows/forum/all/set-default-app-for-file-type-file/c449afd5-2eff-4f3b-8faf-8ce7ced50f30)
- [How to Change File Associations in Windows 10](https://www.ninjaone.com/blog/how-to-change-file-associations/)  







