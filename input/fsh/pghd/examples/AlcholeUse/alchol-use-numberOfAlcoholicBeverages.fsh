Instance: pghd-alchol-use-numberOfAlcoholicBeverages
InstanceOf: PGHDAlcholUse
Description: "AlcholUse numberOfAlcoholicBeverages Example"
Usage: #example
* id = "pghd-alchol-use-number-of-alcoholic-beverages"
* contained = Inline-Instance-Device
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social history"
* code = $CodeSystemObservationPGHDCodes#numberOfAlcoholicBeverages
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T18:33:42Z"
  * end = "2023-12-01T19:55:22Z"
* performer
  * reference = "Patient/1"
* valueQuantity
  * value = 3
* device = Reference(device)
