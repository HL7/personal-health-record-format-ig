Instance: pghd-sleep-asleepCore
InstanceOf: PGHDSleep
Description: "Sleep asleepCore Example"
Usage: #example
* id = "pghd-sleep-asleep-core"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "2FB28BD9-E753-4CE8-9F0D-7B933D1C176E"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#sleepAnalysis
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueCodeableConcept = $CodeSystemSleepAnalysis#asleepCore

* contained = Inline-Instance-Device
* device = Reference(device)
