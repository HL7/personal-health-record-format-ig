# StateOfMindExample - Personal Health Records v1.0.0-ballot2

## Example Observation: StateOfMindExample



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "StateOfMindExample",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-observation-state-of-mind"
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
        "code" : "stateOfMind",
        "display" : "State of Mind"
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
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
            "code" : "kind",
            "display" : "Kind"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-kind-codes",
            "code" : "momentaryEmotion",
            "display" : "MOMENTARY EMOTIONS"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
            "code" : "valence",
            "display" : "Valence"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
            "code" : "valenceClassification",
            "display" : "Valence Classification"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-valence-codes",
            "code" : "veryPleasant",
            "display" : "Very Pleasant"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
            "code" : "labels",
            "display" : "Labels"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-label-codes",
            "code" : "peaceful",
            "display" : "Peaceful"
          },
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-label-codes",
            "code" : "satisfied",
            "display" : "Satisfied"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
            "code" : "associations",
            "display" : "Associations"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-association-codes",
            "code" : "currentEvents",
            "display" : "Current Events"
          }
        ]
      }
    }
  ]
}

```
