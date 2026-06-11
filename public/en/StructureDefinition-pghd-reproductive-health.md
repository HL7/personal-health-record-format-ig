# PGHD ReproductiveHealth Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD ReproductiveHealth Profile 

 
This profile defines how to represent ReproductiveHealth. 

**Usages:**

* Refer to this Profile: [PGHD Workout Profile](StructureDefinition-pghd-workout.md)
* Examples for this Profile: [Observation/pghd-reproductive-health-intermenstrual-bleeding](Observation-pghd-reproductive-health-intermenstrual-bleeding.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-reproductive-health)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-reproductive-health.csv), [Excel](../StructureDefinition-pghd-reproductive-health.xlsx), [Schematron](../StructureDefinition-pghd-reproductive-health.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-reproductive-health",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-reproductive-health",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDReproductiveHealth",
  "title" : "PGHD ReproductiveHealth Profile",
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
  "description" : "This profile defines how to represent ReproductiveHealth.",
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
        "short" : "PGHD Reproductive Health Profile"
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
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-reproductive-health-codes"
        }
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.bodySite.coding",
        "path" : "Observation.bodySite.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.bodySite.coding:BodyTemperatureMeasurementLocation",
        "path" : "Observation.bodySite.coding",
        "sliceName" : "BodyTemperatureMeasurementLocation",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/uv/phr/ValueSet/body-temperature-measurement-location"
        }
      },
      {
        "id" : "Observation.bodySite.coding:BodyTemperatureMeasurementLocation.system",
        "path" : "Observation.bodySite.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/uv/phr/CodeSystem/body-temperature-measurement-location-codes"
      },
      {
        "id" : "Observation.bodySite.coding:LOINCCode",
        "path" : "Observation.bodySite.coding",
        "sliceName" : "LOINCCode",
        "min" : 0,
        "max" : "1"
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
      }
    ]
  }
}

```
