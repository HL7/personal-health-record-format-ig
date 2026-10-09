A complete longitudinal patient health record may feasibly span 100 years or more.  This presents numerous challenges, especially considering that the earliest EHR systems were only first written in the early 1970s.  Statue of limitations require that healthcare practitioners keep pediatric records until an 18th birthday, but even an 18 year storage requirement by providers falls well short of a 76yr life expectancy.  Anybody over 30 years of age is therefore almost guaranteed to have some records on hardcopy paper, compact disk, USB drive, floppy drive, or other storage medium.  

As such, this implementation guide concerns itself with this specific data storage challenge that is unique to patients, and does not immediately assume availability of B2B over-the-wire data interfaces.  This guide differs from guides produced by other working groups, in that it is less concerned with over-the-wire workflows, and more concerned with the notion of a patient asking for a copy of their complete medical history, and how that would work with compact disks, digital video disks, thumbdrive, and other storage devices for bulk data; and how that would be imported into the another system.  

> Note: The only portion of this Implementation Guide that is required for conformance testing is the ability to import/export the .sphr filetype.  All other parts of this implementation guide are optional, and are provided to assist the implementor in modeling patient histories in FHIR format. 

### FHIR Storage 

A useful way to think of data storage is in terms of slow-motion data transfer.  The earliest electronic data storage devices were actually cathode ray tubes, the same devices used in computer monitors for decades.  As such, there isn't as much difference as one may think between the devices that store bits and the devices that transmit data to a person's eyes or transmits data over the wire.  These things are actually quite similar, if one considers the storage device as similar to an actor on the wire that can send or receive data.  In this sense, storage is just like any other data transfer - but with the ability to press a `pause` button indefinately mid-transfer.  

As such, this implementation guide recommends that implementors treat storage in much the same way as over-the-wire data transfers.  

- Systems MUST use FHIR data schemas when importing or exporting data to claim to be compliant with this IG.
- Systems SHOULD use the same MIME types when possible.
- Systems MAY treat directories as Bundle entries or NDJSON lines by default.

![./SphrFileType.jpg](./SphrFileType.jpg){:width="40%"}  

#### File Extensions

- Files contain patient health information using Fast Healthcare Interoperability Resources SHOULD be saved with a `.sphr` extension.  Such files may include multiple FHIR resources, as is typical in a Bundle resource.
- Files that contain only a single record (or single type of record) MAY be saved with a file extension of the resource type.  For example:  `.Observation.fhir` 

#### Meta Data

The `.sphr ` container should contain two meta data files.  One of these files is a Composition record, which acts like the 'cover page' of the bundle.  This record records ownership, versioning, and various other data elements necessary for parsing the record.  The second file is an International Patient Summary, which acts as a manifest and table of contents of critical documents in the record.


#### Compression  

Files containing patient health information MAY be zipped, with either a `.fhir.zip` or `.fhir.gz` extension. When using compression, systems SHOULD use the [DEFLATE](https://en.wikipedia.org/wiki/Deflate) algorithm.  DEFLATE is supported by both ZIP and GZIP compression utilities.  

#### Security  

`.phr` and `.sphr` files are not self-protecting; this guide does not define file-level encryption or signing.  Data at rest SHOULD be protected with operating-system or volume-level encryption (FileVault, BitLocker, LUKS, mobile file-based encryption), and data in transit with TLS or SMART Health Links.  See the [Security](./security.html) page for complete guidance.

#### Bulk Data Exports

Should use [NDJSON format](http://ndjson.org/).  Please see [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/) for additional design guidance.

#### Conformance Testing

For conformance testing with this IG, the primary success critieria is the ability to import/export the .sphr filetype. This entails storing FHIR records in a new-line delimited file (including a cover composition resource, an International Patient Summary, and provenance records as needed), and compressing the file with the DEFLATE algorithm (as needed). 

#### Implementation Guidance  

![./SPHR-ImplementationGuidance.png](./SPHR-ImplementationGuidance.png){:width="100%"}  

#### References  

[Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/)






