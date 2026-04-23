# PGHD Patient Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD Patient Profile 

 
This profile defines patient information. 

**Usages:**

* Refer to this Profile: [PGHD Activity Profile](StructureDefinition-pghd-activity.md), [PGHD AlcholConsumption Profile](StructureDefinition-pghd-alchol-consumption.md), [PGHD Audiogram Profile](StructureDefinition-pghd-audiogram.md), [PGHD BloodGlucose Profile](StructureDefinition-pghd-blood-glucose.md)...Show 38 more,[PGHD BloodPressure Profile](StructureDefinition-pghd-bloodpressure.md),[PGHD BMI Profile](StructureDefinition-pghd-bmi.md),[PGHD BodyHeight Profile](StructureDefinition-pghd-bodyheight.md),[PGHD Body Measurement Profile](StructureDefinition-pghd-bodymeasurement.md),[PGHD BodyTemperature Profile](StructureDefinition-pghd-bodytemperature.md),[PGHD BodyWeight Profile](StructureDefinition-pghd-bodyweight.md),[PGHD SelfCare Plan Profile](StructureDefinition-pghd-careplan-selfcare.md),[PGHD Diving Profile](StructureDefinition-pghd-diving.md),[PGHD Electrocardiogram Profile](StructureDefinition-pghd-electrocardiogram.md),[PGHD Food Profile](StructureDefinition-pghd-food.md),[PGHD HearingSensitivity Profile](StructureDefinition-pghd-hearing-sensitivity.md),[PGHD Hearing Profile](StructureDefinition-pghd-hearing.md),[PGHD Heartbeat Profile](StructureDefinition-pghd-heartbeat.md),[PGHD HeartRate Profile](StructureDefinition-pghd-heartrate.md),[PGHD Medication Adherence Profile](StructureDefinition-pghd-medication-adherence.md),[PGHD MedicationAdministration Insulin Profile](StructureDefinition-pghd-medicationadministration-insulin.md),[PGHD MedicationDispense Profile](StructureDefinition-pghd-medicationdispense.md),[PGHD Mindfulness Profile](StructureDefinition-pghd-mindfulness.md),[PGHD Mobility Profile](StructureDefinition-pghd-mobility.md),[PGHD Nutrition Profile](StructureDefinition-pghd-nutrition.md),[PGHD Scored Assessment Profile](StructureDefinition-pghd-observation-scored-assessment.md),[PGHD State of Mind Profile](StructureDefinition-pghd-observation-state-of-mind.md),[PGHD OxygenSaturation Profile](StructureDefinition-pghd-oxygenSaturation.md),[PGHD Pregnancy Status Profile](StructureDefinition-pghd-pregnancy-status.md),[PGHD QuestionnaireResponse Profile](StructureDefinition-pghd-questionnaire-response.md),[PGHD ReproductiveHealth Profile](StructureDefinition-pghd-reproductive-health.md),[PGHD RespiratoryRate Profile](StructureDefinition-pghd-respiratoryrate.md),[PGHD Self Care Profile](StructureDefinition-pghd-selfcare.md),[PGHD Sleep Episode Profile](StructureDefinition-pghd-sleep-episode.md),[PGHD Sleep Profile](StructureDefinition-pghd-sleep.md),[PGHD SnoreEvent Profile](StructureDefinition-pghd-snore-event.md),[PGHD SnoreIndex Profile](StructureDefinition-pghd-snore-index.md),[PGHD Symptom Profile](StructureDefinition-pghd-symptom.md),[PGHD Test Result Profile](StructureDefinition-pghd-testresult.md),[PGHD UVExposure Profile](StructureDefinition-pghd-uvexposure.md),[PGHD Vital Signs Profile](StructureDefinition-pghd-vitalsigns.md),[PGHD VoltageMeasurement Profile](StructureDefinition-pghd-voltage-measurement.md)and[PGHD Workout Profile](StructureDefinition-pghd-workout.md)
* Examples for this Profile: [Patient/1](Patient-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-patient)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-patient.csv), [Excel](../StructureDefinition-pghd-patient.xlsx), [Schematron](../StructureDefinition-pghd-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-patient",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-patient",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDPatient",
  "title" : "PGHD Patient Profile",
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
  "description" : "This profile defines patient information.  ",
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "short" : "PGHD Patient Profile"
      }
    ]
  }
}

```
