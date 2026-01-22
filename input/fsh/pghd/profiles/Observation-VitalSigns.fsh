Profile: PGHDVitalSigns
Parent: Observation
Id: pghd-vitalsigns
Title: "PGHD Vital Signs Profile"
Description: """
This profile defines how to represent vital signs measurements.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Vital Sign Profile"

* category[ObservationCategory].coding.code = #vital-signs (exactly)
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* value[x] MS
