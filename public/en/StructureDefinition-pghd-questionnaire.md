# PGHD Questionnaire Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD Questionnaire Profile 

 
This profile defines the questionnaire. 

**Usages:**

* Refer to this Profile: [PGHD QuestionnaireResponse Profile](StructureDefinition-pghd-questionnaire-response.md)
* Examples for this Profile: [GAD7](Questionnaire-gad7.md) and [PHQ9](Questionnaire-phq9.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-questionnaire.csv), [Excel](../StructureDefinition-pghd-questionnaire.xlsx), [Schematron](../StructureDefinition-pghd-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-questionnaire",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-questionnaire",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDQuestionnaire",
  "title" : "PGHD Questionnaire Profile",
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
  "description" : "This profile defines the questionnaire.",
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
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Questionnaire",
        "path" : "Questionnaire",
        "short" : "PGHD Questionnaire Profile"
      },
      {
        "id" : "Questionnaire.url",
        "path" : "Questionnaire.url",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.version",
        "path" : "Questionnaire.version",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.name",
        "path" : "Questionnaire.name",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.title",
        "path" : "Questionnaire.title",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.status",
        "path" : "Questionnaire.status",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.experimental",
        "path" : "Questionnaire.experimental",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.subjectType",
        "path" : "Questionnaire.subjectType",
        "max" : "1",
        "fixedCode" : "Patient",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.date",
        "path" : "Questionnaire.date",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.publisher",
        "path" : "Questionnaire.publisher",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.contact",
        "path" : "Questionnaire.contact",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.description",
        "path" : "Questionnaire.description",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.purpose",
        "path" : "Questionnaire.purpose",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.copyright",
        "path" : "Questionnaire.copyright",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.approvalDate",
        "path" : "Questionnaire.approvalDate",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.lastReviewDate",
        "path" : "Questionnaire.lastReviewDate",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.effectivePeriod",
        "path" : "Questionnaire.effectivePeriod",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.code",
        "path" : "Questionnaire.code",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item",
        "path" : "Questionnaire.item",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.linkId",
        "path" : "Questionnaire.item.linkId",
        "mustSupport" : true
      }
    ]
  }
}

```
