# pghd-activity-appleStandHour - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-activity-appleStandHour



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-activity-appleStandHour",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-activity"
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
        "code" : "appleStandHour"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2023-12-01T05:00:00Z",
    "end" : "2023-12-01T06:00:00Z"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueQuantity" : {
    "value" : 1
  },
  "device" : {
    "reference" : "#device"
  }
}

```
