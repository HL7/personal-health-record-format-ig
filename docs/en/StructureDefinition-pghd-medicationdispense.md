# PGHD MedicationDispense Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD MedicationDispense Profile 

 
This profile defines the dispensing on the part of a pharmacy. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-medicationdispense)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-medicationdispense.csv), [Excel](../StructureDefinition-pghd-medicationdispense.xlsx), [Schematron](../StructureDefinition-pghd-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-medicationdispense",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-medicationdispense",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDMedicationDispense",
  "title" : "PGHD MedicationDispense Profile",
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
  "description" : "This profile defines the dispensing on the part of a pharmacy.",
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
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense",
        "short" : "PGHD MedicationDispense Profile"
      },
      {
        "id" : "MedicationDispense.status",
        "path" : "MedicationDispense.status",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.subject",
        "path" : "MedicationDispense.subject",
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
        "id" : "MedicationDispense.quantity",
        "path" : "MedicationDispense.quantity",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.whenHandedOver",
        "path" : "MedicationDispense.whenHandedOver",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction",
        "path" : "MedicationDispense.dosageInstruction",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.additionalInstruction",
        "path" : "MedicationDispense.dosageInstruction.additionalInstruction",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.timing",
        "path" : "MedicationDispense.dosageInstruction.timing",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.timing.repeat",
        "path" : "MedicationDispense.dosageInstruction.timing.repeat",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.timing.repeat.bounds[x]",
        "path" : "MedicationDispense.dosageInstruction.timing.repeat.bounds[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.timing.code",
        "path" : "MedicationDispense.dosageInstruction.timing.code",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.method",
        "path" : "MedicationDispense.dosageInstruction.method",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.doseAndRate",
        "path" : "MedicationDispense.dosageInstruction.doseAndRate",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.doseAndRate.type",
        "path" : "MedicationDispense.dosageInstruction.doseAndRate.type",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.doseAndRate.dose[x]",
        "path" : "MedicationDispense.dosageInstruction.doseAndRate.dose[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction.doseAndRate.rate[x]",
        "path" : "MedicationDispense.dosageInstruction.doseAndRate.rate[x]",
        "mustSupport" : true
      }
    ]
  }
}

```
