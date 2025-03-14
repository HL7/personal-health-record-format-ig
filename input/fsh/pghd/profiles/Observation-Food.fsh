Profile: PGHDFood
Parent: Observation
Id: pghd-food
Title: "PGHD Food Profile"
Description: """
This profile defines how to represent Food.
"""
* insert ObservationPGHDRules(Food)
* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].code = #food (exactly)
* hasMember only Reference(PGHDNutrition)
* value[x] only string
* value[x] MS
