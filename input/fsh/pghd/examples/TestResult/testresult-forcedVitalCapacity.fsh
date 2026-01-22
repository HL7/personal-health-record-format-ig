Instance: pghd-testresult-forcedVitalCapacity
InstanceOf: PGHDTestResult
Description: "TestResult forcedVitalCapacity Example"
Usage: #example
* id = "pghd-testresult-forced-vital-capacity"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "510F52BD-D773-4136-BE03-8E91EDFD7FD2"
* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#forcedVitalCapacity
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 500 'L' "L"

* contained = Inline-Instance-Device
* device = Reference(device)
