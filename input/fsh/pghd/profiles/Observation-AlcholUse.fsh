Profile: PGHDAlcholUse
Parent: PGHDAlcholConsumption
Id: pghd-alchol-use
Title: "PGHD AlcholUse Profile"
Description: """
This profile defines how to represent Alchol use.
"""
* . ^short = "PGHD Alchol Use Profile"

* code.coding[PGHDCode].code = #numberOfAlcoholicBeverages (exactly)
* code.coding[LOINCCode].code = #74013-4 (exactly)
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = #/d
