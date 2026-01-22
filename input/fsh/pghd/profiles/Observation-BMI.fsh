Profile: PGHDBMI
Parent: bmi
Id: pghd-bmi
Title: "PGHD BMI Profile"
Description: """
This profile defines how to represent BMI measurements.
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD BMI Profile"

* code.coding[BMICode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationBodyMeasurementsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bodyMassIndex (exactly)
* valueQuantity.unit = "kg/m2" (exactly)
