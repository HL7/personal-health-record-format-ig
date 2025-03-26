Profile: PGHDRespiratoryRate
Parent: resprate
Id: pghd-respiratoryrate
Title: "PGHD RespiratoryRate Profile"
Description: """
This profile defines how to represent respiratory rate measurements. 
"""
* ^experimental = false
* ^status = #active
* . ^short = "PGHD RespiratoryRate Profile"
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #respiratoryRate (exactly)
* code.coding[RespRateCode] from $ValueSetVitalSignsLoincCodes (required)
* valueQuantity.unit = "/min" (exactly)
* subject only Reference(PGHDPatient)