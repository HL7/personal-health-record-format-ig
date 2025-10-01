CodeSystem: HearingSensitivity
Id: hearing-sensitivity-codes
Title: "Hearing Sensitivity Codes"
Description: """
Code indicating the type of value of the hearing test result  
聴覚検査結果値の種別を表すコード
"""
* insert CodeSystemRules

* #frequency "Frequency" "The frequency tested in the hearing test."
* #leftEarSensitivity "Left ear sensitivity" "The sensitivity of the left ear."
* #rightEarSensitivity "Right ear sensitivity" "The sensitivity of the right ear."

* insert CodeDesignationRules(#frequency, 周波数)
* insert CodeDesignationRules(#leftEarSensitivity, 左耳聴力)
* insert CodeDesignationRules(#rightEarSensitivity, 右耳聴力)
