# ScoredAssessmentPHQ9Example - Personal Health Records v1.0.0-ballot2

## Example Observation: ScoredAssessmentPHQ9Example



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ScoredAssessmentPHQ9Example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-observation-scored-assessment"
    ]
  },
  "language" : "en",
  "contained" : [
    {
      "resourceType" : "Device",
      "id" : "device",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-device"]
      },
      "udiCarrier" : [
        {
          "deviceIdentifier" : "FVFHX60ZQ6LC"
        }
      ],
      "manufacturer" : "Apple Inc.",
      "deviceName" : [
        {
          "name" : "Watch",
          "type" : "model-name"
        },
        {
          "name" : "Apple Watch",
          "type" : "user-friendly-name"
        }
      ],
      "version" : [
        {
          "type" : {
            "text" : "hardware"
          },
          "value" : "Watch6,7"
        },
        {
          "type" : {
            "text" : "software"
          },
          "value" : "8.6"
        }
      ]
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey",
          "display" : "Survey"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "phq9",
        "display" : "PHQ-9 assessment"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectiveDateTime" : "2021-10-01",
  "issued" : "2021-10-01T12:00:00+09:00",
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "device" : {
    "reference" : "#device"
  },
  "derivedFrom" : [
    {
      "reference" : "QuestionnaireResponse/phq9"
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "44261-6",
            "display" : "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
          }
        ]
      },
      "valueInteger" : 3
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/scored-assessment-codes",
            "code" : "phq9Risk",
            "display" : "PHQ-9 Assesment Risk"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/phq9-risk-codes",
            "code" : "noneToMinimal",
            "display" : "Minimal"
          }
        ]
      }
    }
  ]
}

```
