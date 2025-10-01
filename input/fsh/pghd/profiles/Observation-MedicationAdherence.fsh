Profile: PGHDMedicationAdherence
Parent: Observation
Id: pghd-medication-adherence
Title: "PGHD Medication Adherence Profile"
Description: """
This profile defines how to represent medication adherence.  
このプロファイルは、服薬アドヒアランス率の情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Medication Adherence Profile (服薬アドヒアランス プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #medicationAdherence (exactly)
* value[x] only Quantity
* device only Reference(PGHDDevice)
* focus only Reference(MedicationRequest)
* value[x] MS
* valueQuantity insert QuantityRules
* focus MS
* effective[x] only Period
