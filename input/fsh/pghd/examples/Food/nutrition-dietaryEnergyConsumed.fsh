Instance: pghd-nutrition-dietaryEnergyConsumed
InstanceOf: Observation
Description: "Nutrition dietaryEnergyConsumed Example"
Usage: #example
* id = "pghd-nutrition-dietary-energy-consumed"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "FAA097BC-7A11-40AA-AC56-04E86D5DE6EF"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#dietaryEnergyConsumed
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T05:33:42Z"
  * end = "2023-12-01T05:35:22Z"
* performer = Reference(Patient/1)
* valueQuantity = 234.9 'kcal' "kcal"

* contained = Inline-Instance-Device
* device = Reference(device)
