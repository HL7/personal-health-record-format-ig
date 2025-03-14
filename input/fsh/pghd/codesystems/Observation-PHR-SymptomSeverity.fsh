CodeSystem: SymptomSeverity
Id: symptom-severity-codes
Title: "Symptom Severity Codes"
Description: """
Code for degree of symptoms
"""
* ^status = #active
* ^experimental = false
* ^compositional = false
* ^content = #complete
* ^caseSensitive  = true

* #severe "Severe" "The symptom is severe."
* #mild "Mild" "The symptom is mild."
* #moderate "Moderate" "The symptom is moderate."
* #unspecified "Unspecified" "The symptom’s severity is not specified."
* #notPresent "Not present" "The symptom is not present."
