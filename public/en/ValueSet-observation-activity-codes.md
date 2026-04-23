# Observation Activity Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Activity Codes 

 
Codes representing activity-related measurement items 

 **References** 

* [PGHD Activity Profile](StructureDefinition-pghd-activity.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-activity-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-activity-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationActivity",
  "title" : "Observation Activity Codes",
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
  "description" : "Codes representing activity-related measurement items",
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
            "code" : "stepCount"
          },
          {
            "code" : "distanceWalkingRunning"
          },
          {
            "code" : "runningGroundContactTime"
          },
          {
            "code" : "runningPower"
          },
          {
            "code" : "runningSpeed"
          },
          {
            "code" : "runningStrideLength"
          },
          {
            "code" : "runningVerticalOscillation"
          },
          {
            "code" : "distanceCycling"
          },
          {
            "code" : "pushCount"
          },
          {
            "code" : "distanceWheelchair"
          },
          {
            "code" : "swimmingStrokeCount"
          },
          {
            "code" : "distanceSwimming"
          },
          {
            "code" : "distanceDownhillSnowSports"
          },
          {
            "code" : "basalEnergyBurned"
          },
          {
            "code" : "activeEnergyBurned"
          },
          {
            "code" : "totalEnergyBurned"
          },
          {
            "code" : "flightsClimbed"
          },
          {
            "code" : "nikeFuel"
          },
          {
            "code" : "appleExerciseTime"
          },
          {
            "code" : "appleMoveTime"
          },
          {
            "code" : "appleStandTime"
          },
          {
            "code" : "vo2Max"
          },
          {
            "code" : "lowCardioFitnessEvent"
          },
          {
            "code" : "appleStandHour"
          },
          {
            "code" : "cyclingCadence"
          },
          {
            "code" : "cyclingFunctionalThresholdPower"
          },
          {
            "code" : "cyclingPower"
          },
          {
            "code" : "cyclingSpeed"
          },
          {
            "code" : "distance"
          },
          {
            "code" : "elevationGained"
          },
          {
            "code" : "physicalEffort"
          },
          {
            "code" : "power"
          },
          {
            "code" : "stepsCadence"
          },
          {
            "code" : "speed"
          },
          {
            "code" : "pace"
          },
          {
            "code" : "moderateActivity"
          },
          {
            "code" : "vigorousActivity"
          },
          {
            "code" : "moderateToVigorousActivity"
          },
          {
            "code" : "met"
          },
          {
            "code" : "metByStandardRmr"
          }
        ]
      }
    ]
  }
}

```
