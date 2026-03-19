# PGHD MedicationAdministration Insulin Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD MedicationAdministration Insulin Profile 

 
This profile defines the administered insulin doses of a patient. 

**Usages:**

* Examples for this Profile: [MedicationAdministration/pghd-medicationadministration-insulin-1](MedicationAdministration-pghd-medicationadministration-insulin-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-medicationadministration-insulin)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-medicationadministration-insulin.csv), [Excel](../StructureDefinition-pghd-medicationadministration-insulin.xlsx), [Schematron](../StructureDefinition-pghd-medicationadministration-insulin.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-medicationadministration-insulin",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-medicationadministration-insulin",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDMedicationAdministrationInsulin",
  "title" : "PGHD MedicationAdministration Insulin Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-12T15:47:36-05:00",
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
  "description" : "This profile defines the administered insulin doses of a patient.",
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
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration",
        "short" : "PGHD MedicationAdministration Insulin Profile"
      },
      {
        "id" : "MedicationAdministration.identifier",
        "path" : "MedicationAdministration.identifier",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.status",
        "path" : "MedicationAdministration.status",
        "fixedCode" : "completed",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.subject",
        "path" : "MedicationAdministration.subject",
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
        "id" : "MedicationAdministration.effective[x]",
        "path" : "MedicationAdministration.effective[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.performer",
        "path" : "MedicationAdministration.performer",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.performer.actor",
        "path" : "MedicationAdministration.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.note",
        "path" : "MedicationAdministration.note",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.dosage",
        "path" : "MedicationAdministration.dosage",
        "mustSupport" : true
      }
    ]
  }
}

```
