CodeSystem: HearingSensitivity
Id: hearing-sensitivity-codes
Title: "Hearing Sensitivity Codes"
Description: """
Code indicating the type of value of the hearing test result
"""
* ^status = #active
* ^experimental = false
* ^compositional = false
* ^content = #complete
* ^caseSensitive  = true

* #frequency "Frequency" "The frequency tested in the hearing test."
* #leftEarSensitivity "Left ear sensitivity" "The sensitivity of the left ear."
* #rightEarSensitivity "Right ear sensitivity" "The sensitivity of the right ear."
