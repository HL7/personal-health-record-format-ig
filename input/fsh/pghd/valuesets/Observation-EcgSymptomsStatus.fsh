ValueSet: ObservationEcgSymptomsStatusValueSet
Id: observation-ecg-symptoms-status-codes
Title: "ECG Symptoms Status Codes"
Description: """
Code indicating whether or not the user's symptoms are input during ECG waveform acquisition
"""
* ^status = #active
* ^experimental = false
* include codes from system EcgSymptomsStatus