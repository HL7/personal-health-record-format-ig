Profile: PGHDBodyMeasurement
Parent: Observation
Id: pghd-bodymeasurement
Title: "PGHD Body Measurement Profile"
Description: """
This profile defines how to represent body measurements.
"""
* insert ObservationPGHDRules(BodyMeasurements)
* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationBodyMesurementsValueSet (required)
* value[x] only Quantity
* value[x] MS
