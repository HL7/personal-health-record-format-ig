Profile: PGHDSnoreIndex
Parent: Observation
Id: pghd-snore-index
Title: "PGHD SnoreIndex Profile"
Description: """
This profile defines how to represent SnoreIndex.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Snore Index Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #snoreIndex (exactly)
* effective[x] only Period
* value[x] only Quantity
* valueQuantity.system = $CodeSystemUCUM
* valueQuantity.code = #/h
* hasMember only Reference(PGHDSnoreEvent)
* valueQuantity insert QuantityRules
