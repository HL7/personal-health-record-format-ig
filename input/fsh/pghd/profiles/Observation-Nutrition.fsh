Profile: PGHDNutrition
Parent: Observation
Id: pghd-nutrition
Title: "PGHD Nutrition Profile"
Description: """
This profile defines how to represent Nutrition.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Nutrition Profile"

* category[ObservationCategory].coding.code = #social-history	 (exactly)
* code.coding[PGHDCode] from ObservationNutrition
* value[x] only Quantity
* valueQuantity.system = $CodeSystemUCUM
* value[x] MS
