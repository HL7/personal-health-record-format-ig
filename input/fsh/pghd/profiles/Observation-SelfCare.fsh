Profile: PGHDSelfCare
Parent: Observation
Id: pghd-selfcare
Title: "PGHD Self Care Profile"
Description: """
This profile defines how to represent SelfCare.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Self Care Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationSelfCare
