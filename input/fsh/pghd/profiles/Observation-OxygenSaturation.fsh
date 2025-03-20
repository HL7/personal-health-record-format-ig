Profile: PGHDOxygenSaturation
Parent: oxygensat
Id: pghd-oxygenSaturation
Title: "PGHD OxygenSaturation Profile"
Description: """
This profile defines how to represent oxygen saturation measurements.
"""
* ^experimental = false
* ^status = #active
* . ^short = "PGHD OxygenSaturation Profile"
* code.coding[OxygenSatCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #oxygenSaturation (exactly)
* valueQuantity.unit = "%" (exactly)
* subject only Reference(PGHDPatient)