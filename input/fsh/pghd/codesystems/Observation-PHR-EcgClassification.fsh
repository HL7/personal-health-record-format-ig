CodeSystem: EcgClassification
Id: ecg-classification-codes
Title: "ECG Classification Codes"
Description: """
Codes for classification of ECG waveforms  
心電図波形の分類を表すコード
"""
* insert CodeSystemRules

* #sinusRhythm "Sinus rhythm" "The sample exhibits no signs of atrial fibrillation."
* #atrialFibrillation "Atrial fibrillation" "The sample exhibits signs of atrial fibrillation."
* #inconclusiveHighHeartRate "Inconclusive high heart rate" "An unclassifiable sample caused by a rapid heart rate."
* #inconclusiveLowHeartRate "Inconclusive low heartrate" "An unclassifiable sample caused by a heart rate below 50 bpm."
* #inconclusivePoorReading "Inconclusive poor reading" "An unclassifiable sample caused by an unclear signal."
* #inconclusiveOther "Inconclusive other" "An unclassifiable sample caused by an unknown issue."
* #unrecognized "Unrecognized" "A sample classification that this version of HealthKit doesn’t recognize."
* #notSet "Not set" "A sample that doesn’t have an assigned classification."

* insert CodeDesignationRules(#sinusRhythm, 洞調律)
* insert CodeDesignationRules(#atrialFibrillation, 心房細動)
* insert CodeDesignationRules(#inconclusiveHighHeartRate, 心拍数が120より上)
* insert CodeDesignationRules(#inconclusiveLowHeartRate, 心拍数が50より下)
* insert CodeDesignationRules(#inconclusivePoorReading, 判定不能)
* insert CodeDesignationRules(#inconclusiveOther, その他)
* insert CodeDesignationRules(#unrecognized, 認識できない記録)
* insert CodeDesignationRules(#notSet, 未設定)
