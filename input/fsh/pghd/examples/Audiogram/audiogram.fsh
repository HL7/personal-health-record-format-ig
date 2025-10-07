Instance: pghd-audiogram
InstanceOf: PGHDAudiogram
Description: "Audiogram Example"
Usage: #example
* id = "pghd-audiogram"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "DE430E9B-03F4-4310-ACA1-508787B240CD"

* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#Audiogram
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* hasMember[0] = Reference(Observation/pghd-hearingSensitivity-1)
* hasMember[+] = Reference(Observation/pghd-hearingSensitivity-2)
* hasMember[+] = Reference(Observation/pghd-hearingSensitivity-3)
* hasMember[+] = Reference(Observation/pghd-hearingSensitivity-4)
