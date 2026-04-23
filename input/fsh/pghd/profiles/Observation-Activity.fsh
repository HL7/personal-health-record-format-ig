Profile: PGHDActivity
Parent: Observation
Id: pghd-activity
Title: "PGHD Activity Profile"
Description: """
This profile defines how to represent Activity.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Activity Profile"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationActivity
* value[x] only Quantity
* value[x] MS
