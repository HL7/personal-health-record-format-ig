Profile: PGHDQuestionnaireResponse
Parent: QuestionnaireResponse
Id: pghd-questionnaire-response
Title: "PGHD QuestionnaireResponse Profile"
Description: """
This profile defines the QuestionnaireResponse.
"""

* insert ProfileRules
* . ^short = "PGHD QuestionnaireResponse Profile"

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
* basedOn MS
* basedOn only Reference(PGHDCarePlanSelfCare)
* partOf MS
* partOf only Reference(Observation)
* author MS
* author only Reference(PGHDPatient)
