Instance: pghd-heart-electrocardiogram
InstanceOf: PGHDElectrocardiogram
Description: "Heart electrocardiogram Example"
Usage: #example
* id = "pghd-heart-electrocardiogram"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#electrocardiogram
* subject = Reference(Patient/1)
* effectivePeriod
  * end = "2023-05-17T00:00:29Z"
  * start = "2023-05-17T00:00:00Z"
* performer
  * reference = "Patient/1"
* component[0]
  * code = $CodeSystemEcgCodes#classification
  * valueCodeableConcept = $CodeSystemEcgClassificationCodes#atrialFibrillation
* component[+]
  * code = $CodeSystemEcgCodes#symptomsStatus
  * valueCodeableConcept = $CodeSystemEcgSymptomsStatusCodes#present
* hasMember = Reference(Observation/pghd-voltage-measurement)
* device = Reference(device)
