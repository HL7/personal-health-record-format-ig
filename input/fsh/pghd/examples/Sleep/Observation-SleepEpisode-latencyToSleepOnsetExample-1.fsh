Instance: pghd-sleep-episode-latency-to-sleep-onset-1
InstanceOf: PGHDSleepEpisode
Description: "SleepEpisode Example"
Usage: #example
// https://opensource.ieee.org/omh/1752/-/blob/main/sample_data/sleep/sleep-onset-latency-sample-data.json
* id = "pghd-sleep-episode-latency-to-sleep-onset-1"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #sleepEpisode
    * display = "Sleep episode"
* subject
  * reference = "Patient/1"
* effectivePeriod
  * start = "2018-02-05T21:35:00+09:00"
  * end = "2018-02-05T22:05:00+09:00"
* performer
  * reference = "Patient/1"
* component[latencyToSleepOnset]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #latencyToSleepOnset
      * display = "Latency to sleep onset"
  * valueQuantity
    * value = 17.5
    * unit = "min"
    * system = $CodeSystemUCUM
    * code = #min
* component[isMainSleep]
  * code
    * coding
      * system = $CodeSystemSleepEpisode
      * code = #isMainSleep
      * display = "Is main sleep"
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
