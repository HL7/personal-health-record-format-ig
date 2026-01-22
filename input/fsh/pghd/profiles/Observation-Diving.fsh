Profile: PGHDDiving
Parent: Observation
Id: pghd-diving
Title: "PGHD Diving Profile"
Description: """
This profile defines how to represent Diving.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD CDiving Profile"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationDiving
* value[x] only Quantity
* value[x] MS
