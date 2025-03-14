Profile: PGHDQuestionnaire
Parent: Questionnaire
Id: pghd-questionnaire
Title: "PGHD Questionnaire Profile"
Description: """
This profile defines the questionnaire.
"""

* ^experimental = false
* ^status = #active
* . ^short = "PGHD Questionnaire Profile"

// structure
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

// option
// * language MS
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
