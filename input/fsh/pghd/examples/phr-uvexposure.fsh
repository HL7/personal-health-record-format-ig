Instance: pghd-uvexposure
InstanceOf: PGHDUVExposure
Description: "UVExposure Example"
Usage: #example
* id = "pghd-uvexposure"
* identifier
  * value = "74B1B5E0-FF85-4281-A113-8A58B121E28C"
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#uvExposure
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity.value = 11

* contained = Inline-Instance-Device
* device = Reference(device)
