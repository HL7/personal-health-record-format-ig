# ECG Classification Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: ECG Classification Codes 

 
Codes for classification of ECG waveforms 

This Code system is referenced in the definition of the following value sets:

* [ObservationEcgClassificationValueSet](ValueSet-observation-ecg-classification-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ecg-classification-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/ecg-classification-codes",
  "version" : "1.0.0-ballot2",
  "name" : "EcgClassification",
  "title" : "ECG Classification Codes",
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
  "description" : "Codes for classification of ECG waveforms",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "sinusRhythm",
      "display" : "Sinus rhythm",
      "definition" : "The sample exhibits no signs of atrial fibrillation."
    },
    {
      "code" : "atrialFibrillation",
      "display" : "Atrial fibrillation",
      "definition" : "The sample exhibits signs of atrial fibrillation."
    },
    {
      "code" : "inconclusiveHighHeartRate",
      "display" : "Inconclusive high heart rate",
      "definition" : "An unclassifiable sample caused by a rapid heart rate."
    },
    {
      "code" : "inconclusiveLowHeartRate",
      "display" : "Inconclusive low heartrate",
      "definition" : "An unclassifiable sample caused by a heart rate below 50 bpm."
    },
    {
      "code" : "inconclusivePoorReading",
      "display" : "Inconclusive poor reading",
      "definition" : "An unclassifiable sample caused by an unclear signal."
    },
    {
      "code" : "inconclusiveOther",
      "display" : "Inconclusive other",
      "definition" : "An unclassifiable sample caused by an unknown issue."
    },
    {
      "code" : "unrecognized",
      "display" : "Unrecognized",
      "definition" : "A sample classification that this version of HealthKit doesn’t recognize."
    },
    {
      "code" : "notSet",
      "display" : "Not set",
      "definition" : "A sample that doesn’t have an assigned classification."
    }
  ]
}

```
