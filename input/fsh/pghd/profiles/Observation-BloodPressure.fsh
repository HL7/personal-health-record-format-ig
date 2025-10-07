Profile: PGHDBloodPressure
Parent: bp
Id: pghd-bloodpressure
Title: "PGHD BloodPressure Profile"
Description: """
This profile defines how to represent blood pressure measurements.
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Blood Pressure Profile"

* code.coding[BPCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bloodPressure (exactly)

* component[SystolicBP].code.coding[SBPCode] from $ValueSetVitalSignsLoincCodes (required)
* component[SystolicBP].code.coding contains PGHDCode 0..1
* component[SystolicBP].code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* component[SystolicBP].code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* component[SystolicBP].code.coding[PGHDCode].code = #bloodPressureSystolic (exactly)
//
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].valueQuantity.system = $CodeSystemUCUM (exactly)
* component[SystolicBP].valueQuantity.code = #mm[Hg] (exactly)
//* component[SystolicBP].valueQuantity.code from UCUMVitalSignsUnits (required)

* component[DiastolicBP].code.coding[DBPCode] from $ValueSetVitalSignsLoincCodes (required)
* component[DiastolicBP].code.coding contains PGHDCode 0..1
* component[DiastolicBP].code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* component[DiastolicBP].code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* component[DiastolicBP].code.coding[PGHDCode].code = #bloodPressureDiastolic (exactly)
//
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].valueQuantity.system = $CodeSystemUCUM (exactly)
* component[DiastolicBP].valueQuantity.code = #mm[Hg] (exactly)
//
