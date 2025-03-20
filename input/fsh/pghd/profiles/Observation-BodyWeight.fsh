Profile: PGHDBodyWeight
Parent: bodyweight
Id: pghd-bodyweight
Title: "PGHD BodyWeight Profile"
Description: """
This profile defines how to represent body weight measurements.
"""
* ^experimental = false
* ^status = #active
* . ^short = "PGHD BodyWeight Profile"
* code.coding[BodyWeightCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationBodyMesurementsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bodyMass (exactly)
* valueQuantity.unit = "kg" (exactly)
* subject only Reference(PGHDPatient)