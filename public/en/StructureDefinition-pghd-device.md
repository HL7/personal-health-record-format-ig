# PGHD Device Profile - Personal Health Records v1.0.0-ballot2

## Resource Profile: PGHD Device Profile 

 
This profile defines the device used for the measurement. 

**Usages:**

* Refer to this Profile: [PGHD Activity Profile](StructureDefinition-pghd-activity.md), [PGHD AlcholConsumption Profile](StructureDefinition-pghd-alchol-consumption.md), [PGHD Audiogram Profile](StructureDefinition-pghd-audiogram.md), [PGHD BloodGlucose Profile](StructureDefinition-pghd-blood-glucose.md)...Show 26 more,[PGHD Body Measurement Profile](StructureDefinition-pghd-bodymeasurement.md),[PGHD Diving Profile](StructureDefinition-pghd-diving.md),[PGHD Electrocardiogram Profile](StructureDefinition-pghd-electrocardiogram.md),[PGHD Food Profile](StructureDefinition-pghd-food.md),[PGHD HearingSensitivity Profile](StructureDefinition-pghd-hearing-sensitivity.md),[PGHD Hearing Profile](StructureDefinition-pghd-hearing.md),[PGHD Heartbeat Profile](StructureDefinition-pghd-heartbeat.md),[PGHD Medication Adherence Profile](StructureDefinition-pghd-medication-adherence.md),[PGHD Mindfulness Profile](StructureDefinition-pghd-mindfulness.md),[PGHD Mobility Profile](StructureDefinition-pghd-mobility.md),[PGHD Nutrition Profile](StructureDefinition-pghd-nutrition.md),[PGHD Scored Assessment Profile](StructureDefinition-pghd-observation-scored-assessment.md),[PGHD State of Mind Profile](StructureDefinition-pghd-observation-state-of-mind.md),[PGHD Pregnancy Status Profile](StructureDefinition-pghd-pregnancy-status.md),[PGHD ReproductiveHealth Profile](StructureDefinition-pghd-reproductive-health.md),[PGHD Self Care Profile](StructureDefinition-pghd-selfcare.md),[PGHD Sleep Episode Profile](StructureDefinition-pghd-sleep-episode.md),[PGHD Sleep Profile](StructureDefinition-pghd-sleep.md),[PGHD SnoreEvent Profile](StructureDefinition-pghd-snore-event.md),[PGHD SnoreIndex Profile](StructureDefinition-pghd-snore-index.md),[PGHD Symptom Profile](StructureDefinition-pghd-symptom.md),[PGHD Test Result Profile](StructureDefinition-pghd-testresult.md),[PGHD UVExposure Profile](StructureDefinition-pghd-uvexposure.md),[PGHD Vital Signs Profile](StructureDefinition-pghd-vitalsigns.md),[PGHD VoltageMeasurement Profile](StructureDefinition-pghd-voltage-measurement.md)and[PGHD Workout Profile](StructureDefinition-pghd-workout.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/pghd-device)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pghd-device.csv), [Excel](../StructureDefinition-pghd-device.xlsx), [Schematron](../StructureDefinition-pghd-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pghd-device",
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
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-device",
  "version" : "1.0.0-ballot2",
  "name" : "PGHDDevice",
  "title" : "PGHD Device Profile",
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
  "description" : "This profile defines the device used for the measurement.  ",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device",
        "short" : "PGHD Device Profile"
      },
      {
        "id" : "Device.udiCarrier",
        "path" : "Device.udiCarrier",
        "mustSupport" : true
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "mustSupport" : true
      },
      {
        "id" : "Device.version",
        "path" : "Device.version",
        "mustSupport" : true
      }
    ]
  }
}

```
