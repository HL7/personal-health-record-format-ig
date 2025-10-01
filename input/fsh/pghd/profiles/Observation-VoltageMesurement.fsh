Profile: PGHDVoltageMeasurement
Parent: Observation
Id: pghd-voltage-measurement
Title: "PGHD VoltageMeasurement Profile"
Description: """
This profile defines how to represent VoltageMeasurement.  
このプロファイルは、電圧に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Voltage Measurement Profile (電圧 プロファイル)"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationEcgLeadValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemEcgLeadCodes (exactly)
* value[x] only SampledData
* value[x] MS
