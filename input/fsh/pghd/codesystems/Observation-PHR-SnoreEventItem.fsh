CodeSystem: SnoreEventItem
Id: snore-event-item-codes
Title: "Snore Event Item Codes"
Description: """
Code representing the measurement used in the snoring event  
いびきイベントで使用する測定項目を表すコード
"""
* insert CodeSystemRules

* #snoreIntensity "Snore intensity" ""
* #bodyPosture "Body posture" ""

* insert CodeDesignationRules(#snoreIntensity, いびきの大きさ)
* insert CodeDesignationRules(#bodyPosture, 姿勢)
