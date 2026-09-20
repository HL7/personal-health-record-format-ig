# ObservationSleepEpisodeExample2 - Personal Health Records v1.0.0-ballot2

## Example Observation: ObservationSleepEpisodeExample2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-sleep-episode-2",
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
    "start" : "2016-02-05T21:35:00+09:00",
    "end" : "2016-02-06T06:15:00+09:00"
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
            "code" : "latencyToArising"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 5.2,
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
            "code" : "totalSleepTime"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 510,
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
            "code" : "wakeAfterSleepOnset"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 10.3,
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
            "code" : "numberOfAwakenings"
          }
        ]
      },
      "valueInteger" : 1
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
            "code" : "sleepEfficiencyPercentage"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 94.4,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  ]
}

```
