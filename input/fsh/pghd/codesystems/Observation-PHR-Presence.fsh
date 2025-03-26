CodeSystem: SymptomPresence
Id: presence-codes
Title: "Symptom Presence Codes"
Description: """
Code for presence or absence of symptoms
"""
* ^status = #active
* ^experimental = false
* ^compositional = false
* ^content = #complete
* ^caseSensitive  = true

* #present "Present" "The symptom is present."
* #notPresent "Not present" "The symptom is not present."
