Instance: QuestionnaireResponseScoredAssessmentPHQ9Example
InstanceOf: PGHDQuestionnaireResponse
Description: "PHQ-9 Scored Assessment Example"
* id = "phq9"
* questionnaire = Canonical(QuestionnaireScoredAssessmentPHQ9)
* status = #completed
* subject = Reference(PGHDPatientExample)
* authored = "2024-12-01T12:00:00+09:00"
* source = Reference(PGHDPatientExample)
* item[0]
  * linkId = "44250-9"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[1]
  * linkId = "44255-8"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[2]
  * linkId = "44259-0"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[3]
  * linkId = "44254-1"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[4]
  * linkId = "44251-7"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[5]
  * linkId = "44258-2"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[6]
  * linkId = "44252-5"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[7]
  * linkId = "44253-3"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[8]
  * linkId = "44260-8"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
