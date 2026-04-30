# pghd-food - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-food



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-food",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-food"]
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
  "identifier" : [
    {
      "system" : "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3",
      "value" : "A7390649-F9E4-4C5C-B8C0-E7893D8E33B8"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "food"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2023-12-01T07:33:42Z",
    "end" : "2023-12-01T07:53:42Z"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueString" : "Food Name",
  "device" : {
    "reference" : "#device"
  },
  "hasMember" : [
    {
      "reference" : "Observation/pghd-nutrition-dietary-energy-consumed"
    },
    {
      "reference" : "Observation/pghd-nutrition-dietary-carbohydrates"
    },
    {
      "reference" : "Observation/pghd-nutrition-dietary-fiber"
    },
    {
      "reference" : "Observation/pghd-nutrition-dietary-protein"
    }
  ]
}

```
