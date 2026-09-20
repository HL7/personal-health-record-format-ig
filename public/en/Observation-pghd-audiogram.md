# pghd-audiogram - Personal Health Records v1.0.0-ballot2

## Example Observation: pghd-audiogram

Language: en

Profile: [PGHD Audiogram Profile](StructureDefinition-pghd-audiogram.md)

**identifier**: `urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3`/DE430E9B-03F4-4310-ACA1-508787B240CD

**status**: Final

**category**: Exam

**code**: Audiogram

**subject**: [John Doe Male, DoB: 1990-01-01](Patient-1.md)

**effective**: 2023-12-01 05:33:42+0000 --> 2023-12-01 05:35:22+0000

**performer**: [John Doe Male, DoB: 1990-01-01](Patient-1.md)

**hasMember**: 

* [Observation Hearing sensitivity](Observation-pghd-hearingSensitivity-1.md)
* [Observation Hearing sensitivity](Observation-pghd-hearingSensitivity-2.md)
* [Observation Hearing sensitivity](Observation-pghd-hearingSensitivity-3.md)
* [Observation Hearing sensitivity](Observation-pghd-hearingSensitivity-4.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pghd-audiogram",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-audiogram"
    ]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3",
      "value" : "DE430E9B-03F4-4310-ACA1-508787B240CD"
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
        "code" : "Audiogram"
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
  "hasMember" : [
    {
      "reference" : "Observation/pghd-hearingSensitivity-1"
    },
    {
      "reference" : "Observation/pghd-hearingSensitivity-2"
    },
    {
      "reference" : "Observation/pghd-hearingSensitivity-3"
    },
    {
      "reference" : "Observation/pghd-hearingSensitivity-4"
    }
  ]
}

```
