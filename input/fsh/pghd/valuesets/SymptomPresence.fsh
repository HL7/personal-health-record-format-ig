ValueSet: SymptomPresenceValueSet
Id: symptom-presence
Title: "Symptom Presence"
Description: """
Code for presence or absence of symptoms
"""
* ^status = #active
* ^experimental = false

* include codes from system SymptomPresence