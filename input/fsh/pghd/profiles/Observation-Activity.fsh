Profile: PGHDActivity
Parent: Observation
Id: pghd-activity
Title: "PGHD Activity Profile"
Description: """
This profile defines how to represent Activity.  
このプロファイルは、アクティビティに関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Activity Profile (アクティビティ プロファイル)"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationActivity
* value[x] only Quantity
* value[x] MS
