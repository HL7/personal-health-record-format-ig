# PCDSleepObservation-stage-example - Personal Health Records v1.0.0-ballot2

## Example Observation: PCDSleepObservation-stage-example

Language: en

Profile: [Patient contributed data: sleep observation](StructureDefinition-pcd-sleep-observation.md)

**status**: Final

**code**: Sleep, function (observable entity)

**subject**: Jane Smith

**effective**: 2022-10-07 22:57:00+0000 --> 2022-10-08 09:13:34+0000

**performer**: Jane Smith

**value**: Asleep (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PCDSleepObservation-stage-example",
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
        "system" : "http://snomed.info/sct",
        "code" : "258158006",
        "display" : "Sleep, function (observable entity)"
      }
    ]
  },
  "subject" : {
    "display" : "Jane Smith"
  },
  "effectivePeriod" : {
    "start" : "2022-10-07T22:57:00Z",
    "end" : "2022-10-08T09:13:34.2112Z"
  },
  "performer" : [
    {
      "display" : "Jane Smith"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "248220008",
        "display" : "Asleep (finding)"
      }
    ]
  }
}

```
