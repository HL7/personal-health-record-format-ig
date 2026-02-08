CodeSystem: EcgSymptomsStatus
Id: ecg-symptoms-status-codes
Title: "ECG Symptoms Status Codes"
Description: """
Code indicating whether or not the user's symptoms are input during ECG waveform acquisition
"""
* insert CodeSystemRules

* #none "None" "The user didn’t enter a symptom when they recorded the ECG."
* #present "Present" "The user added a symptom when they recorded the ECG."
* #notSet "Not set" "A sample that doesn’t have an assigned classification."
