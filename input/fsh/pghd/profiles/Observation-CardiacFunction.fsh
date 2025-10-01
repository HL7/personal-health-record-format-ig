Profile: PGHDCardiacFunction
Parent: PGHDVitalSigns
Id: pghd-cardiac-function
Title: "PGHD Cardiac Function Profile"
Description: """
This profile defines how to represent Cardiac Function.  
このプロファイルは、心機能を表す方法を定義します。
"""
* . ^short = "PGHD Cardiac Function Profile (心機能 プロファイル)"

* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
