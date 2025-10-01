CodeSystem: AppetiteChanges
Id: appetite-changes-codes
Title: "Appetite Changes Codes"
Description: """
Codes expressing changes in appetite  
食欲の変化を表現するコード
"""
* insert CodeSystemRules

* #increased "Increased" "The user’s appetite increased."
* #decreased "Decreased" "The user’s appetite decreased."
* #unspecified "Unspecified" "An unspecified change in appetite."
* #noChange "No change" "No change in the user’s appetite."

* insert CodeDesignationRules(#increased, 増進)
* insert CodeDesignationRules(#decreased, 減退)
* insert CodeDesignationRules(#unspecified, あり)
* insert CodeDesignationRules(#noChange, 変化なし)
