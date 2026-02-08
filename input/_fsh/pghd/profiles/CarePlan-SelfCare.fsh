Profile: PGHDCarePlanSelfCare
Parent: CarePlan
Id: pghd-careplan-selfcare
Title: "PGHD SelfCare Plan Profile"
Description: """
This profile defines the SelfCare Plan.
"""
* insert ProfileRules
* . ^short = "PGHD SelfCare Plan Profile"

* status MS
* intent MS
* category MS
* title MS
* description MS
* subject MS
* subject only Reference(PGHDPatient)
* author MS
* author only Reference(PGHDPatient)
* period MS
* created MS
* supportingInfo MS
