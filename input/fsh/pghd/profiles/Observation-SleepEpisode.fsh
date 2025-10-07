Profile: PGHDSleepEpisode
Parent: Observation
Id: pghd-sleep-episode
Title: "PGHD Sleep Episode Profile"
Description: """
This profile defines how to represent Sleep episode.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Sleep Episode Profile"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* code.coding[PGHDCode].code = #sleepEpisode (exactly)

* effective[x] only Period

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component contains latencyToSleepOnset 0..1
* component[latencyToSleepOnset].code.coding 1..1
* component[latencyToSleepOnset].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[latencyToSleepOnset].code.coding.code = #latencyToSleepOnset (exactly)
* component[latencyToSleepOnset].value[x] only Quantity
* component[latencyToSleepOnset].valueQuantity.system = $CodeSystemUCUM
* component[latencyToSleepOnset].valueQuantity.code = #min

* component[latencyToSleepOnset] MS
* component[latencyToSleepOnset].code insert CodeableConceptRules
* component[latencyToSleepOnset].valueQuantity insert QuantityRules

* component contains latencyToArising 0..1
* component[latencyToArising].code.coding 1..1
* component[latencyToArising].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[latencyToArising].code.coding.code = #latencyToArising (exactly)
* component[latencyToArising].value[x] only Quantity
* component[latencyToArising].valueQuantity.system = $CodeSystemUCUM
* component[latencyToArising].valueQuantity.code = #min

* component[latencyToArising] MS
* component[latencyToArising].code insert CodeableConceptRules
* component[latencyToArising].valueQuantity insert QuantityRules

* component contains totalSleepTime 0..1
* component[totalSleepTime].code.coding 1..1
* component[totalSleepTime].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[totalSleepTime].code.coding.code = #totalSleepTime (exactly)
* component[totalSleepTime].value[x] only Quantity
* component[totalSleepTime].valueQuantity.system = $CodeSystemUCUM
* component[totalSleepTime].valueQuantity.code = #min

* component[totalSleepTime] MS
* component[totalSleepTime].code insert CodeableConceptRules
* component[totalSleepTime].valueQuantity insert QuantityRules

* component contains coreSleepDuration 0..1
* component[coreSleepDuration].code.coding 1..1
* component[coreSleepDuration].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[coreSleepDuration].code.coding.code = #coreSleepDuration (exactly)
* component[coreSleepDuration].value[x] only Quantity
* component[coreSleepDuration].valueQuantity.system = $CodeSystemUCUM
* component[coreSleepDuration].valueQuantity.code = #min

* component[coreSleepDuration] MS
* component[coreSleepDuration].code insert CodeableConceptRules
* component[coreSleepDuration].valueQuantity insert QuantityRules

* component contains coreSleepPercentage 0..1
* component[coreSleepPercentage].code.coding 1..1
* component[coreSleepPercentage].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[coreSleepPercentage].code.coding.code = #coreSleepPercentage (exactly)
* component[coreSleepPercentage].value[x] only Quantity
* component[coreSleepPercentage].valueQuantity.system = $CodeSystemUCUM
* component[coreSleepPercentage].valueQuantity.code = #%

* component[coreSleepPercentage] MS
* component[coreSleepPercentage].code insert CodeableConceptRules
* component[coreSleepPercentage].valueQuantity insert QuantityRules

* component contains deepSleepDuration 0..1
* component[deepSleepDuration].code.coding 1..1
* component[deepSleepDuration].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[deepSleepDuration].code.coding.code = #deepSleepDuration (exactly)
* component[deepSleepDuration].value[x] only Quantity
* component[deepSleepDuration].valueQuantity.system = $CodeSystemUCUM
* component[deepSleepDuration].valueQuantity.code = #min

* component[deepSleepDuration] MS
* component[deepSleepDuration].code insert CodeableConceptRules
* component[deepSleepDuration].valueQuantity insert QuantityRules

* component contains deepSleepPercentage 0..1
* component[deepSleepPercentage].code.coding 1..1
* component[deepSleepPercentage].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[deepSleepPercentage].code.coding.code = #deepSleepPercentage (exactly)
* component[deepSleepPercentage].value[x] only Quantity
* component[deepSleepPercentage].valueQuantity.system = $CodeSystemUCUM
* component[deepSleepPercentage].valueQuantity.code = #%

* component[deepSleepPercentage] MS
* component[deepSleepPercentage].code insert CodeableConceptRules
* component[deepSleepPercentage].valueQuantity insert QuantityRules

* component contains remSleepDuration 0..1
* component[remSleepDuration].code.coding 1..1
* component[remSleepDuration].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[remSleepDuration].code.coding.code = #remSleepDuration (exactly)
* component[remSleepDuration].value[x] only Quantity
* component[remSleepDuration].valueQuantity.system = $CodeSystemUCUM
* component[remSleepDuration].valueQuantity.code = #min

* component[remSleepDuration] MS
* component[remSleepDuration].code insert CodeableConceptRules
* component[remSleepDuration].valueQuantity insert QuantityRules

* component contains remSleepPercentage 0..1
* component[remSleepPercentage].code.coding 1..1
* component[remSleepPercentage].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[remSleepPercentage].code.coding.code = #remSleepPercentage (exactly)
* component[remSleepPercentage].value[x] only Quantity
* component[remSleepPercentage].valueQuantity.system = $CodeSystemUCUM
* component[remSleepPercentage].valueQuantity.code = #%

* component[remSleepPercentage] MS
* component[remSleepPercentage].code insert CodeableConceptRules
* component[remSleepPercentage].valueQuantity insert QuantityRules

* component contains wakeAfterSleepOnset 0..1
* component[wakeAfterSleepOnset].code.coding 1..1
* component[wakeAfterSleepOnset].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[wakeAfterSleepOnset].code.coding.code = #wakeAfterSleepOnset (exactly)
* component[wakeAfterSleepOnset].value[x] only Quantity
* component[wakeAfterSleepOnset].valueQuantity.system = $CodeSystemUCUM
* component[wakeAfterSleepOnset].valueQuantity.code = #min

* component[wakeAfterSleepOnset] MS
* component[wakeAfterSleepOnset].code insert CodeableConceptRules
* component[wakeAfterSleepOnset].valueQuantity insert QuantityRules

* component contains numberOfAwakenings 0..1
* component[numberOfAwakenings].code.coding 1..1
* component[numberOfAwakenings].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[numberOfAwakenings].code.coding.code = #numberOfAwakenings (exactly)
* component[numberOfAwakenings].value[x] only integer

* component[numberOfAwakenings] MS
* component[numberOfAwakenings].code insert CodeableConceptRules
* component[numberOfAwakenings].valueInteger MS

* component contains sleepEfficiencyPercentage 0..1
* component[sleepEfficiencyPercentage].code.coding 1..1
* component[sleepEfficiencyPercentage].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[sleepEfficiencyPercentage].code.coding.code = #sleepEfficiencyPercentage (exactly)
* component[sleepEfficiencyPercentage].value[x] only Quantity
* component[sleepEfficiencyPercentage].valueQuantity.system = $CodeSystemUCUM
* component[sleepEfficiencyPercentage].valueQuantity.code = #%

* component[sleepEfficiencyPercentage] MS
* component[sleepEfficiencyPercentage].code insert CodeableConceptRules
* component[sleepEfficiencyPercentage].valueQuantity insert QuantityRules

* component contains isMainSleep 0..1
* component[isMainSleep].code.coding 1..1
* component[isMainSleep].code.coding.system = $CodeSystemSleepEpisode (exactly)
* component[isMainSleep].code.coding.code = #isMainSleep (exactly)
* component[isMainSleep].value[x] only boolean

* component[isMainSleep] MS
* component[isMainSleep].code insert CodeableConceptRules
* component[isMainSleep].valueBoolean MS
