Profile: PGHDMindfulness
Parent: Observation
Id: pghd-mindfulness
Title: "PGHD Mindfulness Profile"
Description: """
This profile defines how to represent Mindfulness.
"""
* insert ObservationPGHDRules(Mindfulness)
* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMindfulness (required)
