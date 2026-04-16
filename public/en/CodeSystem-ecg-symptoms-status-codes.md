# ECG Symptoms Status Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: ECG Symptoms Status Codes 

 
Code indicating whether or not the user's symptoms are input during ECG waveform acquisition 

This Code system is referenced in the definition of the following value sets:

* [ObservationEcgSymptomsStatusValueSet](ValueSet-observation-ecg-symptoms-status-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ecg-symptoms-status-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/ecg-symptoms-status-codes",
  "version" : "1.0.0-ballot2",
  "name" : "EcgSymptomsStatus",
  "title" : "ECG Symptoms Status Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Code indicating whether or not the user's symptoms are input during ECG waveform acquisition",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "none",
      "display" : "None",
      "definition" : "The user didn’t enter a symptom when they recorded the ECG."
    },
    {
      "code" : "present",
      "display" : "Present",
      "definition" : "The user added a symptom when they recorded the ECG."
    },
    {
      "code" : "notSet",
      "display" : "Not set",
      "definition" : "A sample that doesn’t have an assigned classification."
    }
  ]
}

```
