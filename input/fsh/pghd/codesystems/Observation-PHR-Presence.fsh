CodeSystem: SymptomPresence
Id: presence-codes
Title: "Symptom Presence Codes"
Description: """
Code for presence or absence of symptoms  
症状の有無を表すコード
"""
* insert CodeSystemRules

* #present "Present" "The symptom is present."
* #notPresent "Not present" "The symptom is not present."

* insert CodeDesignationRules(#present, 症状入力あり)
* insert CodeDesignationRules(#notPresent, 症状入力なし)
