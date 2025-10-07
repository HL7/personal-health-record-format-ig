Profile: PGHDHearingSensitivity
Parent: Observation
Id: pghd-hearing-sensitivity
Title: "PGHD HearingSensitivity Profile"
Description: """
This profile defines how to represent HearingSensitivity.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Hearing Sensitivity Profile"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode].code = #hearingSensitivity (exactly)
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains frequency 1..1 and leftEarSensitivity 0..1 and rightEarSensitivity 0..1
* component[frequency].code.coding 1..1
* component[frequency].code.coding.system = $CodeSystemHearingSensivityCodes
* component[frequency].code.coding.code = #frequency (exactly)
* component[frequency].valueQuantity.system = $CodeSystemUCUM
* component[frequency].valueQuantity.code = #Hz
* component[leftEarSensitivity].code.coding ^slicing.discriminator[0].type = #value
* component[leftEarSensitivity].code.coding ^slicing.discriminator[=].path = "system"
* component[leftEarSensitivity].code.coding ^slicing.discriminator[+].type = #value
* component[leftEarSensitivity].code.coding ^slicing.discriminator[=].path = "code"
* component[leftEarSensitivity].code.coding ^slicing.ordered = false
* component[leftEarSensitivity].code.coding ^slicing.rules = #open
* component[leftEarSensitivity].code.coding contains PGHDCode 1..1
* component[leftEarSensitivity].code.coding[PGHDCode].system = $CodeSystemHearingSensivityCodes
* component[leftEarSensitivity].code.coding[PGHDCode].code = #leftEarSensitivity (exactly)
* component[leftEarSensitivity].code.coding contains LOINCCode 0..1
* component[leftEarSensitivity].code.coding[LOINCCode].system = $CodeSystemLoinc
* component[leftEarSensitivity].valueQuantity.system = $CodeSystemUCUM
* component[leftEarSensitivity].valueQuantity.code = #dB
* component[rightEarSensitivity].code.coding ^slicing.discriminator[0].type = #value
* component[rightEarSensitivity].code.coding ^slicing.discriminator[=].path = "system"
* component[rightEarSensitivity].code.coding ^slicing.discriminator[+].type = #value
* component[rightEarSensitivity].code.coding ^slicing.discriminator[=].path = "code"
* component[rightEarSensitivity].code.coding ^slicing.ordered = false
* component[rightEarSensitivity].code.coding ^slicing.rules = #open
* component[rightEarSensitivity].code.coding contains PGHDCode 1..1
* component[rightEarSensitivity].code.coding[PGHDCode].system = $CodeSystemHearingSensivityCodes
* component[rightEarSensitivity].code.coding[PGHDCode].code = #rightEarSensitivity (exactly)
* component[rightEarSensitivity].code.coding contains LOINCCode 0..1
* component[rightEarSensitivity].code.coding[LOINCCode].system = $CodeSystemLoinc
* component[rightEarSensitivity].valueQuantity.system = $CodeSystemUCUM
* component[rightEarSensitivity].valueQuantity.code = #dB

