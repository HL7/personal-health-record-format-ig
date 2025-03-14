CodeSystem: BodyPosture
Id: body-posture-codes
Title: "Body Posture Codes"
Description: """
Code for posture
"""
* ^status = #active
* ^experimental = false
* ^compositional = false
* ^content = #complete
* ^caseSensitive  = true
* ^hierarchyMeaning = #is-a

* #sitting "Sitting"
* #standing "Standing"
* #lyingDown "Lying down"
* #lyingDown #supine "Supine"
* #lyingDown #prone "Prone"
* #lyingDown #recumbent "Recumbent"
* #lyingDown #semiRecumbent "Semi recumbent"
