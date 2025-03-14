Profile: PGHDAlcholConsumption
Parent: Observation
Id: pghd-alchol-consumption
Title: "PGHD AlcholConsumption Profile"
Description: """
This profile defines how to represent AlcholConsumption.
"""
* insert ObservationPGHDRules(AlcholConsumption)
* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationAlcholConsumption
* value[x] only Quantity
* value[x] MS
