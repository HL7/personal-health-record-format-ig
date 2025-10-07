Instance: pghd-mindfulness-mindfulSession
InstanceOf: PGHDMindfulness
Description: "Mindfulness Example"
Usage: #example
* id = "pghd-mindfulness-mindful-session"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "1964FD94-5255-4918-8DC9-088A6DC81D12"
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#mindfulSession
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)

* contained = Inline-Instance-Device
* device = Reference(device)
