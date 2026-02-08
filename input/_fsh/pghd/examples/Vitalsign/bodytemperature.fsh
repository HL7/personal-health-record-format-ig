Instance: pghd-bodytemperature
InstanceOf: PGHDBodyTemperature
Description: "BodyTemperature Example"
Usage: #example
* id = "pghd-bodytemperature"
* identifier
  * value = "FE0A26A6-0254-4DC8-98F1-D48CFB6C1F48"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[BodyTempCode] = $CodeSystemLoinc#8310-5 "Body temperature"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bodyTemperature
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 35.9 'Cel' "Cel"

* contained = Inline-Instance-Device
* device = Reference(device)
