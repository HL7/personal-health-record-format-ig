Profile: PGHDHeartRate
Parent: heartrate
Id: pghd-heartrate
Title: "PGHD Heart Rate Profile"
Description: """
This profile defines how to represent heart rate measurements.   
このプロファイルは、心拍数の測定値を表す方法を定義します。
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Heart Rate Profile (心拍数 プロファイル)"

* code.coding[HeartRateCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #heartRate (exactly)
* valueQuantity.unit = "/min" (exactly)
