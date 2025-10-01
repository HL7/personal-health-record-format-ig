Profile: PGHDSnoreIndex
Parent: Observation
Id: pghd-snore-index
Title: "PGHD SnoreIndex Profile"
Description: """
This profile defines how to represent SnoreIndex.  
このプロファイルは、いびき指数に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Snore Index Profile (いびき指数 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #snoreIndex (exactly)
* effective[x] only Period
* value[x] only Quantity
* valueQuantity.system = $CodeSystemUCUM
* valueQuantity.code = #/h
* hasMember only Reference(PGHDSnoreEvent)
* valueQuantity insert QuantityRules
