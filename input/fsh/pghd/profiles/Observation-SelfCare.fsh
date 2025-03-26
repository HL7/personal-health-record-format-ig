Profile: PGHDSelfCare
Parent: Observation
Id: pghd-selfcare
Title: "PGHD SelfCare Profile"
Description: """
This profile defines how to represent SelfCare.
"""
* insert ObservationPGHDRules(SelfCare)
* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationSelfCare
