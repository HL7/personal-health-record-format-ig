Profile: PGHDMobility
Parent: Observation
Id: pghd-mobility
Title: "PGHD Mobility Profile"
Description: """
This profile defines how to represent Mobility.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Mobility Profile"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMobility
* value[x] only Quantity
