Logical: NutrientOuttake
Id: NutrientOuttake
Title: "Nutrient Outtake"
Description: "A logical model representing bodily elimination and excretion output. Complements nutrient intake by tracking outputs such as urine, stool, emesis, and perspiration. Relevant for hydration monitoring, bowel health, kidney function, and post-surgical intake/output tracking."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient"
* effectiveDateTime 0..1 dateTime "When the output was observed"
* type 1..1 CodeableConcept "Type of output (e.g. urine, stool, emesis, perspiration, drainage)"
* quantity 0..1 Quantity "Volume or weight of output"
* color 0..1 CodeableConcept "Observed color"
* consistency 0..1 CodeableConcept "Consistency (e.g. liquid, semi-solid, solid, mucoid)"
* frequency 0..1 Quantity "Frequency per time period"
* bloodPresent 0..1 boolean "Whether blood was observed in the output"
* painAssociated 0..1 CodeableConcept "Associated pain level or type"
* note 0..* Annotation "Additional observations"
