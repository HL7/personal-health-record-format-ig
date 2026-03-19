# Jane Doe's Photo Provenance - Personal Health Records v1.0.0-ballot2

## Example Provenance: Jane Doe's Photo Provenance

Language: en

Profile: [PhrProvenance](StructureDefinition-PhrProvenance.md)

Provenance for [Media: status = completed; type = Photograph; created[x] = 2024-12-11 05:22:27+0000](Media-jane-doe-media.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2024-12-11 06:00:00+0000 |

**Agents**

* **Type**: Author
  * **who**: [Jane Doe (official) Female, DoB: 1985-05-15 ( http://hospital.example.org/patient#12345)](Patient-jane-doe.md)
  * **On Behalf Of**: [Jane Doe (official) Female, DoB: 1985-05-15 ( http://hospital.example.org/patient#12345)](Patient-jane-doe.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "jane-doe-media-provenance",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/PhrProvenance"
    ]
  },
  "language" : "en",
  "target" : [
    {
      "reference" : "Media/jane-doe-media"
    }
  ],
  "recorded" : "2024-12-11T06:00:00Z",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code" : "author",
            "display" : "Author"
          }
        ]
      },
      "who" : {
        "reference" : "Patient/jane-doe"
      },
      "onBehalfOf" : {
        "reference" : "Patient/jane-doe"
      }
    }
  ],
  "signature" : [
    {
      "type" : [
        {
          "system" : "urn:iso-astm:E1762-95:2013",
          "code" : "1.2.840.10065.1.12.1.1",
          "display" : "Author's Signature"
        }
      ],
      "when" : "2024-12-11T06:00:00Z",
      "who" : {
        "reference" : "Patient/jane-doe"
      },
      "data" : "c2lnbmF0dXJlCg=="
    }
  ]
}

```
