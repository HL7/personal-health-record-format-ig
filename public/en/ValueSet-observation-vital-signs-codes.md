# Observation Vitalsigns Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Vitalsigns Codes 

 
Codes representing vitalsigns-related measurement items 

 **References** 

* [PGHD BloodPressure Profile](StructureDefinition-pghd-bloodpressure.md)
* [PGHD BodyTemperature Profile](StructureDefinition-pghd-bodytemperature.md)
* [PGHD HeartRate Profile](StructureDefinition-pghd-heartrate.md)
* [PGHD OxygenSaturation Profile](StructureDefinition-pghd-oxygenSaturation.md)
* [PGHD RespiratoryRate Profile](StructureDefinition-pghd-respiratoryrate.md)
* [PGHD Vital Signs Profile](StructureDefinition-pghd-vitalsigns.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-vital-signs-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-vital-signs-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationVitalsignsValueSet",
  "title" : "Observation Vitalsigns Codes",
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
  "description" : "Codes representing vitalsigns-related measurement items",
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
            "code" : "atrialFibrillationBurden"
          },
          {
            "code" : "heartRate"
          },
          {
            "code" : "restingHeartRate"
          },
          {
            "code" : "walkingHeartRateAverage"
          },
          {
            "code" : "heartRateVariabilitySDNN"
          },
          {
            "code" : "heartRateRecoveryOneMinute"
          },
          {
            "code" : "oxygenSaturation"
          },
          {
            "code" : "bodyTemperature"
          },
          {
            "code" : "bloodPressure"
          },
          {
            "code" : "bloodPressureDiastolic"
          },
          {
            "code" : "bloodPressureSystolic"
          },
          {
            "code" : "respiratoryRate"
          },
          {
            "code" : "highHeartRateEvent"
          },
          {
            "code" : "irregularHeartRhythmEvent"
          },
          {
            "code" : "lowHeartRateEvent"
          },
          {
            "code" : "appleSleepingWristTemperature"
          }
        ]
      }
    ]
  }
}

```
