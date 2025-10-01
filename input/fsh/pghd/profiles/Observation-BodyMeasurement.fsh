Profile: PGHDBodyMeasurement
Parent: Observation
Id: pghd-bodymeasurement
Title: "PGHD Body Measurement Profile"
Description: """
This profile defines how to represent body measurements.   
このプロファイルは、身体計測を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Body Measurements Profile  (身体計測 プロファイル)"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationBodyMeasurementsValueSet (required)
* value[x] only Quantity
* value[x] MS
