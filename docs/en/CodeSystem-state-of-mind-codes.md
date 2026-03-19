# State of Mind Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: State of Mind Codes 

 
Code for state of mind 

This Code system is referenced in the definition of the following value sets:

* [ObservationStateOfMind](ValueSet-observation-state-of-mind-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "state-of-mind-codes",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pe"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
  "version" : "1.0.0-ballot2",
  "name" : "StateOfMind",
  "title" : "State of Mind Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-12T15:47:36-05:00",
  "publisher" : "HL7 International / Patient Empowerment",
  "contact" : [
    {
      "name" : "HL7 International / Patient Empowerment",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/patientempowerment"
        }
      ]
    }
  ],
  "description" : "Code for state of mind",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "kind",
      "display" : "Kind"
    },
    {
      "code" : "valence",
      "display" : "Valence"
    },
    {
      "code" : "valenceClassification",
      "display" : "Valence Classification"
    },
    {
      "code" : "labels",
      "display" : "Labels"
    },
    {
      "code" : "associations",
      "display" : "Associations"
    }
  ]
}

```
