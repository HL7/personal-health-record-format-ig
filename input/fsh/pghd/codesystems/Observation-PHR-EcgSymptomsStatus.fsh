CodeSystem: EcgSymptomsStatus
Id: ecg-symptoms-status-codes
Title: "ECG Symptoms Status Codes"
Description: """
Code indicating whether or not the user's symptoms are input during ECG waveform acquisition  
心電図波形取得時のユーザの症状入力の有無を表すコード
"""
* insert CodeSystemRules

* #none "None" "The user didn’t enter a symptom when they recorded the ECG."
* #present "Present" "The user added a symptom when they recorded the ECG."
* #notSet "Not set" "A sample that doesn’t have an assigned classification."

* insert CodeDesignationRules(#none, 症状入力なし)
* insert CodeDesignationRules(#present, 症状入力あり)
* insert CodeDesignationRules(#notSet, 未設定)
