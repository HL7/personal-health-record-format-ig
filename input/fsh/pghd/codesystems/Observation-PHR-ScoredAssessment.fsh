CodeSystem: ScoredAssessment
Id: scored-assessment-codes
Title: "Scored Assessment Codes"
Description: """
Code for scored assessment
メンタルヘルス評価のを表すコード
"""
* insert CodeSystemRules

* #gad7Risk "GAD-7 Assesment Risk" ""
* #phq9Risk "PHQ-9 Assesment Risk" ""

* insert CodeDesignationRules(#gad7Risk, 不安障害リスク評価)
* insert CodeDesignationRules(#phq9Risk, うつ病リスク評価)
