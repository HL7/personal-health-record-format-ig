Instance: pghd-sleep-episode-deep-sleep-1
InstanceOf: PGHDSleepEpisode
Description: "SleepEpisode Example"
Usage: #example
// https://opensource.ieee.org/omh/1752/-/blob/main/sample_data/sleep/deep-sleep-sample-data.json
* id = "pghd-sleep-episode-deep-sleep-1"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #sleepEpisode
* subject
  * reference = "Patient/1"
* effectivePeriod
  * start = "2019-02-05T22:00:00+09:00"
  * end = "2019-02-06T06:00:00+09:00"
* performer
  * reference = "Patient/1"
* component[totalSleepTime]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #totalSleepTime
  * valueQuantity
    * value = 480
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[deepSleepDuration]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #deepSleepDuration
  * valueQuantity
    * value = 168
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[deepSleepPercentage]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #deepSleepPercentage
  * valueQuantity
    * value = 35
    * unit = "%"
    * system = $CodeSystemUCUM
    * code = #%
* component[isMainSleep]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #isMainSleep
  * valueBoolean = true

* device
  * reference = "#device"
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
