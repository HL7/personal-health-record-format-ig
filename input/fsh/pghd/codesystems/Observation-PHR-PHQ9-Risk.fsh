CodeSystem: PHQ9Risk
Id: phq9-risk-codes
Title: "PHQ-9 Assesment Risk Codes"
Description: """
Code for PHQ-9 Assesment Risk  
うつ病リスクを表すコード
"""
* insert CodeSystemRules

* #noneToMinimal "Minimal" ""
* #mild "Mild" ""
* #moderate "Moderate" ""
* #moderatelySevere "Moderately Severe" ""
* #severe "Severe" ""

* insert CodeDesignationRules(#noneToMinimal, 最小)
* insert CodeDesignationRules(#mild, 軽度)
* insert CodeDesignationRules(#moderate, 中程度)
* insert CodeDesignationRules(#moderatelySevere, 中程度から重度)
* insert CodeDesignationRules(#severe, 重度)
