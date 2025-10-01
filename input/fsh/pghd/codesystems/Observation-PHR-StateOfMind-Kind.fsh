CodeSystem: StateOfMindKind
Id: state-of-mind-kind-codes
Title: "State of Mind Kind Codes"
Description: """
Codes for state of mind kind  
心の状態の種類を表すコード
"""
* insert CodeSystemRules

* #dailyMood "DAILY MOOD" ""
* #momentaryEmotion "MOMENTARY EMOTIONS" ""

* insert CodeDesignationRules(#dailyMood, 一日の気分)
* insert CodeDesignationRules(#momentaryEmotion, 一時的な感情)
