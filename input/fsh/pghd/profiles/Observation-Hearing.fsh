Profile: PGHDHearing
Parent: Observation
Id: pghd-hearing
Title: "PGHD Hearing Profile"
Description: """
This profile defines how to represent Hearing.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Hearing Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationHearing
* value[x] only Quantity
* value[x] MS
