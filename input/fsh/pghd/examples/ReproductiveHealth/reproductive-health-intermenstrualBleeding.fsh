Instance: pghd-reproductive-health-intermenstrualBleeding
InstanceOf: PGHDReproductiveHealth
Description: "ReproductiveHealth intermenstrualBleeding Example"
Usage: #example
* id = "pghd-reproductive-health-intermenstrual-bleeding"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "E91AE883-E7AE-49B7-85DE-ADE138229184"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#intermenstrualBleeding
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)

* contained = Inline-Instance-Device
* device = Reference(device)
