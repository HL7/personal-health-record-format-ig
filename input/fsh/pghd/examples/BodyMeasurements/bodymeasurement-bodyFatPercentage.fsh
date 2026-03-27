Instance: pghd-bodymeasurement
InstanceOf: PGHDBodyMeasurement
Description: "BodyMeasurement bodyFatPercentage Example"
Usage: #example
* id = "pghd-bodymeasurement-body-fat-percentage"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "6D372713-386D-45C4-A58B-851FAB744838"
* status = #final
* category[0] = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#bodyFatPercentage
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 18 '%' "%"

* contained = Inline-Instance-Device
* device = Reference(device)
