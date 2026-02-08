Instance: pghd-activity-cyclingCadence
InstanceOf: PGHDActivity
Description: "Activity cyclingCadence Example"
Usage: #example
* id = "pghd-activity-cyclingCadence"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#cyclingCadence
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:55:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 80 'min-1' "min-1"
* device = Reference(device)
