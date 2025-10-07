Instance: pghd-activity-activeEnergyBurned-underwaterDiving
InstanceOf: PGHDActivity
Description: "Activity activeEnergyBurned Example"
Usage: #example
* id = "pghd-activity-activeEnergyBurned-underwater-diving"
* identifier
  * value = "0298F7E7-80DC-4981-9991-91BBC0687348_HKQuantityTypeIdentifierActiveEnergyBurned"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#activeEnergyBurned
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T11:33:42Z"
  * end = "2023-12-01T12:15:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 405.8 'kcal' "kcal"

* contained = Inline-Instance-Device
* device = Reference(device)
