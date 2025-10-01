CodeSystem: SymptomSeverity
Id: symptom-severity-codes
Title: "Symptom Severity Codes"
Description: """
Code for degree of symptoms  
症状の程度を表すコード
"""
* insert CodeSystemRules

* #severe "Severe" "The symptom is severe."
* #mild "Mild" "The symptom is mild."
* #moderate "Moderate" "The symptom is moderate."
* #unspecified "Unspecified" "The symptom’s severity is not specified."
* #notPresent "Not present" "The symptom is not present."

* insert CodeDesignationRules(#severe, 重度)
* insert CodeDesignationRules(#mild, 中程度)
* insert CodeDesignationRules(#moderate, 軽度)
* insert CodeDesignationRules(#unspecified, あり)
* insert CodeDesignationRules(#notPresent, なし)
