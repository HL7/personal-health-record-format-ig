Instance: pghd-mobility-stairDescentSpeed
InstanceOf: PGHDMobility
Description: "Mobility stairDescentSpeed Example"
Usage: #example
* id = "pghd-mobility-stair-descent-speed"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#activity "Activity"
* code = $CodeSystemObservationPGHDCodes#stairDescentSpeed
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 4.7 'm/s' "m/s"
* device = Reference(device)
