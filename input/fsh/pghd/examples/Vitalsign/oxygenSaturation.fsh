Instance: pghd-oxygenSaturation
InstanceOf: PGHDOxygenSaturation
Description: "OxygenSaturation Example"
Usage: #example
* id = "pghd-oxygenSaturation"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "ED4D04E0-DCA7-4931-9261-52DD78BDCBB0"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[OxygenSatCode] = $CodeSystemLoinc#2708-6 "Oxygen saturation in Arterial blood"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#oxygenSaturation
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 94 '%' "%"

* contained = Inline-Instance-Device
* device = Reference(device)
