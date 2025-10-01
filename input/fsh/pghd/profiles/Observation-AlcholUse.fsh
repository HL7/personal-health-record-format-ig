Profile: PGHDAlcholUse
Parent: PGHDAlcholConsumption
Id: pghd-alchol-use
Title: "PGHD Alchol Use Profile"
Description: """
This profile defines how to represent Alchol use.  
このプロファイルは、一日あたりの飲酒量に関する情報を表す方法を定義します。
"""
* . ^short = "PGHD Alchol Use Profile (飲酒量 プロファイル)"

* code.coding[PGHDCode].code = #numberOfAlcoholicBeverages (exactly)
* code.coding[LOINCCode].code = #74013-4 (exactly)
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = #/d
