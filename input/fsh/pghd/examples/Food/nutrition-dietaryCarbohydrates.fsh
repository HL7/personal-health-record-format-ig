Instance: pghd-nutrition-dietaryCarbohydrates
InstanceOf: PGHDNutrition
Description: "Nutrition dietaryCarbohydrates Example"
Usage: #example
* id = "pghd-nutrition-dietary-carbohydrates"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "F9FE895F-F2A9-4209-8776-1570EB526645"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#dietaryCarbohydrates
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 4.4 'g' "g"

* contained = Inline-Instance-Device
* device = Reference(device)
