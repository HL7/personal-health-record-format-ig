# pghd-sleep-episode-latency-to-sleep-onset-1 - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-sleep-episode-latency-to-sleep-onset-1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-sleep-episode-latency-to-sleep-onset-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-sleep-episode"
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
      "manufacturer" : "Apple",
      "deviceName" : [
        {
          "name" : "iPhone",
          "type" : "user-friendly-name"
        },
        {
          "name" : "iPhone",
          "type" : "model-name"
        }
      ],
      "version" : [
        {
          "type" : {
            "text" : "heardware"
          },
          "value" : "iPhone13,1"
        },
        {
          "type" : {
            "text" : "software"
          },
          "value" : "16.1.1"
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
        "code" : "sleepEpisode"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectivePeriod" : {
    "start" : "2018-02-05T21:35:00+09:00",
    "end" : "2018-02-05T22:05:00+09:00"
  },
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
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
            "code" : "latencyToSleepOnset"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 17.5,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
            "code" : "isMainSleep"
          }
        ]
      },
      "valueBoolean" : true
    }
  ]
}

```
