Profile: PGHDRespiratoryRate
Parent: resprate
Id: pghd-respiratoryrate
Title: "PGHD Respiratory Rate Profile"
Description: """
This profile defines how to represent respiratory rate measurements.   
このプロファイルは、呼吸数の測定値を表す方法を定義します。
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Respiratory Rate Profile (呼吸数 プロファイル)"

* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #respiratoryRate (exactly)
* code.coding[RespRateCode] from $ValueSetVitalSignsLoincCodes (required)
* valueQuantity.unit = "/min" (exactly)
