Instance: pghd-respiratoryrate
InstanceOf: PGHDRespiratoryRate
Description: "RespiratoryRate Example"
Usage: #example
* id = "pghd-respiratoryrate"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "5F328E3C-0E5C-402C-A899-A152A59562BC"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[RespRateCode] = $CodeSystemLoinc#9279-1 "Respiratory rate"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#respiratoryRate
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 15 '/min' "/min"

* contained = Inline-Instance-Device
* device = Reference(device)
