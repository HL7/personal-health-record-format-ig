Profile: PGHDFood
Parent: Observation
Id: pghd-food
Title: "PGHD Food Profile"
Description: """
This profile defines how to represent Food.  
このプロファイルは、食事を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Food Profile (食事 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].code = #food (exactly)
* hasMember only Reference(PGHDNutrition)
* value[x] only string
* value[x] MS
