Profile: PGHDBodyMeasurement
Parent: Observation
Id: pghd-bodymeasurement
Title: "PGHD Body Measurement Profile"
Description: """
This profile defines how to represent body measurements.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Body Measurements Profile "

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationBodyMeasurementsValueSet (required)
* value[x] only Quantity
* value[x] MS
