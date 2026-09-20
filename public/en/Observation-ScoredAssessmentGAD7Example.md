# ScoredAssessmentGAD7Example - Personal Health Records v1.0.0-ballot2

## Example Observation: ScoredAssessmentGAD7Example



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ScoredAssessmentGAD7Example",
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
        "code" : "gad7",
        "display" : "GAD-7 assessment"
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
      "reference" : "QuestionnaireResponse/gad7"
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "70274-6",
            "display" : "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
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
            "code" : "gad7Risk",
            "display" : "GAD-7 Assesment Risk"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/gad7-risk-codes",
            "code" : "noneToMinimal",
            "display" : "Minimal"
          }
        ]
      }
    }
  ]
}

```
