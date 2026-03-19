# PCDSleepObservation-duration-example - Personal Health Records v1.0.0-ballot2

## Example Observation: PCDSleepObservation-duration-example

Language: en

Profile: [Patient contributed data: sleep observation](StructureDefinition-pcd-sleep-observation.md)

**status**: Final

**code**: Sleep duration

**subject**: Jane Smith

**effective**: 2022-10-08 09:57:34+0000

**performer**: Jane Smith

**value**: 9 h(Details: UCUM codeh = 'h')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PCDSleepObservation-duration-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pcd-sleep-observation"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "93832-4",
        "display" : "Sleep duration"
      }
    ]
  },
  "subject" : {
    "display" : "Jane Smith"
  },
  "effectiveDateTime" : "2022-10-08T09:57:34.2112Z",
  "performer" : [
    {
      "display" : "Jane Smith"
    }
  ],
  "valueQuantity" : {
    "value" : 9,
    "system" : "http://unitsofmeasure.org",
    "code" : "h"
  }
}

```
