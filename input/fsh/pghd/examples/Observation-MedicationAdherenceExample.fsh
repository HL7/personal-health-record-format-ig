Instance: pghd-medication-adherence
InstanceOf: PGHDMedicationAdherence
Description: "MedicationAdherence Example"
Usage: #example
* id = "pghd-medication-adherence"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#medicationAdherence
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2022-12-18T09:00:00+09:00"
  * end = "2022-12-25T09:00:00+09:00"
* performer = Reference(Patient/1)
* valueQuantity = 93 '%' "%"

* contained = Inline-Instance-Device
* device = Reference(device)
