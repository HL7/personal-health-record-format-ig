Profile: PGHDUVExposure
Parent: Observation
Id: pghd-uvexposure
Title: "PGHD UVExposure Profile"
Description: """
This profile defines how to represent UVExposure.
"""
* insert ObservationPGHDRules(UVExposure)
* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationUVExposure
* value[x] only Quantity
