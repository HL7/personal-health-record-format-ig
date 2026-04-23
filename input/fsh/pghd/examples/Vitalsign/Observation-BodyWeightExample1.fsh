Instance: pghd-bodyweight
InstanceOf: PGHDBodyWeight
Description: "Body Weight Example"
Usage: #example
* id = "pghd-bodyweight"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "3B176196-0B85-44A8-B375-84B54325F1CD"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[BodyWeightCode] = $CodeSystemLoinc#29463-7 "Body weight"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bodyMass
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 65.2 'kg' "kg"

* contained = Inline-Instance-Device
* device = Reference(device)
