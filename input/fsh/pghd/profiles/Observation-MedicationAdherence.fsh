Profile: PGHDMedicationAdherence
Parent: Observation
Id: pghd-medication-adherence
Title: "PGHD MedicationAdherence Profile"
Description: """
This profile defines how to represent medication adherence.
"""
* insert ObservationPGHDRules(MedicationAdherence)
* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #medicationAdherence (exactly)
* value[x] only Quantity
* device only Reference(PGHDDevice)
* focus only Reference(MedicationRequest)
* value[x] MS
* valueQuantity insert QuantityRules
* focus MS
* effective[x] only Period
