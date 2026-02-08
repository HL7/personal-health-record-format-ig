Profile: PGHDMindfulness
Parent: Observation
Id: pghd-mindfulness
Title: "PGHD Mindfulness Profile"
Description: """
This profile defines how to represent Mindfulness.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Mindfulness Profile"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMindfulness (required)
