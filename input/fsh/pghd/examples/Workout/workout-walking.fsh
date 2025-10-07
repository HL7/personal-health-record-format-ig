Instance: pghd-workout-walking
InstanceOf: PGHDWorkout
Description: "Workout walking Example"
Usage: #example
* id = "pghd-workout-walking"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "3C0974BD-EF41-4B3D-A278-4868DC73B949"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#walking
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T15:33:42Z"
  * end = "2023-12-01T16:35:22Z"
* performer = Reference(Patient/1)
* hasMember[0] = Reference(pghd-activity-distanceWalkingRunning-walking)
* hasMember[+] = Reference(pghd-activity-activeEnergyBurned-walking)

* contained = Inline-Instance-Device
* device = Reference(device)
