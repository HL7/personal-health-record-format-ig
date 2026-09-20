# PGHDPatientExample - Personal Health Records v1.0.0-ballot2

## Example Patient: PGHDPatientExample

Language: en

Profile: [PGHD Patient Profile](StructureDefinition-pghd-patient.md)

John Doe Male, DoB: 1990-01-01

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-patient"
    ]
  },
  "language" : "en",
  "name" : [
    {
      "text" : "John Doe",
      "family" : "Doe",
      "given" : ["John"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-01-01"
}

```
