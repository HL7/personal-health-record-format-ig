Profile: PGHDMindfulness
Parent: Observation
Id: pghd-mindfulness
Title: "PGHD Mindfulness Profile"
Description: """
This profile defines how to represent Mindfulness.  
このプロファイルは、マインドフルネスに関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Mindfulness Profile (マインドフルネス プロファイル)"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationMindfulness (required)
