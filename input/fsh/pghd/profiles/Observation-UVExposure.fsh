Profile: PGHDUVExposure
Parent: Observation
Id: pghd-uvexposure
Title: "PGHD UVExposure Profile"
Description: """
This profile defines how to represent UVExposure.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD UVExposure Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationUVExposure
* value[x] only Quantity
