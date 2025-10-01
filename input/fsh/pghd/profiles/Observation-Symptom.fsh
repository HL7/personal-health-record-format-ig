Profile: PGHDSymptom
Parent: Observation
Id: pghd-symptom
Title: "PGHD Symptom Profile"
Description: """
This profile defines how to represent Symptom.  
このプロファイルは、症状を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Symptom Profile (症状 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationSymptom
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains Presence 0..1 and SymptomSeverity 0..1 and AppetiteChanges 0..1
* valueCodeableConcept.coding[Presence] from SymptomPresenceValueSet
* valueCodeableConcept.coding[Presence].system = $CodeSystemPresenceCodes (exactly)
* valueCodeableConcept.coding[SymptomSeverity] from SymptomSeverityValueSet
* valueCodeableConcept.coding[SymptomSeverity].system = $CodeSystemSymptomSeverityCodes (exactly)
* valueCodeableConcept.coding[AppetiteChanges] from AppetiteChangesValueSet
* valueCodeableConcept.coding[AppetiteChanges].system = $CodeSystemAppetiteChangesCodes (exactly)
