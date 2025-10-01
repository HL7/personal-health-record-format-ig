Profile: PGHDMobility
Parent: Observation
Id: pghd-mobility
Title: "PGHD Mobility Profile"
Description: """
This profile defines how to represent Mobility.  
このプロファイルは、歩行に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Mobility Profile (歩行 プロファイル)"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMobility
* value[x] only Quantity
