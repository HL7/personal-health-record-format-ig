CodeSystem: BodyPosture
Id: body-posture-codes
Title: "Body Posture Codes"
Description: """
Code for posture
"""
* insert CodeSystemRules
* ^hierarchyMeaning = #is-a

* #sitting "Sitting"
* #standing "Standing"
* #lyingDown "Lying down"
* #lyingDown #supine "Supine"
* #lyingDown #prone "Prone"
* #lyingDown #recumbent "Recumbent"
* #lyingDown #semiRecumbent "Semi recumbent"
