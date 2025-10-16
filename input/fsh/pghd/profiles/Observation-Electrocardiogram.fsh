Profile: PGHDElectrocardiogram
Parent: Observation
Id: pghd-electrocardiogram
Title: "PGHD Electrocardiogram Profile"
Description: """
This profile defines how to represent Electrocardiogram.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Electrocardiogram Profile"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode].code = #electrocardiogram (exactly)
* hasMember only Reference(PGHDVoltageMeasurement)
* component ^slicing.discriminator[0].path = "code.coding.code"
* component ^slicing.discriminator[0].type = #value
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains classification 0..1 and symptomsStatus 0..1
* component[classification].code.coding 1..1
* component[classification].code.coding.system = $CodeSystemEcgCodes (exactly)
* component[classification].code.coding.code = #classification (exactly)
* component[classification].valueCodeableConcept.coding from ObservationEcgClassificationValueSet (required)
* component[symptomsStatus].code.coding 1..1
* component[symptomsStatus].code.coding.system = $CodeSystemEcgCodes (exactly)
* component[symptomsStatus].code.coding.code = #symptomsStatus (exactly)
* component[symptomsStatus].valueCodeableConcept.coding from ObservationEcgSymptomsStatusValueSet (required)
* component[symptomsStatus].valueCodeableConcept.coding.system = $CodeSystemEcgSymptomsStatusCodes (exactly)
