Instance: pghd-symptom-fever
InstanceOf: PGHDSymptom
Description: "Symptom fever Example"
Usage: #example
* id = "pghd-symptom-fever"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "1D57147F-BE0C-4024-9172-6871A5D70CB3"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#fever
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueCodeableConcept = $CodeSystemSymptomSeverityCodes#moderate

* contained = Inline-Instance-Device
* device = Reference(device)
