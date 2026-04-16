# pghd-nutrition-dietaryEnergyConsumed - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-nutrition-dietaryEnergyConsumed



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-nutrition-dietary-energy-consumed",
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
      "value" : "FAA097BC-7A11-40AA-AC56-04E86D5DE6EF"
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
        "code" : "dietaryEnergyConsumed"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2023-12-01T05:33:42Z",
    "end" : "2023-12-01T05:35:22Z"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueQuantity" : {
    "value" : 234.9,
    "unit" : "kcal",
    "system" : "http://unitsofmeasure.org",
    "code" : "kcal"
  },
  "device" : {
    "reference" : "#device"
  }
}

```
