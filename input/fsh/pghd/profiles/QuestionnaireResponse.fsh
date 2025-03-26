Profile: PGHDQuestionnaireResponse
Parent: QuestionnaireResponse
Id: pghd-questionnaire-response
Title: "PGHD QuestionnaireResponse Profile"
Description: """
This profile defines the QuestionnaireResponse.
"""

* ^experimental = false
* ^status = #active
* . ^short = "PGHD QuestionnaireResponse Profile"

// structure
// * language 1..
// * text 1..
* identifier MS
* questionnaire MS
* questionnaire only Canonical(PGHDQuestionnaire)
* status MS
* subject MS
* subject only Reference(PGHDPatient)
* authored MS
* source MS
* source only Reference(PGHDPatient)
* item MS
* item.linkId MS

// option
* basedOn MS
* basedOn only Reference(PGHDCarePlanSelfCare)
* partOf MS
* partOf only Reference(Observation)
* author MS
* author only Reference(PGHDPatient)

// code

// don't use
* identifier.id 0..0
* identifier.extension 0..0
* identifier.use 0..0
* identifier.type 0..0
* identifier.period 0..0
* identifier.assigner 0..0
* encounter 0..0
* item.id 0..0
* item.extension 0..0
* item.modifierExtension 0..0
* item.answer.id 0..0
* item.answer.extension 0..0
* item.answer.modifierExtension 0..0
