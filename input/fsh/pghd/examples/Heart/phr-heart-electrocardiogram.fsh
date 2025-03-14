Instance: pghd-heart-electrocardiogram
InstanceOf: PGHDElectrocardiogram
Description: "Heart electrocardiogram Example"
Usage: #example
* id = "pghd-heart-electrocardiogram"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#exam "Exam"
* code = $CodeSystemObservationPGHDCodes#electrocardiogram "Electrocardiogram"
  * text = "Electrocardiogram"
* subject = Reference(Patient/1)
* effectivePeriod
  * end = "2023-05-17T00:00:29Z"
  * start = "2023-05-17T00:00:00Z"
* performer
  * reference = "Patient/1"
* component[0]
  * code = $CodeSystemEcgCodes#classification "Classification"
  * valueCodeableConcept = $CodeSystemEcgClassificationCodes#atrialFibrillation "Atrial fibrillation"
* component[+]
  * code = $CodeSystemEcgCodes#symptomsStatus "Symptoms status"
  * valueCodeableConcept = $CodeSystemEcgSymptomsStatusCodes#present "Present"
* hasMember = Reference(Observation/pghd-voltage-measurement)
* device = Reference(device)
