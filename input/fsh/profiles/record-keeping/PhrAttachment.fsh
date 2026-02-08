Invariant:  hash-style
Description: "HASH must be at least 64 ASCII characters."
Severity:    #error
Expression: "$this.length() = 64"

// SHA-256 hash value has 64 characters lentgh.



Profile: PhrAttachment
Parent: Attachment
Id: phr-attachment
Description: "Standard PHR profile of the DocumentReference resource."

* contentType 1..1 MS
  * ^short = "MimeType of the file"
* creation 1..1 MS
  * ^short = "Creation date and time of the file"
* hash 1..1 MS
  * ^short = "The hash value of the must be calculated using SHA-256."
  * obeys hash-style
* size 1..1 MS
  * ^short = "data size(bytes) of the file"
* url 1..1 MS
  * ^short = "path to the file"

//* extension contains AttachmentDocumentInformation named documentInformation 1..1 MS

