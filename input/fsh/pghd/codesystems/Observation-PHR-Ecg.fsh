CodeSystem: Ecg
Id: ecg-codes
Title: "ECG Classification Codes"
Description: """
Codes for ECG and related items    
心電図と関連する項目を表すコード
"""
* insert CodeSystemRules

* #classification "Classification" "Classifications returned by Apple Watch’s ECG algorithm."
* #symptomsStatus "Symptoms status" "A value that indicates whether the user entered a symptom when they recorded the ECG."

* insert CodeDesignationRules(#classification, 判定)
* insert CodeDesignationRules(#symptomsStatus, 症状)
