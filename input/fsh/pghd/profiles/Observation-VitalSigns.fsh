Profile: PGHDVitalSigns
Parent: Observation
Id: pghd-vitalsigns
Title: "PGHD Vital Signs Profile"
Description: """
This profile defines how to represent vital signs measurements.   
このプロファイルは、バイタルサインを表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Vital Sign Profile (バイタルサイン プロファイル)"

* category[ObservationCategory].coding.code = #vital-signs (exactly)
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* value[x] MS
