# Jane Doe PDF Report - Personal Health Records v1.0.0-ballot2

## Example DocumentReference: Jane Doe PDF Report

Language: en

Profile: [PhrDocumentReference](StructureDefinition-PhrDocumentReference.md)

**status**: Current

**subject**: [Jane Doe (official) Female, DoB: 1985-05-15 ( http://hospital.example.org/patient#12345)](Patient-jane-doe.md)

**date**: 2024-12-11 05:22:27+0000

**author**: Dr. Smith

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Title** | **Creation** |
| * | application/pdf | Genomics Report for Jane Doe | 2024-12-11 05:22:27+0000 |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "jane-doe-genomics-document",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/PhrDocumentReference"
    ]
  },
  "language" : "en",
  "status" : "current",
  "subject" : {
    "reference" : "Patient/jane-doe"
  },
  "date" : "2024-12-11T05:22:27.249Z",
  "author" : [
    {
      "display" : "Dr. Smith"
    }
  ],
  "content" : [
    {
      "attachment" : {
        "contentType" : "application/pdf",
        "title" : "Genomics Report for Jane Doe",
        "creation" : "2024-12-11T05:22:27.249Z"
      }
    }
  ]
}

```
