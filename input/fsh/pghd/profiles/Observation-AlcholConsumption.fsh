Profile: PGHDAlcholConsumption
Parent: Observation
Id: pghd-alchol-consumption
Title: "PGHD Alchol Consumption Profile"
Description: """
This profile defines how to represent Alchol Consumption.  
このプロファイルは、飲酒に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Alchol Consumption Profile (飲酒 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationAlcholConsumption
* value[x] only Quantity
* value[x] MS
