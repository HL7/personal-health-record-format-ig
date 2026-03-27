Instance: pghd-bodyheight
InstanceOf: PGHDBodyHeight
Description: "BodyHeight Example"
Usage: #example
* id = "pghd-bodyheight"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "3B176196-0B85-44A8-B375-84B54325F1CD"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[BodyHeightCode] = $CodeSystemLoinc#8302-2 "Body height"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#height
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 165 'cm' "cm"

* contained = Inline-Instance-Device
* device = Reference(device)
