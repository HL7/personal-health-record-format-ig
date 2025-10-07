Instance: pghd-snore-event-1
InstanceOf: PGHDSnoreEvent
Description: "SnoreIndex Example"
Usage: #example
* contained
  * resourceType = "Device"
  * meta
    * profile = $PGHDDevice
  * id = "device"
  * manufacturer = "Apple Inc."
  * deviceName[0]
    * name = "Apple Watch"
    * type = #user-friendly-name
  * deviceName[1]
    * name = "Watch"
    * type = #model-name
  * version[0]
    * type
      * text = "heardware"
    * value = "Watch6,1"
  * version[1]
    * type
      * text = "software"
    * value = "9.1"
* id = "pghd-snore-event-1"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #snoreEvent
* subject
  * reference = "Patient/1"
* effectivePeriod
  * start = "2019-02-05T22:00:00+09:00"
  * end = "2019-02-05T22:15:00+09:00"
* performer
  * reference = "Patient/1"
* valueBoolean = false
* device
  * reference = "#device"
