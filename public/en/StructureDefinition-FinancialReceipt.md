# Financial Receipt - Personal Health Records v1.0.0-ballot2

## Logical Model: Financial Receipt 

 
A logical model for over-the-counter (OTC) health-related purchase receipts. Captures expenses for items such as pharmacy purchases, medical supplies, copays, and wellness products that may not generate a formal insurance Claim resource. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/FinancialReceipt)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FinancialReceipt.csv), [Excel](../StructureDefinition-FinancialReceipt.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FinancialReceipt",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/FinancialReceipt",
  "version" : "1.0.0-ballot2",
  "name" : "FinancialReceipt",
  "title" : "Financial Receipt",
  "status" : "active",
  "date" : "2026-04-16T16:46:43-05:00",
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
  "description" : "A logical model for over-the-counter (OTC) health-related purchase receipts. Captures expenses for items such as pharmacy purchases, medical supplies, copays, and wellness products that may not generate a formal insurance Claim resource.",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/fhir/uv/phr/StructureDefinition/FinancialReceipt",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FinancialReceipt",
        "path" : "FinancialReceipt",
        "short" : "Financial Receipt",
        "definition" : "A logical model for over-the-counter (OTC) health-related purchase receipts. Captures expenses for items such as pharmacy purchases, medical supplies, copays, and wellness products that may not generate a formal insurance Claim resource."
      },
      {
        "id" : "FinancialReceipt.subject",
        "path" : "FinancialReceipt.subject",
        "short" : "The patient or person that purchased the item",
        "definition" : "The patient or person that purchased the item",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "FinancialReceipt.date",
        "path" : "FinancialReceipt.date",
        "short" : "The date of the transaction",
        "definition" : "The date of the transaction",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.vendor",
        "path" : "FinancialReceipt.vendor",
        "short" : "Vendor or merchant name",
        "definition" : "Vendor or merchant name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.category",
        "path" : "FinancialReceipt.category",
        "short" : "Category of expense (e.g. pharmacy, medical supply, copay, wellness)",
        "definition" : "Category of expense (e.g. pharmacy, medical supply, copay, wellness)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.item",
        "path" : "FinancialReceipt.item",
        "short" : "Line items on the receipt",
        "definition" : "Line items on the receipt",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.item.description",
        "path" : "FinancialReceipt.item.description",
        "short" : "Item description",
        "definition" : "Item description",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.item.quantity",
        "path" : "FinancialReceipt.item.quantity",
        "short" : "Quantity purchased",
        "definition" : "Quantity purchased",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      },
      {
        "id" : "FinancialReceipt.item.unitPrice",
        "path" : "FinancialReceipt.item.unitPrice",
        "short" : "Price per unit",
        "definition" : "Price per unit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.item.amount",
        "path" : "FinancialReceipt.item.amount",
        "short" : "Line item total",
        "definition" : "Line item total",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.subtotal",
        "path" : "FinancialReceipt.subtotal",
        "short" : "Subtotal before tax",
        "definition" : "Subtotal before tax",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.taxAmount",
        "path" : "FinancialReceipt.taxAmount",
        "short" : "Tax amount",
        "definition" : "Tax amount",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.total",
        "path" : "FinancialReceipt.total",
        "short" : "Total amount paid",
        "definition" : "Total amount paid",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.paymentMethod",
        "path" : "FinancialReceipt.paymentMethod",
        "short" : "Payment method (e.g. cash, credit, debit, HSA, FSA)",
        "definition" : "Payment method (e.g. cash, credit, debit, HSA, FSA)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FinancialReceipt.relatedClaim",
        "path" : "FinancialReceipt.relatedClaim",
        "short" : "Related insurance claim, if any",
        "definition" : "Related insurance claim, if any",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Claim"]
          }
        ]
      }
    ]
  }
}

```
