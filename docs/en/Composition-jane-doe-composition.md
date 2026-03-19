# Jane Doe Composition - Personal Health Records v1.0.0-ballot2

## Example Composition: Jane Doe Composition

Summary of Jane Doe's patient information including name, contact, gender, birth date, and address.



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "jane-doe-composition",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/PhrComposition"
    ]
  },
  "language" : "en",
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11503-0",
        "display" : "Medical records"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jane-doe"
  },
  "date" : "2024-12-10",
  "author" : [
    {
      "reference" : "Patient/jane-doe"
    }
  ],
  "title" : "Jane Doe Patient Summary",
  "section" : [
    {
      "title" : "Related Documents",
      "entry" : [
        {
          "reference" : "https://example.org/baseR4/DocumentReference/jane-doe-genomics-document"
        },
        {
          "reference" : "https://example.org/baseR4/Media/jane-doe-media"
        }
      ]
    }
  ]
}

```
