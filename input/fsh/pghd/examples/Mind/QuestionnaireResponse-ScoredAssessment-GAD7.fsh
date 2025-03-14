Instance: QuestionnaireResponseScoredAssessmentGAD7Example
InstanceOf: PGHDQuestionnaireResponse
Description: "GAD-7 Scored Assessment Example"
* id = "gad7"
* questionnaire = Canonical(QuestionnaireScoredAssessmentGAD7)
* status = #completed
* subject = Reference(PGHDPatientExample)
* authored = "2024-12-01T12:00:00+09:00"
* source = Reference(PGHDPatientExample)
* item[0]
  * linkId = "69725-0"
  * text = "Feeling nervous, anxious or on edge"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[1]
  * linkId = "68509-9"
  * text = "Over the past 2 weeks have you not been able to stop or control worrying"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[2]
  * linkId = "69733-4"
  * text = "Worrying too much about different things"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[3]
  * linkId = "69734-2"
  * text = "Trouble relaxing"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[4]
  * linkId = "69735-9"
  * text = "Being so restless that it is hard to sit still"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
* item[5]
  * linkId = "69689-8"
  * text = "Becoming easily annoyed or irritable."
  * answer
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
* item[6]
  * linkId = "69736-7"
  * text = "Feeling afraid as if something awful might happen"
  * answer
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
