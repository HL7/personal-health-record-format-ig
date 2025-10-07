Instance: pghd-activity-appleExerciseTime
InstanceOf: PGHDActivity
Description: "Activity appleExerciseTime Example"
Usage: #example
* id = "pghd-activity-appleExerciseTime"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#appleExerciseTime
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T07:03:52Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 90 'min' "min"
* device = Reference(device)
