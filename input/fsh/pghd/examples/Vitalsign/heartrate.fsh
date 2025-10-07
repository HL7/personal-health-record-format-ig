Instance: pghd-heartrate
InstanceOf: PGHDHeartRate
Description: "HeartRate Example"
Usage: #example
* id = "pghd-heartrate"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "D709A23D-7229-48D3-9411-30A47A95029B"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[HeartRateCode] = $CodeSystemLoinc#8867-4 "Heart rate"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#heartRate
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* valueQuantity = 70 '/min' "/min"

* contained = Inline-Instance-Device
* device = Reference(device)
