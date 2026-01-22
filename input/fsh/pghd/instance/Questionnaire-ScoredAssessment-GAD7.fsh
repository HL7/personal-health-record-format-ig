Instance: QuestionnaireScoredAssessmentGAD7
InstanceOf: PGHDQuestionnaire
Usage:  #definition
* id = "gad7"
* version = "1.0.0"
* name = "GAD7"
* title = "GAD-7 assesment"
* status = #active 
* subjectType = #Patient
* date = "2024-11-01"
* description = "GAD-7 Scored Assessment"
* code = $CodeSystemLoinc#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* item[0]
  * linkId = "69725-0"
  * code = $CodeSystemLoinc#69725-0 "Feeling nervous, anxious or on edge in last 2 weeks"
  * text = "Feeling nervous, anxious or on edge"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[1]
  * linkId = "68509-9"
  * code = $CodeSystemLoinc#68509-9 "Not able to stop or control worrying in the last 2 weeks"
  * text = "Over the past 2 weeks have you not been able to stop or control worrying"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[2]
  * linkId = "69733-4"
  * code = $CodeSystemLoinc#69733-4 "Worrying too much about different things in last 2 weeks [Reported.PHQ]"
  * text = "Worrying too much about different things"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[3]
  * linkId = "69734-2"
  * code = $CodeSystemLoinc#69734-2 "Trouble relaxing in last 2 weeks [Reported.PHQ]"
  * text = "Trouble relaxing"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[4]
  * linkId = "69735-9"
  * code = $CodeSystemLoinc#69735-9 "Being so restless that it is hard to sit still in last 2 weeks [Reported.PHQ]"
  * text = "Being so restless that it is hard to sit still"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[5]
  * linkId = "69689-8"
  * code = $CodeSystemLoinc#69689-8 "Becoming easily annoyed or irritable in last 4 weeks [Reported.PHQ]"
  * text = "Becoming easily annoyed or irritable."
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
* item[6]
  * linkId = "69736-7"
  * code = $CodeSystemLoinc#69736-7 "Feeling afraid as if something awful might happen in last 2 weeks [Reported.PHQ]"
  * text = "Feeling afraid as if something awful might happen"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
  * answerOption[+]
    * valueCoding = $CodeSystemDataAbsentReason#asked-declined "Asked But Declined"
