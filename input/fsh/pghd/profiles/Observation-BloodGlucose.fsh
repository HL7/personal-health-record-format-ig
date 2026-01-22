Profile: PGHDBloodGlucose
Parent: Observation
Id: pghd-blood-glucose
Title: "PGHD BloodGlucose Profile"
Description: """
This profile defines how to represent blood glucose.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Blood Glucose Profile"

* category[ObservationCategory].coding.code = #vital-signs (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #bloodGlucose (exactly)
* value[x] only Quantity
* valueQuantity.unit = "mmol/L" (exactly)
* valueQuantity.system = $CodeSystemUCUM (exactly)
* valueQuantity.code = #mmol/L (exactly)
* valueQuantity.extension contains http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation named alternativeQuantity 0..1
* valueQuantity.extension[alternativeQuantity].valueQuantity.unit = "mg/dl" (exactly)
* valueQuantity.extension[alternativeQuantity].valueQuantity.system = $CodeSystemUCUM (exactly)
* valueQuantity.extension[alternativeQuantity].valueQuantity.code = #mg/dl (exactly)

* value[x] MS
* valueQuantity insert QuantityRules
* valueQuantity.extension[alternativeQuantity] MS
* valueQuantity.extension[alternativeQuantity].valueQuantity insert QuantityRules
* issued MS
* performer MS

* valueQuantity.value 1..1
* valueQuantity.unit 1..1
* valueQuantity.system 1..1
* valueQuantity.code 1..1
* issued 1..1
