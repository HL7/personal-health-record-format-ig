Instance: pghd-alchol-consumption-bloodAlcoholContent
InstanceOf: PGHDAlcholConsumption
Description: "AlcholConsumption bloodAlcoholContent Example"
Usage: #example
* id = "pghd-alchol-consumption-blood-alcohol-content"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social history"
* code = $CodeSystemObservationPGHDCodes#bloodAlcoholContent
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity = 0.152 '%' "%"
* device = Reference(device)
