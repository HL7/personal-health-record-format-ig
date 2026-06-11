# Symptom Severity Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: Symptom Severity Codes 

 
Code for degree of symptoms 

This Code system is referenced in the definition of the following value sets:

* [SymptomSeverityValueSet](ValueSet-symptom-severity.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "symptom-severity-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/symptom-severity-codes",
  "version" : "1.0.0-ballot2",
  "name" : "SymptomSeverity",
  "title" : "Symptom Severity Codes",
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
  "description" : "Code for degree of symptoms",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "severe",
      "display" : "Severe",
      "definition" : "The symptom is severe."
    },
    {
      "code" : "mild",
      "display" : "Mild",
      "definition" : "The symptom is mild."
    },
    {
      "code" : "moderate",
      "display" : "Moderate",
      "definition" : "The symptom is moderate."
    },
    {
      "code" : "unspecified",
      "display" : "Unspecified",
      "definition" : "The symptom’s severity is not specified."
    },
    {
      "code" : "notPresent",
      "display" : "Not present",
      "definition" : "The symptom is not present."
    }
  ]
}

```
