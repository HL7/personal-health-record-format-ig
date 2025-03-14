ValueSet: ObservationSleep
Id: observation-sleep-codes
Title: "Observation Sleep Codes"
Description: """
Codes representing sleep-related measurement items
"""
* ^status = #active
* ^experimental = false

* ObservationPGHD#sleepAnalysis
* ObservationPGHD#sleepAHI
* ObservationPGHD#sleepArousalIndex
