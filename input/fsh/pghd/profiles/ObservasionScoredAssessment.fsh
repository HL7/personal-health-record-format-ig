Profile: PGHDObservationScoredAssessment
Parent: Observation
Id: pghd-observation-scored-assessment
Title: "PGHD Scored Assessment Profile"
Description: """
This profile defines the implementation of the Scored Assessment.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Scored Assessment Profile"

* category[ObservationCategory].coding.code = #survey (exactly)
* code.coding[PGHDCode] from ObservationMind

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component contains score 1..1 MS
* component[score].code insert CodeableConceptRules
* component[score].code from ObservationScoredAssessmentScore (required)
* component[score].code.coding 1..1
* component[score].code.coding insert CodingRules
* component[score].code.coding.system = $CodeSystemLoinc (exactly)

* component[score].value[x] only integer
* component[score].valueInteger 1..1 MS

* component contains gad7-risk 0..1 MS
* component[gad7-risk].code insert CodeableConceptRules
* component[gad7-risk].code from ObservationScoredAssessment (required)
* component[gad7-risk].code.coding 1..1
* component[gad7-risk].code.coding insert CodingRules
* component[gad7-risk].code.coding.system = $CodeSystemScoredAssessmentCodes (exactly)
* component[gad7-risk].code.coding.code =  #gad7Risk (exactly)

* component[gad7-risk].value[x] only CodeableConcept
* component[gad7-risk].valueCodeableConcept 1..1
* component[gad7-risk].valueCodeableConcept insert CodeableConceptRules
* component[gad7-risk].valueCodeableConcept from ObservationGAD7Risk (required)
* component[gad7-risk].valueCodeableConcept.coding 1..1
* component[gad7-risk].valueCodeableConcept.coding insert CodingRules
* component[gad7-risk].valueCodeableConcept.coding.system = $CodeSystemGAD7RiskCodes (exactly)

* component contains phq9-risk 0..1 MS
* component[phq9-risk].code insert CodeableConceptRules
* component[phq9-risk].code from ObservationScoredAssessment (required)
* component[phq9-risk].code.coding 1..1
* component[phq9-risk].code.coding insert CodingRules
* component[phq9-risk].code.coding.system = $CodeSystemScoredAssessmentCodes (exactly)
* component[phq9-risk].code.coding.code =  #phq9Risk (exactly)

* component[phq9-risk].value[x] only CodeableConcept
* component[phq9-risk].valueCodeableConcept 1..1
* component[phq9-risk].valueCodeableConcept insert CodeableConceptRules
* component[phq9-risk].valueCodeableConcept from ObservationPHQ9Risk (required)
* component[phq9-risk].valueCodeableConcept.coding 1..1
* component[phq9-risk].valueCodeableConcept.coding insert CodingRules
* component[phq9-risk].valueCodeableConcept.coding.system = $CodeSystemPHQ9RiskCodes
