Instance: pghd-activity-appleStandHour
InstanceOf: PGHDActivity
Description: "Activity appleStandHour Example"
Usage: #example
* id = "pghd-activity-appleStandHour"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#appleStandHour
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:00:00Z"
  * end = "2023-12-01T06:00:00Z"
* performer
  * reference = "Patient/1"
* valueQuantity.value = 1
* device = Reference(device)
