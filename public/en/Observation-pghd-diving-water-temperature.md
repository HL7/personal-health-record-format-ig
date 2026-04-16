# pghd-diving-waterTemperature - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-diving-waterTemperature



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-diving-water-temperature",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-diving"]
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
      "value" : "0298F7E7-80DC-4981-9991-91BBC0687348_HKQuantityTypeIdentifierUnderwaterDepth"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "activity",
          "display" : "Activity"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "waterTemperature"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2023-12-01T11:33:42Z",
    "end" : "2023-12-01T12:15:22Z"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueQuantity" : {
    "value" : 7.5,
    "unit" : "Cel",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "device" : {
    "reference" : "#device"
  }
}

```
