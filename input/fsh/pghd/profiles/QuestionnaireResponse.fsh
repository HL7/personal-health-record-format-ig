Profile: PGHDQuestionnaireResponse
Parent: QuestionnaireResponse
Id: pghd-questionnaire-response
Title: "PGHD QuestionnaireResponse Profile"
Description: """
This profile defines the QuestionnaireResponse.  
このプロファイルは質問票回答を定義します。
"""
* insert ProfileRules
* . ^short = "PGHD QuestionnaireResponse Profile (質問票回答 プロファイル)"

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
