Instance: pghd-heartbeat
InstanceOf: PGHDHeartbeat
Description: "Heartbeat Example"
Usage: #example
* id = "pghd-heartbeat"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#heartBeatSeries
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:33:44Z"
* performer
  * reference = "Patient/1"
* component[heartbeat]
  * code = $CodeSystemObservationPGHDCodes#heartBeatSeries
  * valueQuantity = 0.5 's' "s"
* component[heartbeat]
  * code = $CodeSystemObservationPGHDCodes#heartBeatSeries
  * valueQuantity = 1 's' "s"
* component[heartbeat]
  * code = $CodeSystemObservationPGHDCodes#heartBeatSeries
  * dataAbsentReason = $CodeSystemDataAbsentReason#asked-unknown "Asked But Unknown"
  * valueQuantity = 1.5 's' "s"
* component[heartbeat]
  * code = $CodeSystemObservationPGHDCodes#heartBeatSeries
  * valueQuantity = 2 's' "s"
* device = Reference(device)
