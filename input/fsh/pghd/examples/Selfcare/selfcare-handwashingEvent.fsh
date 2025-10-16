Instance: pghd-selfcare-handwashingEvent
InstanceOf: PGHDSelfCare
Description: "SelfCare handwashingEvent Example"
Usage: #example
* id = "pghd-selfcare-handwashingEvent"
* identifier
  * value = "AED78DA0-E84A-47C0-AF4F-D5F1BA38B2B6"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#handwashingEvent
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)

* contained = Inline-Instance-Device
* device = Reference(device)
