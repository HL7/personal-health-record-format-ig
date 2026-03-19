# Jane Doe Smartphone Photo - Personal Health Records v1.0.0-ballot2

## Example Media: Jane Doe Smartphone Photo

Language: en

Profile: [PhrMedia](StructureDefinition-PhrMedia.md)

**status**: Completed

**type**: Photograph

**subject**: [Jane Doe (official) Female, DoB: 1985-05-15 ( http://hospital.example.org/patient#12345)](Patient-jane-doe.md)

**created**: 2024-12-11 05:22:27+0000

### Contents

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Title** |
| * | image/jpeg | Jane Doe Smartphone Photo |



## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "jane-doe-media",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/PhrMedia"]
  },
  "language" : "en",
  "status" : "completed",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "257444003",
        "display" : "Photograph"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jane-doe"
  },
  "createdDateTime" : "2024-12-11T05:22:27.249Z",
  "content" : {
    "contentType" : "image/jpeg",
    "title" : "Jane Doe Smartphone Photo"
  }
}

```
