Instance: JaneDoePhrDocumentManifest
InstanceOf: PhrDocumentManifest
Title: "Jane Doe PhrDocumentManifest"
Description: "A sample for Jane Doe's PHR Document Manifest."
Usage: #example
//* id = "jane-doe-phr-document-manifest"
* status = #current

/*
* content[+] = Reference(JaneDoePDF)
* content[+] = Reference(JaneDoePhoto)
* content[+] = Reference(JaneDoeOpenmHealth)
*/

* content[+].reference = "urn:uuid:0b19468d-1a7e-40f4-9eab-49e65cfbf14c"
* content[+].reference = "urn:uuid:c6212769-09bf-486e-bbf9-be23b87753ce"
* content[+].reference = "urn:uuid:4df9c2a7-4a5c-41cb-b972-d0466337d9d4"

Instance: JaneDoePDF
InstanceOf: PhrDocumentReference
Title: "Jane Doe PDF Report"
Description: "A PDF genomics report for Jane Doe regarding celiac disease."
Usage: #example
//* id = "jane-doe-genomics-document"
//* fullUrl = "urn:uuid:4df9c2a7-4a5c-41cb-b972-d0466337d9d4"
* status = #current
//* type = http://loinc.org/#68656-8 "Clinical genetics Note"
//* date = "2024-12-11T05:22:27.249Z"
//* author[0].display = "Dr. Smith"
* type = $JpPhrDocumentTypeCS_Url#generic-pdf "PDF全般"
* content[+]
  * attachment
    * id = "BDA31D01-2CB9-48D7-9EF8-4FB7EA059415"
    * contentType = #application/pdf
    * title = "Genomics Report for Jane Doe"
    * creation = "2024-12-11T05:22:27.249Z"
    * url = "file://files/sample.pdf"
    * hash = "D45CB70741AE698EE262B764DE181D37F2E5D3F28DF8F23E15BF86727594BD7F"
    * size = 213211

Instance: JaneDoePhoto
InstanceOf: PhrDocumentReference
Title: "Jane Doe Smartphone Photo"
Description: "A JPEG photo taken from Jane Doe's smartphone."
Usage: #example
//* id = "jane-doe-media"
//* fullUrl = "urn:uuid:c6212769-09bf-486e-bbf9-be23b87753ce"
* status = #current
* type = $JpPhrDocumentTypeCS_Url#generic-image "画像全般"

* content[+]
  * attachment
    * id = "8B2AB7B0-62CC-451E-ACA6-0D7FAACA6C0B"
    * contentType = #image/jpeg
    * title = "Jane Doe Smartphone Photo"
    * url = "file://photos/sample.jpg"
    * creation = "2024-12-11T05:22:27.249Z"
    * hash = "2EA5A53016B8721D8E7CEEFD18051F56CC222F5AEFEF70402D01F47997C3B590"
    * size = 2103231

Instance: JaneDoeOpenmHealth
InstanceOf: PhrDocumentReference
Title: "Jane Doe Blood pressure"
Description: "Blood pressure taken from Jane Doe's watch."
Usage: #example
//* id = "jane-doe-openmHealth"
//* fullUrl = "urn:uuid:0b19468d-1a7e-40f4-9eab-49e65cfbf14c"
* status = #current
* type = $JpPhrDocumentTypeCS_Url#https://w3id.org/openmhealth/schemas/omh/blood-pressure-4.0.json "OMH血圧記録"

* content[+]
  * attachment
    * id = "8B2AB7B0-62CC-451E-ACA6-0D7FAACA6C0B"
    * contentType = #application/json
    * title = "Jane Doe Blood Pressure"
    * url = "file://omh/20241211052227.249.json"
    * creation = "2024-12-11T05:22:27.249Z"
    * hash = "C45EFC21FF1198F10F944AFB043FCC3C4A1F65BCC33A888D70801C501E7CA5DD"
    * size = 2103231
