# Sleep Episode Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: Sleep Episode Codes 

 
Codes for sleep episodes 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sleep-episode-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
  "version" : "1.0.0-ballot2",
  "name" : "SleepEpisode",
  "title" : "Sleep Episode Codes",
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
  "description" : "Codes for sleep episodes",
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
  "count" : 13,
  "concept" : [
    {
      "code" : "latencyToSleepOnset",
      "display" : "Latency to sleep onset"
    },
    {
      "code" : "latencyToArising",
      "display" : "Latency to arising"
    },
    {
      "code" : "totalSleepTime",
      "display" : "Total sleep time"
    },
    {
      "code" : "coreSleepDuration",
      "display" : "Core sleep Duration"
    },
    {
      "code" : "coreSleepPercentage",
      "display" : "Core sleep Percentage"
    },
    {
      "code" : "deepSleepDuration",
      "display" : "Deep sleep duration"
    },
    {
      "code" : "deepSleepPercentage",
      "display" : "Deep sleep percentage"
    },
    {
      "code" : "remSleepDuration",
      "display" : "Rem sleep duration"
    },
    {
      "code" : "remSleepPercentage",
      "display" : "Rem sleep percentage"
    },
    {
      "code" : "wakeAfterSleepOnset",
      "display" : "Wake after sleep onset"
    },
    {
      "code" : "numberOfAwakenings",
      "display" : "Number of awakenings"
    },
    {
      "code" : "sleepEfficiencyPercentage",
      "display" : "Sleep efficiency percentage"
    },
    {
      "code" : "isMainSleep",
      "display" : "Is main sleep"
    }
  ]
}

```
