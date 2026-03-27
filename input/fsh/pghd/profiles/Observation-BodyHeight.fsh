Profile: PGHDBodyHeight
Parent: bodyheight
Id: pghd-bodyheight
Title: "PGHD BodyHeight Profile"
Description: """
This profile defines how to represent body height measurements.
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Body Height Profile"

* code.coding[BodyHeightCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationBodyMeasurementsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #height (exactly)
* valueQuantity.unit = "cm" (exactly)
