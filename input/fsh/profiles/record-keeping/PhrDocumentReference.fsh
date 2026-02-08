Profile: PhrDocumentReference
Parent: DocumentReference
Description: "Standard PHR profile of the DocumentReference resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
// * content[*].attachment.contentType from http://terminology.hl7.org/ValueSet/media-types

// * version  This is a business versionId, not a resource version id ( https://build.fhir.org/resource.html#versions

* status = #current
* type 1..1 MS
  * ^short = "Document type with version/schema information for attatced file"
* category MS
  * ^short = "We are requesting support as we may need to manage document categories subject to consent in the future."
* date MS
  * ^short = "Document Creation Date"
* content 1..* MS
  * ^short = "DocumentReferences for PHR related documents contained in .sphr"
  * attachment only PhrAttachment




