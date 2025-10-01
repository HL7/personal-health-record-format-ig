Profile: PGHDDiving
Parent: Observation
Id: pghd-diving
Title: "PGHD Diving Profile"
Description: """
This profile defines how to represent Diving.  
このプロファイルは、ダイビングを表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD CDiving Profile (ダイビング プロファイル)"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationDiving
* value[x] only Quantity
* value[x] MS
