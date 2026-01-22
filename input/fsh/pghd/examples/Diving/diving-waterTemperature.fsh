Instance: pghd-diving-waterTemperature
InstanceOf: PGHDDiving
Description: "Diving waterTemperature Example"
Usage: #example
* id = "pghd-diving-water-temperature"
* identifier
  * value = "0298F7E7-80DC-4981-9991-91BBC0687348_HKQuantityTypeIdentifierUnderwaterDepth"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#waterTemperature
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T11:33:42Z"
  * end = "2023-12-01T12:15:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 7.5 'Cel' "Cel"

* contained = Inline-Instance-Device
* device = Reference(device)
