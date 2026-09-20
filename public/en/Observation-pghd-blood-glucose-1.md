# pghd-blood-glucose-1 - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-blood-glucose-1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-blood-glucose-1",
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
        "code" : "15074-8",
        "display" : "Glucose [Moles/volume] in Blood"
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
    "value" : 7,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "device" : {
    "reference" : "#device"
  }
}

```
