Profile: PGHDTestResult
Parent: Observation
Id: pghd-testresult
Title: "PGHD Test Result Profile"
Description: """
This profile defines how to represent TestResult.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Test Result Profile"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationLabResultsValueSet (required)
* value[x] only Quantity
