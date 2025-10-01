CodeSystem: GAD7Risk
Id: gad7-risk-codes
Title: "GAD-7 Assesment Risk Codes"
Description: """
Code for GAD-7 Assesment Risk  
心配障害リスクを表すコード
"""
* insert CodeSystemRules

* #noneToMinimal "Minimal" ""
* #mild "Mild" ""
* #moderate "Moderate" ""
* #severe "Severe" ""

* insert CodeDesignationRules(#noneToMinimal, 最小)
* insert CodeDesignationRules(#mild, 軽度)
* insert CodeDesignationRules(#moderate, 中程度)
* insert CodeDesignationRules(#severe, 重度)
