Profile: PGHDHeartbeat
Parent: Observation
Id: pghd-heartbeat
Title: "PGHD Heartbeat Profile"
Description: """
This profile defines how to represent Heartbeat.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Heartbeat Profile"

* category[ObservationCategory].coding.code = #exam (exactly)
* code.coding[PGHDCode].code = #heartBeatSeries (exactly)
* component ^slicing.discriminator[0].path = "code.coding.code"
* component ^slicing.discriminator[0].type = #value
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains heartbeat 1..*
* component[heartbeat].code.coding 1..1
* component[heartbeat].code.coding.system = $CodeSystemObservationPGHDCodes
* component[heartbeat].code.coding.code = #heartBeatSeries (exactly)
* component[heartbeat].value[x] only Quantity
* component[heartbeat].valueQuantity.system = $CodeSystemUCUM
* component[heartbeat].valueQuantity.code = #s
