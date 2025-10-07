Instance: pghd-diving-underwaterDepth
InstanceOf: PGHDDiving
Description: "Diving underwaterDepth Example"
Usage: #example
* id = "pghd-diving-underwater-depthg"
* identifier
  * value = "0298F7E7-80DC-4981-9991-91BBC0687348_HKQuantityTypeIdentifierUnderwaterDepth"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#underwaterDepth
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T11:33:42Z"
  * end = "2023-12-01T12:15:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 15 'm' "m"

* contained = Inline-Instance-Device
* device = Reference(device)
