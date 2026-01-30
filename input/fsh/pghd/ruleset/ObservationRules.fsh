RuleSet: ObservationRules
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains ObservationCategory 1..1
* category[ObservationCategory].coding.system = $CodeSystemObservationCategory (exactly)

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains PGHDCode 1..1
* code.coding contains LOINCCode 0..1
* code.coding[LOINCCode].system = $CodeSystemLoinc (exactly)

* subject only Reference(PGHDPatient)
* subject 1..1
* effective[x] only dateTime or Period
* effective[x] 1..1
* device 0..1
* device only Reference(PGHDDevice)

// MustSupport
* category MS
* category[ObservationCategory].coding insert CodingRules
* code MS
* code.coding[PGHDCode] insert CodingRules
* subject MS
* effective[x] MS
* device MS
