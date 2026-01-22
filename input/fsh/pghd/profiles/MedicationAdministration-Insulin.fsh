Profile: PGHDMedicationAdministrationInsulin
Parent: MedicationAdministration
Id: pghd-medicationadministration-insulin
Title: "PGHD MedicationAdministration Insulin Profile"
Description: """
This profile defines the administered insulin doses of a patient.
"""
* insert ProfileRules
* . ^short = "PGHD MedicationAdministration Insulin Profile"

* identifier MS
* status MS
* status = #completed (exactly)
* medication[x] MS
* subject MS
* subject only Reference(PGHDPatient)
* effective[x] MS
* performer.actor only Reference(PGHDPatient)
* performer MS
* note MS
* dosage MS

