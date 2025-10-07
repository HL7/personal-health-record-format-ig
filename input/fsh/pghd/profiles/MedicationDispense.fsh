Profile: PGHDMedicationDispense
Parent: MedicationDispense
Id: pghd-medicationdispense
Title: "PGHD MedicationDispense Profile"
Description: """
This profile defines the dispensing on the part of a pharmacy.
"""
* insert ProfileRules
* . ^short = "PGHD MedicationDispense Profile"

* status MS
* medication[x] MS
* subject MS
* subject only Reference(PGHDPatient)
* authorizingPrescription only Reference(MedicationRequest)
* quantity MS
* whenHandedOver MS
* dosageInstruction MS
* dosageInstruction.additionalInstruction MS
* dosageInstruction.timing MS
* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat.bounds[x] MS
* dosageInstruction.timing.code MS
* dosageInstruction.method MS
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.type MS
* dosageInstruction.doseAndRate.dose[x] MS
* dosageInstruction.doseAndRate.rate[x] MS
