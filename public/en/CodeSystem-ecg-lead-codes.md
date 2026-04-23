# ECG Lead Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: ECG Lead Codes 

 
Codes for ECG induction 

This Code system is referenced in the definition of the following value sets:

* [ObservationEcgLeadValueSet](ValueSet-observation-ecg-lead-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ecg-lead-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/ecg-lead-codes",
  "version" : "1.0.0-ballot2",
  "name" : "EcgLead",
  "title" : "ECG Lead Codes",
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
  "description" : "Codes for ECG induction",
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
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "appleWatchSimilarToLeadI",
      "display" : "appleWatchSimilarToLeadI"
    },
    {
      "code" : "I",
      "display" : "I"
    },
    {
      "code" : "II",
      "display" : "II"
    },
    {
      "code" : "III",
      "display" : "III"
    },
    {
      "code" : "aVR",
      "display" : "aVR"
    },
    {
      "code" : "aVL",
      "display" : "aVL"
    },
    {
      "code" : "aVF",
      "display" : "aVF"
    },
    {
      "code" : "V1",
      "display" : "V1"
    },
    {
      "code" : "V2",
      "display" : "V2"
    },
    {
      "code" : "V3",
      "display" : "V3"
    },
    {
      "code" : "V4",
      "display" : "V4"
    },
    {
      "code" : "V5",
      "display" : "V5"
    },
    {
      "code" : "V6",
      "display" : "V6"
    }
  ]
}

```
