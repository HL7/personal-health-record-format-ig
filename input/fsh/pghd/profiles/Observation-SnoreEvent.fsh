Profile: PGHDSnoreEvent
Parent: Observation
Id: pghd-snore-event
Title: "PGHD SnoreEvent Profile"
Description: """
This profile defines how to represent SnoreEvent.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Snore Event Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #snoreEvent (exactly)

* effective[x] only Period

* value[x] only boolean

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component contains snoreIntensity 0..1
* component[snoreIntensity].code.coding 1..1
* component[snoreIntensity].code.coding.system = $CodeSystemSnoreEventItem (exactly)
* component[snoreIntensity].code.coding.code = #snoreIntensity (exactly)
* component[snoreIntensity].value[x] only Quantity
* component[snoreIntensity].valueQuantity.system = $CodeSystemUCUM
* component[snoreIntensity].valueQuantity.code = #dB

* component[snoreIntensity] MS
* component[snoreIntensity].code insert CodeableConceptRules
* component[snoreIntensity].valueQuantity insert QuantityRules

* component contains bodyPosture 0..1
* component[bodyPosture].code.coding 1..1
* component[bodyPosture].code.coding.system = $CodeSystemSnoreEventItem (exactly)
* component[bodyPosture].code.coding.code = #bodyPosture (exactly)
* component[bodyPosture].value[x] only CodeableConcept
* component[bodyPosture].valueCodeableConcept.coding.system = $CodeSystemBodyPasture

* component[bodyPosture] MS
* component[bodyPosture].code insert CodeableConceptRules
* component[bodyPosture].valueCodeableConcept insert CodeableConceptRules
