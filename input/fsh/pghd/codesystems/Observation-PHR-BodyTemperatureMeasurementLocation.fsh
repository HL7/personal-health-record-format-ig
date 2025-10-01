CodeSystem: BodyTemperatureMeasurementLocation
Id: body-temperature-measurement-location-codes
Title: "Body Temperature Measurement Location Codes"
Description: """
Code indicating the location where the body temperature was measured  
体温を測定した場所を表すコード
"""
* insert CodeSystemRules

* #other "Other" "The temperature was taken at a location that is not otherwise in this list."
* #armpit "Armpit" "The temperature was taken in the armpit."
* #body "Body" "The temperature was taken on the body."
* #ear "Ear" "The temperature was taken in the ear."
* #finger "Finger" "The temperature was taken at the finger."
* #gastroIntestinal "Gastrointestinal" "The temperature was taken inside the gastrointestinal tract."
* #mouth "Mouth" "The temperature was taken in the mouth."
* #rectum "Rectum" "The temperature was taken in the rectum."
* #toe "Toe" "The temperature was taken at the toe."
* #earDrum "Ear drum" "The temperature was taken on the eardrum."
* #temporalArtery "Temporal artery" "The temperature was taken at the temporal artery."
* #forehead "Forehead" "The temperature was taken on the forehead."
* #vagina "Vagina" "The temperature was taken in the vagina."
* #wrist "Wrist" "The temperature was taken on the wrist."

* insert CodeDesignationRules(#other, その他)
* insert CodeDesignationRules(#armpit, 脇の下)
* insert CodeDesignationRules(#body, 体)
* insert CodeDesignationRules(#ear, 耳)
* insert CodeDesignationRules(#finger, 指)
* insert CodeDesignationRules(#gastroIntestinal, 胃腸)
* insert CodeDesignationRules(#mouth, 口)
* insert CodeDesignationRules(#rectum, 直腸)
* insert CodeDesignationRules(#toe, つま先)
* insert CodeDesignationRules(#earDrum, 鼓膜)
* insert CodeDesignationRules(#temporalArtery, 側頭動脈)
* insert CodeDesignationRules(#forehead, 額)
* insert CodeDesignationRules(#vagina, 膣)
* insert CodeDesignationRules(#wrist, 手首)
