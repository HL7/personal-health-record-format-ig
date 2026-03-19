# PhrBundle - Personal Health Records v1.0.0-ballot2

## Resource Profile: PhrBundle 

 
Standard PHR profile of the Bundle resource. 

**Usages:**

* Examples for this Profile: [Bundle/PhrBundle-example](Bundle-PhrBundle-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/PhrBundle)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-PhrBundle.csv), [Excel](../StructureDefinition-PhrBundle.xlsx), [Schematron](../StructureDefinition-PhrBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PhrBundle",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/PhrBundle",
  "version" : "1.0.0-ballot2",
  "name" : "PhrBundle",
  "status" : "active",
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
  "description" : "Standard PHR profile of the Bundle resource.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "document"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this.resource"
            }
          ],
          "description" : "Slice based on the entry.resource pattern",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Bundle.entry:primaryPatientResource",
        "path" : "Bundle.entry",
        "sliceName" : "primaryPatientResource",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:primaryPatientResource.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient"
          }
        ]
      },
      {
        "id" : "Bundle.entry:coverPage",
        "path" : "Bundle.entry",
        "sliceName" : "coverPage",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:coverPage.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition"
          }
        ]
      },
      {
        "id" : "Bundle.entry:internationalPatientSummary",
        "path" : "Bundle.entry",
        "sliceName" : "internationalPatientSummary",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:documentReferences",
        "path" : "Bundle.entry",
        "sliceName" : "documentReferences",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:documentReferences.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference"
          }
        ]
      },
      {
        "id" : "Bundle.entry:mediaReferences",
        "path" : "Bundle.entry",
        "sliceName" : "mediaReferences",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:mediaReferences.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Media"
          }
        ]
      },
      {
        "id" : "Bundle.entry:provenanceRecords",
        "path" : "Bundle.entry",
        "sliceName" : "provenanceRecords",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:provenanceRecords.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Provenance"
          }
        ]
      }
    ]
  }
}

```
