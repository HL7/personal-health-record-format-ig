Profile: PGHDAudiogram
Parent: Observation
Id: pghd-audiogram
Title: "PGHD Audiogram Profile"
Description: """
This profile defines how to represent Audiogram.  
このプロファイルは、聴覚検査を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Audiogram Profile (聴覚検査 プロファイル)"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode].code = #Audiogram (exactly)
* code.coding[LOINCCode].code = #89015-2 (exactly)
* hasMember only Reference(PGHDHearingSensitivity)
* hasMember MS
