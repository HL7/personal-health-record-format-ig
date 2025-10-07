Instance: QuestionnaireScoredAssessmentPHQ9
InstanceOf: PGHDQuestionnaire
Usage:  #definition
* id = "phq9"
* version = "1.0.0"
* name = "PHQ9"
* title = "PHQ-9 assesment"
* status = #active 
* subjectType = #Patient
* date = "2024-11-01"
* description = "PHQ-9 Scored Assessment"
* code = $CodeSystemLoinc#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* item[0]
  * linkId = "44250-9"
  * code = $CodeSystemLoinc#44250-9 "Little interest or pleasure in doing things in last 2 weeks"
  * text = "Little interest or pleasure in doing things"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[1]
  * linkId = "44255-8"
  * code = $CodeSystemLoinc#44255-8 "Feeling down, depressed, or hopeless in last 2 weeks"
  * text = "Feeling down, depressed, or hopeless"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[2]
  * linkId = "44259-0"
  * code = $CodeSystemLoinc#44259-0 "Trouble falling or staying asleep, or sleeping too much in last 2 weeks [Reported.PHQ]"
  * text = "Trouble falling or staying asleep, or sleeping too much"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[3]
  * linkId = "44254-1"
  * code = $CodeSystemLoinc#44254-1 "Feeling tired or having little energy in last 2 weeks [Reported.PHQ]"
  * text = "Feeling tired or having little energy"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[4]
  * linkId = "44251-7"
  * code = $CodeSystemLoinc#44251-7 "Poor appetite or overeating in last 2 weeks [Reported.PHQ]"
  * text = "Poor appetite or overeating"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[5]
  * linkId = "44258-2"
  * code = $CodeSystemLoinc#44258-2 "Feeling bad about yourself - or that you are a failure or have let yourself or your family down in last 2 weeks [Reported.PHQ]"
  * text = "Feeling bad about yourself-or that you are a failure or have let yourself or your family down"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[6]
  * linkId = "44252-5"
  * code = $CodeSystemLoinc#44252-5 "Trouble concentrating on things, such as reading the newspaper or watching television in last 2 weeks [Reported.PHQ]"
  * text = "Trouble concentrating on things, such as reading the newspaper or watching television"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[7]
  * linkId = "44253-3"
  * code = $CodeSystemLoinc#44253-3 "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual in last 2 weeks [Reported.PHQ]"
  * text = "Moving or speaking so slowly that other people could have noticed. Or the opposite – being so fidgety or restless that you were moving around a lot more than usual"
  * type = #choice
  * required = true
  * answerOption[0]
    * valueCoding = $CodeSystemLoinc#LA6568-5 "Not at all"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6569-3 "Several days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6570-1 "More than half the days"
  * answerOption[+]
    * valueCoding = $CodeSystemLoinc#LA6571-9 "Nearly every day"
* item[8]
  * linkId = "44260-8"
  * code = $CodeSystemLoinc#44260-8 "Thoughts that you would be better off dead, or of hurting yourself in some way in last 2 weeks [Reported.PHQ]"
  * text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
  * type = #choice
  * required = false
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
