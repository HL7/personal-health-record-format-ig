# Observation Symptom Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Symptom Codes 

 
Codes representing symptom-related measurement items 

 **References** 

* [PGHD Symptom Profile](StructureDefinition-pghd-symptom.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-symptom-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationSymptom",
  "title" : "Observation Symptom Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T16:28:41-06:00",
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
  "description" : "Codes representing symptom-related measurement items",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "concept" : [
          {
            "code" : "abdominalCramps"
          },
          {
            "code" : "acne"
          },
          {
            "code" : "appetiteChanges"
          },
          {
            "code" : "bladderIncontinence"
          },
          {
            "code" : "bloating"
          },
          {
            "code" : "breastPain"
          },
          {
            "code" : "chestTightnessOrPain"
          },
          {
            "code" : "chills"
          },
          {
            "code" : "constipation"
          },
          {
            "code" : "coughing"
          },
          {
            "code" : "diarrhea"
          },
          {
            "code" : "dizziness"
          },
          {
            "code" : "drySkin"
          },
          {
            "code" : "fainting"
          },
          {
            "code" : "fatigue"
          },
          {
            "code" : "fever"
          },
          {
            "code" : "generalizedBodyAche"
          },
          {
            "code" : "hairLoss"
          },
          {
            "code" : "headache"
          },
          {
            "code" : "heartburn"
          },
          {
            "code" : "hotFlashes"
          },
          {
            "code" : "lossOfSmell"
          },
          {
            "code" : "lossOfTaste"
          },
          {
            "code" : "lowerBackPain"
          },
          {
            "code" : "memoryLapse"
          },
          {
            "code" : "moodChanges"
          },
          {
            "code" : "nausea"
          },
          {
            "code" : "nightSweats"
          },
          {
            "code" : "pelvicPain"
          },
          {
            "code" : "rapidPoundingOrFlutteringHeartbeat"
          },
          {
            "code" : "runnyNose"
          },
          {
            "code" : "shortnessOfBreath"
          },
          {
            "code" : "sinusCongestion"
          },
          {
            "code" : "skippedHeartbeat"
          },
          {
            "code" : "sleepChanges"
          },
          {
            "code" : "soreThroat"
          },
          {
            "code" : "vaginalDryness"
          },
          {
            "code" : "vomiting"
          },
          {
            "code" : "wheezing"
          }
        ]
      }
    ]
  }
}

```
