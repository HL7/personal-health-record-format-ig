Profile: PGHDOxygenSaturation
Parent: oxygensat
Id: pghd-oxygenSaturation
Title: "PGHD OxygenSaturation Profile"
Description: """
This profile defines how to represent oxygen saturation measurements.   
このプロファイルは、酸素飽和度の測定値を表す方法を定義します。
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Oxygen Saturation Profile (酸素飽和度 プロファイル)"

* code.coding[OxygenSatCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #oxygenSaturation (exactly)
* valueQuantity.unit = "%" (exactly)
