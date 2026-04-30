# PGHD Sleep Episode Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD Sleep Episode Profile 

 
This profile defines how to represent Sleep episode. 

**Usages:**

* Examples for this Profile: [Observation/pghd-sleep-episode-1](Observation-pghd-sleep-episode-1.md), [Observation/pghd-sleep-episode-2](Observation-pghd-sleep-episode-2.md), [Observation/pghd-sleep-episode-core-sleep-1](Observation-pghd-sleep-episode-core-sleep-1.md), [Observation/pghd-sleep-episode-core-sleep-2](Observation-pghd-sleep-episode-core-sleep-2.md)...Show 4 more,[Observation/pghd-sleep-episode-deep-sleep-1](Observation-pghd-sleep-episode-deep-sleep-1.md),[Observation/pghd-sleep-episode-deep-sleep-2](Observation-pghd-sleep-episode-deep-sleep-2.md),[Observation/pghd-sleep-episode-latency-to-sleep-onset-1](Observation-pghd-sleep-episode-latency-to-sleep-onset-1.md)and[Observation/pghd-sleep-episode-latency-to-sleep-onset-2](Observation-pghd-sleep-episode-latency-to-sleep-onset-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-sleep-episode)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-sleep-episode.csv), [Excel](../StructureDefinition-pghd-sleep-episode.xlsx), [Schematron](../StructureDefinition-pghd-sleep-episode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-sleep-episode",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-sleep-episode",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDSleepEpisode",
  "title" : "PGHD Sleep Episode Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-23T17:08:04-05:00",
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
  "description" : "This profile defines how to represent Sleep episode.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "PGHD Sleep Episode Profile"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:ObservationCategory",
        "path" : "Observation.category",
        "sliceName" : "ObservationCategory",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.category:ObservationCategory.coding.system",
        "path" : "Observation.category.coding.system",
        "min" : 1,
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:ObservationCategory.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "social-history",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:ObservationCategory.coding.display",
        "path" : "Observation.category.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.code.coding:PGHDCode",
        "path" : "Observation.code.coding",
        "sliceName" : "PGHDCode",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding:PGHDCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:PGHDCode.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "sleepEpisode",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:PGHDCode.display",
        "path" : "Observation.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:LOINCCode",
        "path" : "Observation.code.coding",
        "sliceName" : "LOINCCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding:LOINCCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-device"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code.coding.system"
            },
            {
              "type" : "value",
              "path" : "code.coding.code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:latencyToSleepOnset",
        "path" : "Observation.component",
        "sliceName" : "latencyToSleepOnset",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "latencyToSleepOnset",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToSleepOnset.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising",
        "path" : "Observation.component",
        "sliceName" : "latencyToArising",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:latencyToArising.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "latencyToArising",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:latencyToArising.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:latencyToArising.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime",
        "path" : "Observation.component",
        "sliceName" : "totalSleepTime",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:totalSleepTime.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "totalSleepTime",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration",
        "path" : "Observation.component",
        "sliceName" : "coreSleepDuration",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:coreSleepDuration.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "coreSleepDuration",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:coreSleepDuration.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepDuration.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage",
        "path" : "Observation.component",
        "sliceName" : "coreSleepPercentage",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:coreSleepPercentage.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "coreSleepPercentage",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:coreSleepPercentage.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:coreSleepPercentage.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration",
        "path" : "Observation.component",
        "sliceName" : "deepSleepDuration",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:deepSleepDuration.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "deepSleepDuration",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:deepSleepDuration.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepDuration.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage",
        "path" : "Observation.component",
        "sliceName" : "deepSleepPercentage",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:deepSleepPercentage.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "deepSleepPercentage",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:deepSleepPercentage.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:deepSleepPercentage.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration",
        "path" : "Observation.component",
        "sliceName" : "remSleepDuration",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:remSleepDuration.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "remSleepDuration",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:remSleepDuration.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepDuration.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage",
        "path" : "Observation.component",
        "sliceName" : "remSleepPercentage",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:remSleepPercentage.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "remSleepPercentage",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:remSleepPercentage.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:remSleepPercentage.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset",
        "path" : "Observation.component",
        "sliceName" : "wakeAfterSleepOnset",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "wakeAfterSleepOnset",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:wakeAfterSleepOnset.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:numberOfAwakenings",
        "path" : "Observation.component",
        "sliceName" : "numberOfAwakenings",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:numberOfAwakenings.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:numberOfAwakenings.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:numberOfAwakenings.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "numberOfAwakenings",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:numberOfAwakenings.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:numberOfAwakenings.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage",
        "path" : "Observation.component",
        "sliceName" : "sleepEfficiencyPercentage",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "sleepEfficiencyPercentage",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.value[x].value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sleepEfficiencyPercentage.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:isMainSleep",
        "path" : "Observation.component",
        "sliceName" : "isMainSleep",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:isMainSleep.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:isMainSleep.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/sleep-episode-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:isMainSleep.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "isMainSleep",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:isMainSleep.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:isMainSleep.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
