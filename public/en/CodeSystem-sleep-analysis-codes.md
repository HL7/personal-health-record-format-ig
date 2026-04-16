# Sleep Analysis Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: Sleep Analysis Codes 

 
Codes for stages of sleep 

This Code system is referenced in the definition of the following value sets:

* [SleepAnalysisValueSet](ValueSet-sleep-analysis.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sleep-analysis-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-analysis-codes",
  "version" : "1.0.0-ballot2",
  "name" : "SleepAnalysis",
  "title" : "Sleep Analysis Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-16T16:46:43-05:00",
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
  "description" : "Codes for stages of sleep",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "inBed",
      "display" : "In bed",
      "definition" : "The user is in bed."
    },
    {
      "code" : "asleepUnspecified",
      "display" : "Asleep unspecified",
      "definition" : "The user is asleep, but the specific stage isn’t known."
    },
    {
      "code" : "awake",
      "display" : "Awake",
      "definition" : "The user is awake."
    },
    {
      "code" : "asleepREM",
      "display" : "Asleep REM",
      "definition" : "The user is in REM sleep."
    },
    {
      "code" : "asleepCore",
      "display" : "Asleep core",
      "definition" : "The user is in light or intermediate sleep."
    },
    {
      "code" : "asleepDeep",
      "display" : "Asleep deep",
      "definition" : "The user is in deep sleep."
    }
  ]
}

```
