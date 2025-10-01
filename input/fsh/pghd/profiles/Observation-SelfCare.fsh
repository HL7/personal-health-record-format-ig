Profile: PGHDSelfCare
Parent: Observation
Id: pghd-selfcare
Title: "PGHD Self Care Profile"
Description: """
This profile defines how to represent SelfCare.  
このプロファイルは、セルフケアに関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Self Care Profile (セルフケア プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationSelfCare
