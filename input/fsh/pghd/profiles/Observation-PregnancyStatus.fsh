Profile: PGHDPregnancyStatus
Parent: Observation
Id: pghd-pregnancy-status
Title: "PGHD Pregnancy Status Profile"
Description: """
This profile defines how to represent Pregnancy status.  
このプロファイルは、妊娠に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Pregnancy Status Profile (妊娠 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].code = #pregnancy (exactly)
* code.coding[LOINCCode].code = #82810-3 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept from $ValueSetpregnancyStatusIPS
* valueCodeableConcept.coding.system = $CodeSystemLoinc (exactly)
