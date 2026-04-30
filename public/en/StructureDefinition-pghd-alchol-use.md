# PGHD AlcholUse Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD AlcholUse Profile 

 
This profile defines how to represent Alchol use. 

**Usages:**

* Examples for this Profile: [Observation/pghd-alchol-use-number-of-alcoholic-beverages](Observation-pghd-alchol-use-number-of-alcoholic-beverages.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-alchol-use)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-alchol-use.csv), [Excel](../StructureDefinition-pghd-alchol-use.xlsx), [Schematron](../StructureDefinition-pghd-alchol-use.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-alchol-use",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-alchol-use",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDAlcholUse",
  "title" : "PGHD AlcholUse Profile",
  "status" : "active",
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
  "description" : "This profile defines how to represent Alchol use.",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-alchol-consumption",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "PGHD Alchol Use Profile"
      },
      {
        "id" : "Observation.code.coding:PGHDCode",
        "path" : "Observation.code.coding",
        "sliceName" : "PGHDCode"
      },
      {
        "id" : "Observation.code.coding:PGHDCode.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "numberOfAlcoholicBeverages"
      },
      {
        "id" : "Observation.code.coding:LOINCCode",
        "path" : "Observation.code.coding",
        "sliceName" : "LOINCCode"
      },
      {
        "id" : "Observation.code.coding:LOINCCode.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "74013-4"
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "patternString" : "/d"
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      }
    ]
  }
}

```
