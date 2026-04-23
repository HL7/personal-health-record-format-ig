# PGHD SelfCare Plan Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD SelfCare Plan Profile 

 
This profile defines the SelfCare Plan. 

**Usages:**

* Refer to this Profile: [PGHD QuestionnaireResponse Profile](StructureDefinition-pghd-questionnaire-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-careplan-selfcare)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-careplan-selfcare.csv), [Excel](../StructureDefinition-pghd-careplan-selfcare.xlsx), [Schematron](../StructureDefinition-pghd-careplan-selfcare.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-careplan-selfcare",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-careplan-selfcare",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDCarePlanSelfCare",
  "title" : "PGHD SelfCare Plan Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-23T16:43:45-05:00",
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
  "description" : "This profile defines the SelfCare Plan.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan",
        "short" : "PGHD SelfCare Plan Profile"
      },
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.category",
        "path" : "CarePlan.category",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.description",
        "path" : "CarePlan.description",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
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
        "id" : "CarePlan.period",
        "path" : "CarePlan.period",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.created",
        "path" : "CarePlan.created",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.author",
        "path" : "CarePlan.author",
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
        "id" : "CarePlan.supportingInfo",
        "path" : "CarePlan.supportingInfo",
        "mustSupport" : true
      }
    ]
  }
}

```
