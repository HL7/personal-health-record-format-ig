Instance: pghd-vitalsigns-appleSleepingWristTemperature
InstanceOf: PGHDVitalSigns
Description: "VitalSigns appleSleepingWristTemperature Example"
Usage: #example
* id = "pghd-vitalsigns-apple-sleeping-wrist-temperature"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "F91F5DEE-6C54-4A84-9679-208D5360618B"
* status = #final
* category[ObservationCategory] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#appleSleepingWristTemperature
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 36.5 'Cel' "Cel"

* contained = Inline-Instance-Device
* device = Reference(device)
