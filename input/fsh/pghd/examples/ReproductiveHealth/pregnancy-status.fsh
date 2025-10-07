Instance: pghd-pregnancy-status
InstanceOf: PGHDPregnancyStatus
Description: "PregnancyStatus Example"
Usage: #example
* id = "pghd-pregnancy-status"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "18D06ADF-CC0C-475D-82F6-BA95F1660F09"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#pregnancy
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueCodeableConcept = $CodeSystemLoinc#LA15173-0 "Pregnant"

* contained = Inline-Instance-Device
* device = Reference(device)
