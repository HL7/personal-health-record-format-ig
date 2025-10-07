Profile: PGHDObservationStateOfMind
Parent: Observation
Id: pghd-observation-state-of-mind
Title: "PGHD State of Mind Profile"
Description: """
This profile defines the implementation of the State of Mind.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD State of Mind Profile"

* category[ObservationCategory].coding.code = #survey (exactly)
* code.coding[PGHDCode] from ObservationMind
* code.coding[PGHDCode].code = #stateOfMind (exactly)

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component contains kind 1..1 MS
* component[kind].code insert CodeableConceptRules
* component[kind].code from ObservationStateOfMind
* component[kind].code.coding 1..1
* component[kind].code.coding insert CodingRules
* component[kind].code.coding.system = $CodeSystemStateOfMindCodes (exactly)
* component[kind].code.coding.code =  #kind (exactly)

* component[kind].value[x] only CodeableConcept
* component[kind].valueCodeableConcept 1..1
* component[kind].valueCodeableConcept insert CodeableConceptRules
* component[kind].valueCodeableConcept from ObservationStateOfMindKind (required)
* component[kind].valueCodeableConcept.coding 1..1
* component[kind].valueCodeableConcept.coding insert CodingRules
* component[kind].valueCodeableConcept.coding.system = $CodeSystemStateOfMindKindCodes

* component contains valence 1..1 MS
* component[valence].code insert CodeableConceptRules
* component[valence].code from ObservationStateOfMind (required)
* component[valence].code.coding 1..1
* component[valence].code.coding insert CodingRules
* component[valence].code.coding.system = $CodeSystemStateOfMindCodes (exactly)
* component[valence].code.coding.code =  #valence (exactly)

* component[valence].value[x] only Quantity
* component[valence].valueQuantity 1..1

* component contains valenceClassification 1..1 MS
* component[valenceClassification].code insert CodeableConceptRules
* component[valenceClassification].code from ObservationStateOfMind (required)
* component[valenceClassification].code.coding 1..1
* component[valenceClassification].code.coding insert CodingRules
* component[valenceClassification].code.coding.system = $CodeSystemStateOfMindCodes (exactly)
* component[valenceClassification].code.coding.code =  #valenceClassification (exactly)

* component[valenceClassification].value[x] only CodeableConcept
* component[valenceClassification].valueCodeableConcept 1..1
* component[valenceClassification].valueCodeableConcept insert CodeableConceptRules
* component[valenceClassification].valueCodeableConcept from ObservationStateOfMindValence (required)
* component[valenceClassification].valueCodeableConcept.coding 1..1
* component[valenceClassification].valueCodeableConcept.coding insert CodingRules
* component[valenceClassification].valueCodeableConcept.coding.system = $CodeSystemStateOfMindValenceCodes (exactly)

* component contains labels 1..1 MS
* component[labels].code insert CodeableConceptRules
* component[labels].code from ObservationStateOfMind (required)
* component[labels].code.coding 1..1
* component[labels].code.coding insert CodingRules
* component[labels].code.coding.system = $CodeSystemStateOfMindCodes (exactly)
* component[labels].code.coding.code =  #labels (exactly)

* component[labels].value[x] only CodeableConcept
* component[labels].valueCodeableConcept 0..1
* component[labels].valueCodeableConcept insert CodeableConceptRules
* component[labels].valueCodeableConcept from ObservationStateOfMindLabel (required)
* component[labels].valueCodeableConcept.coding 1..*
* component[labels].valueCodeableConcept.coding insert CodingRules
* component[labels].valueCodeableConcept.coding.system = $CodeSystemStateOfMindLabelCodes

* component contains associations 1..1 MS
* component[associations].code insert CodeableConceptRules
* component[associations].code from ObservationStateOfMind (required)
* component[associations].code.coding 1..1
* component[associations].code.coding insert CodingRules
* component[associations].code.coding.system = $CodeSystemStateOfMindCodes (exactly)
* component[associations].code.coding.code =  #associations (exactly)

* component[associations].value[x] only CodeableConcept
* component[associations].valueCodeableConcept 0..1
* component[associations].valueCodeableConcept insert CodeableConceptRules
* component[associations].valueCodeableConcept from ObservationStateOfMindAssociation (required)
* component[associations].valueCodeableConcept.coding 1..*
* component[associations].valueCodeableConcept.coding insert CodingRules
* component[associations].valueCodeableConcept.coding.system = $CodeSystemStateOfMindAssociationCodes (exactly)
