Profile: PGHDPregnancyStatus
Parent: Observation
Id: pghd-pregnancy-status
Title: "PGHD Pregnancy Status Profile"
Description: """
This profile defines how to represent Pregnancy status.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Pregnancy Status Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].code = #pregnancy (exactly)
* code.coding[LOINCCode].code = #82810-3 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept from $ValueSetpregnancyStatusIPS
* valueCodeableConcept.coding.system = $CodeSystemLoinc (exactly)
