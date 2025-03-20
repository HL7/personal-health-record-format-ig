Profile: PGHDTestResult
Parent: Observation
Id: pghd-testresult
Title: "PGHD TestResult Profile"
Description: """
This profile defines how to represent TestResult.
"""
* insert ObservationPGHDRules(TestResult)
* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode] from ObservationLabResultsValueSet (required)
* value[x] only Quantity
