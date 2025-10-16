Instance: pghd-cardiac-function-lowHeartRateEvent
InstanceOf: PGHDCardiacFunction
Description: "CardiacFunction lowHeartRateEvent Example"
Usage: #example
* id = "pghd-cardiac-function-lowHeart-rate-event"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "F94F5DEE-6C54-4A84-9679-208D5360618B"
* status = #final
* category[0] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code = $CodeSystemObservationPGHDCodes#lowHeartRateEvent
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)

* contained = Inline-Instance-Device
* device = Reference(device)
