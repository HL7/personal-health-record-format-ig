// // This is a simple example of a FSH file.
// // This file can be renamed, and additional FSH files can be added.
// // SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrDocumentManifest
Parent: DocumentManifest
Description: "Standard PHR profile of the DocumentManifest resource."

* id 1..1 MS
  * ^short = "Unique ID within the PHR service (UDID, etc.)"
* status = #current
* content 1..* MS
* content only Reference(PhrDocumentReference)
  * ^short = "DocumentReferences for PHR related documents contained in .sphr"
// * subject 1..1 MS