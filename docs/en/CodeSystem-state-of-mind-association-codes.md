# State of Mind Association Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: State of Mind Association Codes 

 
Codes for state of mind association 

This Code system is referenced in the definition of the following value sets:

* [ObservationStateOfMindAssociation](ValueSet-observation-state-of-mind-association-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "state-of-mind-association-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-association-codes",
  "version" : "1.0.0-ballot2",
  "name" : "StateOfMindAssociation",
  "title" : "State of Mind Association Codes",
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
  "description" : "Codes for state of mind association",
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
  "count" : 18,
  "concept" : [
    {
      "code" : "community",
      "display" : "Community"
    },
    {
      "code" : "currentEvents",
      "display" : "Current Events"
    },
    {
      "code" : "dating",
      "display" : "Dating"
    },
    {
      "code" : "education",
      "display" : "Education"
    },
    {
      "code" : "family",
      "display" : "Family"
    },
    {
      "code" : "fitness",
      "display" : "Fitness"
    },
    {
      "code" : "friends",
      "display" : "Friends"
    },
    {
      "code" : "health",
      "display" : "Health"
    },
    {
      "code" : "hobbies",
      "display" : "Hobbies"
    },
    {
      "code" : "identity",
      "display" : "Identity"
    },
    {
      "code" : "money",
      "display" : "Money"
    },
    {
      "code" : "partner",
      "display" : "Partner"
    },
    {
      "code" : "selfCare",
      "display" : "Self-Care"
    },
    {
      "code" : "spirituality",
      "display" : "Spirituality"
    },
    {
      "code" : "tasks",
      "display" : "Tasks"
    },
    {
      "code" : "travel",
      "display" : "Travel"
    },
    {
      "code" : "weather",
      "display" : "Weather"
    },
    {
      "code" : "work",
      "display" : "Work"
    }
  ]
}

```
