Profile: PGHDTestResult
Parent: Observation
Id: pghd-testresult
Title: "PGHD Test Result Profile"
Description: """
This profile defines how to represent TestResult.  
このプロファイルは、検査結果に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Test Result Profile (検査結果 プロファイル)"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationLabResultsValueSet (required)
* value[x] only Quantity
