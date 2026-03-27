Instance: pghd-hearing-environmentalAudioExposure
InstanceOf: PGHDHearing
Description: "Hearing environmentalAudioExposure Example"
Usage: #example
* id = "pghd-hearing-environmental-audio-exposure"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social history"
* code = $CodeSystemObservationPGHDCodes#environmentalAudioExposure
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 46 'dB' "dB"
* device = Reference(device)
