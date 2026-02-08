Instance: pghd-bmi
InstanceOf: PGHDBMI
Description: "BMI Example"
Usage: #example
* id = "pghd-bmi"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "82F9D7FC-5959-41E4-9A40-369C82A5503E"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[BMICode] = $CodeSystemLoinc#39156-5 "Body mass index (BMI) [Ratio]"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bodyMassIndex
  * text = "BMI"
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 21 'kg/m2' "kg/m2"

* contained = Inline-Instance-Device
* device = Reference(device)
