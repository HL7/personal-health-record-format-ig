Profile: PGHDSleep
Parent: Observation
Id: pghd-sleep
Title: "PGHD Sleep Profile"
Description: """
This profile defines how to represent Sleep.  
このプロファイルは、睡眠を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Sleep Profile (睡眠 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationSleep (required)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains sleepAnalysis 0..1
* valueCodeableConcept.coding[sleepAnalysis] from SleepAnalysisValueSet
* valueCodeableConcept.coding[sleepAnalysis].system = $CodeSystemSleepAnalysis
