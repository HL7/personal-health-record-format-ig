ValueSet: ObservationEcgLeadValueSet
Id: observation-ecg-lead-codes
Title: "ECG Lead Codes"
Description: """
Codes for ECG induction
"""
* ^status = #active
* ^experimental = false
* include codes from system EcgLead