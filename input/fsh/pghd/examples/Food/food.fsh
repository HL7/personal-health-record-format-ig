Instance: pghd-food
InstanceOf: PGHDFood
Description: "Food Example"
Usage: #example
* id = "pghd-food"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "A7390649-F9E4-4C5C-B8C0-E7893D8E33B8"
* status = #final
* category = $CodeSystemObservationCategory#social-history "Social History"
* code = $CodeSystemObservationPGHDCodes#food
* subject = Reference(Patient/1)
* effectivePeriod
  * start = "2023-12-01T07:33:42Z"
  * end = "2023-12-01T07:53:42Z"
* performer = Reference(Patient/1)
* valueString = "Food Name"

* hasMember[0] = Reference(pghd-nutrition-dietaryEnergyConsumed)
* hasMember[+] = Reference(pghd-nutrition-dietaryCarbohydrates)
* hasMember[+] = Reference(pghd-nutrition-dietaryFiber)
* hasMember[+] = Reference(pghd-nutrition-dietaryProtein)

* contained = Inline-Instance-Device
* device = Reference(device)

