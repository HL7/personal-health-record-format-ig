Instance: pghd-activity-activeEnergyBurned-walking
InstanceOf: PGHDActivity
Description: "Activity activeEnergyBurned Example"
Usage: #example
* id = "pghd-activity-activeEnergyBurned-walking"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "3C0974BD-EF41-4B3D-A278-4868DC73B949_HKQuantityTypeIdentifierActiveEnergyBurned"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#activeEnergyBurned
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T15:33:42Z"
  * end = "2023-12-01T16:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 410 'kcal' "kcal"

* contained = Inline-Instance-Device
* device = Reference(device)
