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
  * text = "Little interest or pleasure in doing things"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[1]
  * linkId = "44255-8"
  * text = "Feeling down, depressed, or hopeless"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[2]
  * linkId = "44259-0"
  * text = "Trouble falling or staying asleep, or sleeping too much"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[3]
  * linkId = "44254-1"
  * text = "Feeling tired or having little energy"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[4]
  * linkId = "44251-7"
  * text = "Poor appetite or overeating"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[5]
  * linkId = "44258-2"
  * text = "Feeling bad about yourself-or that you are a failure or have let yourself or your family down"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[6]
  * linkId = "44252-5"
  * text = "Trouble concentrating on things, such as reading the newspaper or watching television"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[7]
  * linkId = "44253-3"
  * text = "Moving or speaking so slowly that other people could have noticed. Or the opposite – being so fidgety or restless that you were moving around a lot more than usual"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[8]
  * linkId = "44260-8"
  * text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
