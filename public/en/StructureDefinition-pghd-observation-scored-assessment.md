# PGHD Scored Assessment Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD Scored Assessment Profile 

 
This profile defines the implementation of the Scored Assessment. 

**Usages:**

* Examples for this Profile: [Observation/ScoredAssessmentGAD7Example](Observation-ScoredAssessmentGAD7Example.md) and [Observation/ScoredAssessmentPHQ9Example](Observation-ScoredAssessmentPHQ9Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-observation-scored-assessment)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-observation-scored-assessment.csv), [Excel](../StructureDefinition-pghd-observation-scored-assessment.xlsx), [Schematron](../StructureDefinition-pghd-observation-scored-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-observation-scored-assessment",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-observation-scored-assessment",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDObservationScoredAssessment",
  "title" : "PGHD Scored Assessment Profile",
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
  "description" : "This profile defines the implementation of the Scored Assessment.",
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
        "short" : "PGHD Scored Assessment Profile"
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
        "fixedCode" : "survey",
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
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-mind-codes"
        }
      },
      {
        "id" : "Observation.code.coding:PGHDCode.system",
        "path" : "Observation.code.coding.system",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:PGHDCode.code",
        "path" : "Observation.code.coding.code",
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
            "code" : "dateTime"
          },
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
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:score",
        "path" : "Observation.component",
        "sliceName" : "score",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:score.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-scored-assessment-score-codes"
        }
      },
      {
        "id" : "Observation.component:score.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:score.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://loinc.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:score.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:score.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:score.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk",
        "path" : "Observation.component",
        "sliceName" : "gad7-risk",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-scored-assessment-codes"
        }
      },
      {
        "id" : "Observation.component:gad7-risk.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gad7-risk.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/scored-assessment-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "gad7Risk",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-gad7-risk-codes"
        }
      },
      {
        "id" : "Observation.component:gad7-risk.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gad7-risk.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/gad7-risk-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gad7-risk.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk",
        "path" : "Observation.component",
        "sliceName" : "phq9-risk",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-scored-assessment-codes"
        }
      },
      {
        "id" : "Observation.component:phq9-risk.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:phq9-risk.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/scored-assessment-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "phq9Risk",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-phq9-risk-codes"
        }
      },
      {
        "id" : "Observation.component:phq9-risk.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:phq9-risk.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/phq9-risk-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:phq9-risk.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      }
    ]
  }
}

```
