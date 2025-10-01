Profile: PGHDNutrition
Parent: Observation
Id: pghd-nutrition
Title: "PGHD Nutrition Profile"
Description: """
This profile defines how to represent Nutrition.  
このプロファイルは、栄養を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Nutrition Profile (栄養 プロファイル)"

* category[ObservationCategory].coding.code = #social-history	 (exactly)
* code.coding[PGHDCode] from ObservationNutrition
* value[x] only Quantity
* valueQuantity.system = $CodeSystemUCUM
* value[x] MS
