# PGHD HearingSensitivity Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD HearingSensitivity Profile 

 
This profile defines how to represent HearingSensitivity. 

**Usages:**

* Refer to this Profile: [PGHD Audiogram Profile](StructureDefinition-pghd-audiogram.md) and [PGHD Workout Profile](StructureDefinition-pghd-workout.md)
* Examples for this Profile: [Observation/pghd-hearingSensitivity-1](Observation-pghd-hearingSensitivity-1.md), [Observation/pghd-hearingSensitivity-2](Observation-pghd-hearingSensitivity-2.md), [Observation/pghd-hearingSensitivity-3](Observation-pghd-hearingSensitivity-3.md) and [Observation/pghd-hearingSensitivity-4](Observation-pghd-hearingSensitivity-4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-hearing-sensitivity)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-hearing-sensitivity.csv), [Excel](../StructureDefinition-pghd-hearing-sensitivity.xlsx), [Schematron](../StructureDefinition-pghd-hearing-sensitivity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-hearing-sensitivity",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-hearing-sensitivity",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDHearingSensitivity",
  "title" : "PGHD HearingSensitivity Profile",
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
  "description" : "This profile defines how to represent HearingSensitivity.",
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
        "short" : "PGHD Hearing Sensitivity Profile"
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
        "fixedCode" : "exam",
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
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:PGHDCode.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "hearingSensitivity",
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
        "id" : "Observation.component:frequency",
        "path" : "Observation.component",
        "sliceName" : "frequency",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:frequency.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:frequency.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes"
      },
      {
        "id" : "Observation.component:frequency.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "frequency"
      },
      {
        "id" : "Observation.component:frequency.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:frequency.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:frequency.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:frequency.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "Hz"
      },
      {
        "id" : "Observation.component:leftEarSensitivity",
        "path" : "Observation.component",
        "sliceName" : "leftEarSensitivity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding",
        "path" : "Observation.component.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            },
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding:PGHDCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "PGHDCode",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding:PGHDCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding:PGHDCode.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "leftEarSensitivity"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding:LOINCCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "LOINCCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.code.coding:LOINCCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:leftEarSensitivity.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:leftEarSensitivity.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:leftEarSensitivity.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "dB"
      },
      {
        "id" : "Observation.component:rightEarSensitivity",
        "path" : "Observation.component",
        "sliceName" : "rightEarSensitivity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding",
        "path" : "Observation.component.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            },
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding:PGHDCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "PGHDCode",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding:PGHDCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/hearing-sensitivity-codes"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding:PGHDCode.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "rightEarSensitivity"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding:LOINCCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "LOINCCode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.code.coding:LOINCCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "patternUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:rightEarSensitivity.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:rightEarSensitivity.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:rightEarSensitivity.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "dB"
      }
    ]
  }
}

```
