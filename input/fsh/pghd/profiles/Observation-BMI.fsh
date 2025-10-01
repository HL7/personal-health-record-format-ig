Profile: PGHDBMI
Parent: bmi
Id: pghd-bmi
Title: "PGHD BMI Profile"
Description: """
This profile defines how to represent BMI measurements.   
このプロファイルは、BMIの測定値を表す方法を定義します。
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD BMI Profile (BMI プロファイル)"

* code.coding[BMICode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationBodyMesurementsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bodyMassIndex (exactly)
* valueQuantity.unit = "kg/m2" (exactly)
