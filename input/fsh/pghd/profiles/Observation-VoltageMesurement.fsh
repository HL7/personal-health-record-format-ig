Profile: PGHDVoltageMeasurement
Parent: Observation
Id: pghd-voltage-measurement
Title: "PGHD VoltageMeasurement Profile"
Description: """
This profile defines how to represent VoltageMeasurement.
"""
* insert ObservationRules(VoltageMeasurement)
* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationEcgLeadValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemEcgLeadCodes (exactly)
* value[x] only SampledData
* value[x] MS
