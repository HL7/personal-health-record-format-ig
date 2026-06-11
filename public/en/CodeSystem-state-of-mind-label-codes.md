# State of Mind Label Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: State of Mind Label Codes 

 
Codes for state of mind label 

This Code system is referenced in the definition of the following value sets:

* [ObservationStateOfMindLabel](ValueSet-observation-state-of-mind-label-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "state-of-mind-label-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-label-codes",
  "version" : "1.0.0-ballot2",
  "name" : "StateOfMindLabel",
  "title" : "State of Mind Label Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T13:06:45-06:00",
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
  "description" : "Codes for state of mind label",
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
  "count" : 38,
  "concept" : [
    {
      "code" : "amazed",
      "display" : "Amazed"
    },
    {
      "code" : "amused",
      "display" : "Amused"
    },
    {
      "code" : "angry",
      "display" : "Angry"
    },
    {
      "code" : "annoyed",
      "display" : "Annoyed"
    },
    {
      "code" : "anxious",
      "display" : "Anxious"
    },
    {
      "code" : "ashamed",
      "display" : "Ashamed"
    },
    {
      "code" : "brave",
      "display" : "Brave"
    },
    {
      "code" : "calm",
      "display" : "Calm"
    },
    {
      "code" : "confident",
      "display" : "Confident"
    },
    {
      "code" : "content",
      "display" : "Content"
    },
    {
      "code" : "disappointed",
      "display" : "Disappointed"
    },
    {
      "code" : "discouraged",
      "display" : "Discouraged"
    },
    {
      "code" : "disgusted",
      "display" : "Disgusted"
    },
    {
      "code" : "drained",
      "display" : "Drained"
    },
    {
      "code" : "embarrassed",
      "display" : "Embarrassed"
    },
    {
      "code" : "excited",
      "display" : "Excited"
    },
    {
      "code" : "frustrated",
      "display" : "Frustrated"
    },
    {
      "code" : "grateful",
      "display" : "Grateful"
    },
    {
      "code" : "guilty",
      "display" : "Guilty"
    },
    {
      "code" : "happy",
      "display" : "Happy"
    },
    {
      "code" : "hopeful",
      "display" : "Hopeful"
    },
    {
      "code" : "hopeless",
      "display" : "Hopeless"
    },
    {
      "code" : "indifferent",
      "display" : "Indifferent"
    },
    {
      "code" : "irritated",
      "display" : "Irritated"
    },
    {
      "code" : "jealous",
      "display" : "Jealous"
    },
    {
      "code" : "joyful",
      "display" : "Joyful"
    },
    {
      "code" : "lonely",
      "display" : "Lonely"
    },
    {
      "code" : "overwhelmed",
      "display" : "Overwhelmed"
    },
    {
      "code" : "passionate",
      "display" : "Passionate"
    },
    {
      "code" : "peaceful",
      "display" : "Peaceful"
    },
    {
      "code" : "proud",
      "display" : "Proud"
    },
    {
      "code" : "relieved",
      "display" : "Relieved"
    },
    {
      "code" : "sad",
      "display" : "Sad"
    },
    {
      "code" : "satisfied",
      "display" : "Satisfied"
    },
    {
      "code" : "scared",
      "display" : "Scared"
    },
    {
      "code" : "stressed",
      "display" : "Stressed"
    },
    {
      "code" : "surprised",
      "display" : "Surprised"
    },
    {
      "code" : "worried",
      "display" : "Worried"
    }
  ]
}

```
