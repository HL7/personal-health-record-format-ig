Profile: PGHDHearing
Parent: Observation
Id: pghd-hearing
Title: "PGHD Hearing Profile"
Description: """
This profile defines how to represent Hearing.  
このプロファイルは、聴覚(騒音)に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Hearing Profile (聴覚(騒音) プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationHearing
* value[x] only Quantity
* value[x] MS
