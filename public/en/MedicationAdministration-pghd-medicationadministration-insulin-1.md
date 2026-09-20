# pghd-medicationadministration-insulin - Personal Health Records v1.0.0-ballot2

## Example MedicationAdministration: pghd-medicationadministration-insulin



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "pghd-medicationadministration-insulin-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-medicationadministration-insulin"
    ]
  },
  "language" : "en",
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "medication",
      "status" : "active",
      "ingredient" : [
        {
          "itemCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
                "code" : "1157460",
                "display" : "insulin lispro / insulin lispro protamine, human Injectable Product"
              }
            ],
            "text" : "insulin lispro"
          }
        }
      ]
    }
  ],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#medication"
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectiveDateTime" : "2020-10-05T12:00:00-05:00"
}

```
