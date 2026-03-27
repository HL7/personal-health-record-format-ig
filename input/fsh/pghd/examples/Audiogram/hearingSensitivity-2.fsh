Instance: pghd-hearingSensitivity-2
InstanceOf: PGHDHearingSensitivity
Description: "HearingSensitivity Example"
Usage: #example
* id = "pghd-hearingSensitivity-2"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "DE430E9B-03F4-4310-ACA1-508787B240CD_2"
* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#hearingSensitivity
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* component[frequency]
  * code = $CodeSystemHearingSensivityCodes#frequency
  * valueQuantity = 1000 'Hz' "Hz"
* component[leftEarSensitivity]
  * valueQuantity = 50 'dB' "dB"
  * code = $CodeSystemHearingSensivityCodes#leftEarSensitivity
* component[rightEarSensitivity]
  * code = $CodeSystemHearingSensivityCodes#rightEarSensitivity
  * valueQuantity = 55 'dB' "dB"