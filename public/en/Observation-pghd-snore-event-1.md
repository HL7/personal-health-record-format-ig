# pghd-snore-event-1 - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-snore-event-1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-snore-event-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-snore-event"
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
      "manufacturer" : "Apple Inc.",
      "deviceName" : [
        {
          "name" : "Apple Watch",
          "type" : "user-friendly-name"
        },
        {
          "name" : "Watch",
          "type" : "model-name"
        }
      ],
      "version" : [
        {
          "type" : {
            "text" : "heardware"
          },
          "value" : "Watch6,1"
        },
        {
          "type" : {
            "text" : "software"
          },
          "value" : "9.1"
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
        "code" : "snoreEvent"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2019-02-05T22:00:00+09:00",
    "end" : "2019-02-05T22:15:00+09:00"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueBoolean" : false,
  "device" : {
    "reference" : "#device"
  }
}

```
