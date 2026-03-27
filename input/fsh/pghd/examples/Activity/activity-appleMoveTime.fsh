Instance: pghd-activity-appleMoveTime
InstanceOf: PGHDActivity
Description: "Activity appleMoveTime Example"
Usage: #example
* id = "pghd-activity-appleMoveTime"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#appleMoveTime
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:35:22Z"
  * end = "2023-12-01T07:33:42Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 120 'min' "min"
* device = Reference(device)
