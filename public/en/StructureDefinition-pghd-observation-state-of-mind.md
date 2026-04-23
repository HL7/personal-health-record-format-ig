# PGHD State of Mind Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD State of Mind Profile 

 
This profile defines the implementation of the State of Mind. 

**Usages:**

* Examples for this Profile: [Observation/StateOfMind2Example](Observation-StateOfMind2Example.md) and [Observation/StateOfMindExample](Observation-StateOfMindExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-observation-state-of-mind)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-observation-state-of-mind.csv), [Excel](../StructureDefinition-pghd-observation-state-of-mind.xlsx), [Schematron](../StructureDefinition-pghd-observation-state-of-mind.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-observation-state-of-mind",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-observation-state-of-mind",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDObservationStateOfMind",
  "title" : "PGHD State of Mind Profile",
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
  "description" : "This profile defines the implementation of the State of Mind.",
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
        "short" : "PGHD State of Mind Profile"
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
        "fixedCode" : "stateOfMind",
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
        "min" : 5
      },
      {
        "id" : "Observation.component:kind",
        "path" : "Observation.component",
        "sliceName" : "kind",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-codes"
        }
      },
      {
        "id" : "Observation.component:kind.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:kind.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "kind",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-kind-codes"
        }
      },
      {
        "id" : "Observation.component:kind.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:kind.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-kind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:kind.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valence",
        "path" : "Observation.component",
        "sliceName" : "valence",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valence.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-codes"
        }
      },
      {
        "id" : "Observation.component:valence.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:valence.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valence.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "valence",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valence.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valence.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:valenceClassification",
        "path" : "Observation.component",
        "sliceName" : "valenceClassification",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-codes"
        }
      },
      {
        "id" : "Observation.component:valenceClassification.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:valenceClassification.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "valenceClassification",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-valence-codes"
        }
      },
      {
        "id" : "Observation.component:valenceClassification.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:valenceClassification.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-valence-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:valenceClassification.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels",
        "path" : "Observation.component",
        "sliceName" : "labels",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-codes"
        }
      },
      {
        "id" : "Observation.component:labels.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:labels.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "labels",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-label-codes"
        }
      },
      {
        "id" : "Observation.component:labels.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1
      },
      {
        "id" : "Observation.component:labels.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-label-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:labels.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations",
        "path" : "Observation.component",
        "sliceName" : "associations",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-codes"
        }
      },
      {
        "id" : "Observation.component:associations.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:associations.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "associations",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-state-of-mind-association-codes"
        }
      },
      {
        "id" : "Observation.component:associations.value[x].coding",
        "path" : "Observation.component.value[x].coding",
        "min" : 1
      },
      {
        "id" : "Observation.component:associations.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/state-of-mind-association-codes",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.value[x].coding.code",
        "path" : "Observation.component.value[x].coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:associations.value[x].coding.display",
        "path" : "Observation.component.value[x].coding.display",
        "mustSupport" : true
      }
    ]
  }
}

```
