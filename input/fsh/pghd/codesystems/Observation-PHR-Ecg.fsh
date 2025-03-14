CodeSystem: Ecg
Id: ecg-codes
Title: "ECG Classification Codes"
Description: """
Codes for ECG and related items
"""
* ^status = #active
* ^experimental = false
* ^compositional = false
* ^content = #complete
* ^caseSensitive  = true

* #classification "Classification" "Classifications returned by Apple Watch’s ECG algorithm."
* #symptomsStatus "Symptoms status" "A value that indicates whether the user entered a symptom when they recorded the ECG."
