Profile: PGHDCardiacFunction
Parent: PGHDVitalSigns
Id: pghd-cardiac-function
Title: "PGHD Cardiac Function Profile"
Description: """
This profile defines how to represent Cardiac Function.
"""
* . ^short = "PGHD Cardiac Function Profile"

* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
