Profile: PGHDUVExposure
Parent: Observation
Id: pghd-uvexposure
Title: "PGHD UVExposure Profile"
Description: """
This profile defines how to represent UVExposure.  
このプロファイルは、紫外線暴露量を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD UVExposure Profile (紫外線暴露量 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationUVExposure
* value[x] only Quantity
