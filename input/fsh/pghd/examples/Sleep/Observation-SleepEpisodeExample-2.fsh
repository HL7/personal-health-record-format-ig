Instance: ObservationSleepEpisodeExample2
InstanceOf: PGHDSleepEpisode
Description: "SleepEpisode Example"
Usage: #example
* id = "pghd-sleep-episode-2"
* contained
  * resourceType = "Device"
  * meta
    * profile = $PGHDDevice
  * id = "device"
  * manufacturer = "Apple"
  * deviceName[0]
    * name = "iPhone"
    * type = #user-friendly-name
  * deviceName[1]
    * name = "iPhone"
    * type = #model-name
  * version[0]
    * type
      * text = "heardware"
    * value = "iPhone13,1"
  * version[1]
    * type
      * text = "software"
    * value = "16.1.1"
* id = "pghd-sleep-episode-2"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #sleepEpisode
* subject
  * reference = "Patient/1"
* effectivePeriod
  * start = "2016-02-05T21:35:00+09:00"
  * end = "2016-02-06T06:15:00+09:00"
* performer
  * reference = "Patient/1"
* component[latencyToSleepOnset]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #latencyToSleepOnset
  * valueQuantity
    * value = 17.5
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[latencyToArising]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #latencyToArising
  * valueQuantity
    * value = 5.2
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[totalSleepTime]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #totalSleepTime
  * valueQuantity
    * value = 510
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[wakeAfterSleepOnset]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #wakeAfterSleepOnset
  * valueQuantity
    * value = 10.3
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[numberOfAwakenings]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #numberOfAwakenings
  * valueInteger = 1
* component[sleepEfficiencyPercentage]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #sleepEfficiencyPercentage
  * valueQuantity
    * value = 94.4
    * unit = "%"
    * system = $CodeSystemUCUM
    * code = #%
* device
  * reference = "#device"
