Profile: PGHDQuestionnaire
Parent: Questionnaire
Id: pghd-questionnaire
Title: "PGHD Questionnaire Profile"
Description: """
This profile defines the questionnaire.  
このプロファイルは質問票を定義します。
"""
* insert ProfileRules
* . ^short = "PGHD Questionnaire Profile (質問票 プロファイル)"
* url MS
* version MS
* name MS
* title MS
* status MS
* date MS
* description MS
* code MS
* item MS
* item.linkId MS
* experimental MS
* publisher MS
* purpose MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* contact MS
* copyright MS
* subjectType 0..1 MS
* subjectType = #Patient (exactly)
