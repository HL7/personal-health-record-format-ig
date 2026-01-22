Instance: pghd-workout-underwaterDiving
InstanceOf: PGHDWorkout
Description: "Workout underwaterDiving Example"
Usage: #example
* id = "pghd-workout-underwater-diving"
* identifier
  * value = "0298F7E7-80DC-4981-9991-91BBC0687348"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#underwaterDiving
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T11:33:42Z"
  * end = "2023-12-01T12:15:22Z"
* performer = Reference(Patient/1)
* hasMember[0] = Reference(pghd-activity-activeEnergyBurned-underwaterDiving)
* hasMember[+] = Reference(pghd-diving-underwaterDepth)
* hasMember[+] = Reference(pghd-diving-waterTemperature)

* contained = Inline-Instance-Device
* device = Reference(device)
