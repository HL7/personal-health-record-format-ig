Profile: PGHDOxygenSaturation
Parent: oxygensat
Id: pghd-oxygenSaturation
Title: "PGHD OxygenSaturation Profile"
Description: """
This profile defines how to represent oxygen saturation measurements.
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Oxygen Saturation Profile"

* code.coding[OxygenSatCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #oxygenSaturation (exactly)
* valueQuantity.unit = "%" (exactly)
