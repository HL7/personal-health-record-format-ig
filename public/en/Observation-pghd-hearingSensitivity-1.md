# pghd-hearingSensitivity-1 - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-hearingSensitivity-1

Language: en

Profile: [PGHD HearingSensitivity Profile](StructureDefinition-pghd-hearing-sensitivity.md)

**identifier**: `urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3`/DE430E9B-03F4-4310-ACA1-508787B240CD_1

**status**: Final

**category**: Exam

**code**: Hearing sensitivity

**subject**: [John Doe Male, DoB: 1990-01-01](Patient-1.md)

**effective**: 2023-12-01 05:33:42+0000 --> 2023-12-01 05:35:22+0000

**performer**: [John Doe Male, DoB: 1990-01-01](Patient-1.md)

> **component****code**:Frequency**value**: 500 Hz(Details: UCUM codeHz = 'Hz')

> **component****code**:Left ear sensitivity**value**: 30 dB(Details: UCUM codedB = 'dB')

> **component****code**:Right ear sensitivity**value**: 35 dB(Details: UCUM codedB = 'dB')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-hearingSensitivity-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-hearing-sensitivity"
    ]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3",
      "value" : "DE430E9B-03F4-4310-ACA1-508787B240CD_1"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "code" : "hearingSensitivity"
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
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes",
            "code" : "frequency"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 500,
        "unit" : "Hz",
        "system" : "http://unitsofmeasure.org",
        "code" : "Hz"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes",
            "code" : "leftEarSensitivity"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 30,
        "unit" : "dB",
        "system" : "http://unitsofmeasure.org",
        "code" : "dB"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes",
            "code" : "rightEarSensitivity"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 35,
        "unit" : "dB",
        "system" : "http://unitsofmeasure.org",
        "code" : "dB"
      }
    }
  ]
}

```
