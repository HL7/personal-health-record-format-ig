Instance: pghd-nutrition-dietaryFiber
InstanceOf: PGHDNutrition
Description: "Nutrition dietaryFiber Example"
Usage: #example
* id = "pghd-nutrition-dietary-fiber"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "158E810D-3934-41F5-9AC1-7A95A3384AA6"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#dietaryFiber
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 14.14 'g' "g"

* contained = Inline-Instance-Device
* device = Reference(device)
