# pghd-bodyweight - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-bodyweight



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-bodyweight",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-bodyweight"
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
  "identifier" : [
    {
      "system" : "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3",
      "value" : "3B176196-0B85-44A8-B375-84B54325F1CD"
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
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "Body weight"
      },
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "bodyMass"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "effectiveDateTime" : "2023-12-01T05:33:42Z",
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "valueQuantity" : {
    "value" : 65.2,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "device" : {
    "reference" : "#device"
  }
}

```
