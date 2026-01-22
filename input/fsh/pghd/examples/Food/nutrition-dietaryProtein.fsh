Instance: pghd-nutrition-dietaryProtein
InstanceOf: PGHDNutrition
Description: "Nutrition dietaryProtein Example"
Usage: #example
* id = "pghd-nutrition-dietary-protein"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "E8310CA8-3083-49DE-9F10-29621D31619A"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#dietaryProtein
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 25.25 'g' "g"

* contained = Inline-Instance-Device
* device = Reference(device)
