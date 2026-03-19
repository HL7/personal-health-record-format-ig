# Jane Doe - Personal Health Records v1.0.0-ballot2

## Example Patient: Jane Doe

Jane Doe Example



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "jane-doe",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/PhrPatient"]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "http://hospital.example.org/patient",
      "value" : "12345"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Doe",
      "given" : ["Jane"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "555-123-4567",
      "use" : "mobile"
    }
  ],
  "gender" : "female",
  "birthDate" : "1985-05-15",
  "address" : [
    {
      "line" : ["123 Main St"],
      "city" : "Springfield",
      "state" : "IL",
      "postalCode" : "62704",
      "country" : "USA"
    }
  ]
}

```
