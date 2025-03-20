Profile: PGHDHeartRate
Parent: heartrate
Id: pghd-heartrate
Title: "PGHD HeartRate Profile"
Description: """
This profile defines how to represent heart rate measurements.
"""
* ^experimental = false
* ^status = #active
* . ^short = "PGHD HeartRate Profile"
* code.coding[HeartRateCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #heartRate (exactly)
* valueQuantity.unit = "/min" (exactly)
* subject only Reference(PGHDPatient)