Invariant: contained-reference-only
Description: "Reference must point to a contained resource"
Severity: #error
Expression:  "reference.exists() implies reference.startsWith('#')"

Profile: PhrComposition
Parent: Composition
Description: "Standard PHR profile of the Composition resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* type = http://loinc.org#11503-0 "Medical records"
  * ^short = "Type code of sphr file is fixed."

* subject 1..1 MS
* subject only Reference(Patient)
* subject obeys contained-reference-only
* subject
  * ^short = "The patient who is the subject of the PHR"
  * ^definition = "The patient whose data is contained in this PhrComposition. This must be a contained resource."
  * reference 1..1

* author 1..1 MS
* author obeys contained-reference-only
* author only Reference(Organization)
* author
  * ^short = "sphr file provider information"
  * ^definition = "Describes information about the organization that created and provides the sphr file."
  * ^comment = "Include Organization resource as contained resource."
  * reference 1..1

* date 1..1 MS
  * ^short = "Creation date and time of the sphr file"
  * ^definition = "Creation date and time of the sphr file"

* status 1..1 MS
* status  = #final
  * ^short = "sphr file status"
  * ^definition = "sphr file creation status #final fixed"

* title 1..1 MS
  * ^short = "Title of the sphr file"
  * ^definition = "Arbitrary title created by the sphr file provider. Example: PHR Data 20240501"






