Instance: pghd-activity-activeEnergyBurned
InstanceOf: PGHDActivity
Description: "Activity activeEnergyBurned Example"
Usage: #example
* id = "pghd-activity-activeEnergyBurned"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#activeEnergyBurned
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T07:35:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 400.8 'kcal' "kcal"
* device = Reference(device)
