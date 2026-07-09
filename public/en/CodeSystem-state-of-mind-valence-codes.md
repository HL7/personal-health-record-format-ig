# State of Mind Valence Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: State of Mind Valence Codes 

 
Codes for state of mind valence 

This Code system is referenced in the definition of the following value sets:

* [ObservationStateOfMindValence](ValueSet-observation-state-of-mind-valence-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "state-of-mind-valence-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-valence-codes",
  "version" : "1.0.0-ballot2",
  "name" : "StateOfMindValence",
  "title" : "State of Mind Valence Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T16:28:41-06:00",
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
  "description" : "Codes for state of mind valence",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "veryUnpleasant",
      "display" : "Very Unpleasant"
    },
    {
      "code" : "unpleasant",
      "display" : "Unpleasant"
    },
    {
      "code" : "slightlyUnpleasant",
      "display" : "Unpleasant"
    },
    {
      "code" : "neutral",
      "display" : "Slightly Neutral"
    },
    {
      "code" : "slightlyPleasant",
      "display" : "Slightly Pleasant"
    },
    {
      "code" : "pleasant",
      "display" : "Pleasant"
    },
    {
      "code" : "veryPleasant",
      "display" : "Very Pleasant"
    }
  ]
}

```
