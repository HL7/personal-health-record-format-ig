Profile: PGHDMobility
Parent: Observation
Id: pghd-mobility
Title: "PGHD Mobility Profile"
Description: """
This profile defines how to represent Mobility.
"""
* insert ObservationPGHDRules(Mobility)
* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMobility
* value[x] only Quantity
