Profile: PGHDBodyTemperature
Parent: bodytemp
Id: pghd-bodytemperature
Title: "PGHD BodyTemperature Profile"
Description: """
This profile defines how to represent body temperature measurements. 
"""
* insert ProfileRules
* insert VitalSignsRules
* . ^short = "PGHD Body Temperature Profile"

* code.coding[BodyTempCode] from $ValueSetVitalSignsLoincCodes (required)
* code.coding contains PGHDCode 0..1
* code.coding[PGHDCode] from ObservationVitalsignsValueSet (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bodyTemperature (exactly)
* valueQuantity.unit = "Cel" (exactly)
* bodySite.coding ^slicing.discriminator[0].type = #value
* bodySite.coding ^slicing.discriminator[=].path = "system"
* bodySite.coding ^slicing.ordered = false
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains BodyTemperatureMeasurementLocation 0..1 and LOINCCode 0..1
* bodySite.coding[BodyTemperatureMeasurementLocation] from BodyTemperatureMeasurementLocationValueset
* bodySite.coding[LOINCCode].system = $CodeSystemLoinc (exactly)
