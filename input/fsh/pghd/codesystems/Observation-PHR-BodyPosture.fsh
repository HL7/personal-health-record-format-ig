CodeSystem: BodyPosture
Id: body-posture-codes
Title: "Body Posture Codes"
Description: """
Code for posture  
姿勢を表すコード
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

* insert CodeDesignationRules(#sitting, 座位)
* insert CodeDesignationRules(#standing, 立位)
* insert CodeDesignationRules(#lyingDown, 臥位)
* insert CodeDesignationRules(#lyingDown #supine, 仰臥位)
* insert CodeDesignationRules(#lyingDown #prone, 腹臥位)
* insert CodeDesignationRules(#lyingDown #recumbent, 側臥位)
* insert CodeDesignationRules(#lyingDown #semiRecumbent, 半側臥位)
