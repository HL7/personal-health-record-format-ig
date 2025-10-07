Instance: pghd-activity-basalEnergyBurned
InstanceOf: PGHDActivity
Description: "Activity basalEnergyBurned Example"
Usage: #example
* id = "pghd-activity-basalEnergyBurned"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#basalEnergyBurned
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 200 'kcal' "kcal"
* device = Reference(device)
