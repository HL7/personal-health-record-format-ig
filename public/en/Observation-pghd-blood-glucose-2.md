# pghd-blood-glucose-2 - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-blood-glucose-2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-blood-glucose-2",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-blood-glucose"
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
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "bloodGlucose"
      },
      {
        "system" : "http://loinc.org",
        "code" : "14745-4",
        "display" : "Glucose [Moles/volume] in Body fluid"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectiveDateTime" : "2020-10-05",
  "issued" : "2019-12-05T09:21:37.130+09:00",
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueQuantity" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation",
        "valueQuantity" : {
          "value" : 2,
          "unit" : "mg/dl",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dl"
        }
      }
    ],
    "value" : 10,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "<",
          "display" : "Off scale low"
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "comment"
    }
  ],
  "device" : {
    "reference" : "#device"
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 10,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      },
      "high" : {
        "value" : 16,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal range"
          }
        ],
        "text" : "Normal range"
      },
      "appliesTo" : [
        {
          "text" : "Male"
        }
      ],
      "age" : {
        "low" : {
          "value" : 15,
          "unit" : "years",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        },
        "high" : {
          "value" : 100,
          "unit" : "years",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        }
      }
    }
  ]
}

```
