# Observation Workout Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Workout Codes 

 
Codes representing workout-related measurement items 

 **References** 

* [PGHD Workout Profile](StructureDefinition-pghd-workout.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-workout-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-workout-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationWorkout",
  "title" : "Observation Workout Codes",
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
  "description" : "Codes representing workout-related measurement items",
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
            "code" : "americanFootball"
          },
          {
            "code" : "archery"
          },
          {
            "code" : "australianFootball"
          },
          {
            "code" : "badminton"
          },
          {
            "code" : "barre"
          },
          {
            "code" : "baseball"
          },
          {
            "code" : "basketball"
          },
          {
            "code" : "bowling"
          },
          {
            "code" : "boxing"
          },
          {
            "code" : "cardioDance"
          },
          {
            "code" : "climbing"
          },
          {
            "code" : "cooldown"
          },
          {
            "code" : "coreTraining"
          },
          {
            "code" : "cricket"
          },
          {
            "code" : "crossCountrySkiing"
          },
          {
            "code" : "crossTraining"
          },
          {
            "code" : "curling"
          },
          {
            "code" : "cycling"
          },
          {
            "code" : "dance"
          },
          {
            "code" : "danceInspiredTraining"
          },
          {
            "code" : "discSports"
          },
          {
            "code" : "downhillSkiing"
          },
          {
            "code" : "elliptical"
          },
          {
            "code" : "equestrianSports"
          },
          {
            "code" : "fencing"
          },
          {
            "code" : "fishing"
          },
          {
            "code" : "fitnessGaming"
          },
          {
            "code" : "flexibility"
          },
          {
            "code" : "functionalStrengthTraining"
          },
          {
            "code" : "golf"
          },
          {
            "code" : "gymnastics"
          },
          {
            "code" : "handball"
          },
          {
            "code" : "handCycling"
          },
          {
            "code" : "highIntensityIntervalTraining"
          },
          {
            "code" : "hiking"
          },
          {
            "code" : "hockey"
          },
          {
            "code" : "hunting"
          },
          {
            "code" : "jumpRope"
          },
          {
            "code" : "kickboxing"
          },
          {
            "code" : "lacrosse"
          },
          {
            "code" : "martialArts"
          },
          {
            "code" : "mindAndBody"
          },
          {
            "code" : "mixedCardio"
          },
          {
            "code" : "mixedMetabolicCardioTraining"
          },
          {
            "code" : "other"
          },
          {
            "code" : "paddleSports"
          },
          {
            "code" : "pickleball"
          },
          {
            "code" : "pilates"
          },
          {
            "code" : "play"
          },
          {
            "code" : "preparationAndRecovery"
          },
          {
            "code" : "racquetball"
          },
          {
            "code" : "rowing"
          },
          {
            "code" : "rugby"
          },
          {
            "code" : "running"
          },
          {
            "code" : "sailing"
          },
          {
            "code" : "skatingSports"
          },
          {
            "code" : "snowboarding"
          },
          {
            "code" : "snowSports"
          },
          {
            "code" : "soccer"
          },
          {
            "code" : "socialDance"
          },
          {
            "code" : "softball"
          },
          {
            "code" : "squash"
          },
          {
            "code" : "stairClimbing"
          },
          {
            "code" : "stairs"
          },
          {
            "code" : "stepTraining"
          },
          {
            "code" : "surfingSports"
          },
          {
            "code" : "swimBikeRun"
          },
          {
            "code" : "swimming"
          },
          {
            "code" : "tableTennis"
          },
          {
            "code" : "taiChi"
          },
          {
            "code" : "tennis"
          },
          {
            "code" : "trackAndField"
          },
          {
            "code" : "traditionalStrengthTraining"
          },
          {
            "code" : "transition"
          },
          {
            "code" : "underwaterDiving"
          },
          {
            "code" : "volleyball"
          },
          {
            "code" : "walking"
          },
          {
            "code" : "waterFitness"
          },
          {
            "code" : "waterPolo"
          },
          {
            "code" : "waterSports"
          },
          {
            "code" : "wheelchairRunPace"
          },
          {
            "code" : "wheelchairWalkPace"
          },
          {
            "code" : "wrestling"
          },
          {
            "code" : "yoga"
          },
          {
            "code" : "backExtension"
          },
          {
            "code" : "barbellShoulderPress"
          },
          {
            "code" : "benchPress"
          },
          {
            "code" : "benchSitUp"
          },
          {
            "code" : "biking"
          },
          {
            "code" : "bikingStationary"
          },
          {
            "code" : "bootCamp"
          },
          {
            "code" : "burpee"
          },
          {
            "code" : "calisthenics"
          },
          {
            "code" : "crunch"
          },
          {
            "code" : "deadlift"
          },
          {
            "code" : "dumbbellCurlLeftArm"
          },
          {
            "code" : "dumbbellCurlRightArm"
          },
          {
            "code" : "dumbbellFrontRaise"
          },
          {
            "code" : "dumbbellLateralRaise"
          },
          {
            "code" : "dumbbellTricepsExtensionLeftArm"
          },
          {
            "code" : "dumbbellTricepsExtensionRightArm"
          },
          {
            "code" : "dumbbellTricepsExtensionTwoArm"
          },
          {
            "code" : "exerciseClass"
          },
          {
            "code" : "forwardTwist"
          },
          {
            "code" : "frisbeeDisc"
          },
          {
            "code" : "guidedBreathing"
          },
          {
            "code" : "iceHockey"
          },
          {
            "code" : "iceSkating"
          },
          {
            "code" : "jumpingJack"
          },
          {
            "code" : "latPullDown"
          },
          {
            "code" : "lunge"
          },
          {
            "code" : "meditation"
          },
          {
            "code" : "paraGliding"
          },
          {
            "code" : "plank"
          },
          {
            "code" : "rockClimbing"
          },
          {
            "code" : "rollerHockey"
          },
          {
            "code" : "rowingMachine"
          },
          {
            "code" : "runningTreadmill"
          },
          {
            "code" : "scubaDiving"
          },
          {
            "code" : "skiing"
          },
          {
            "code" : "snowshoeing"
          },
          {
            "code" : "squat"
          },
          {
            "code" : "strengthTraining"
          },
          {
            "code" : "stretching"
          },
          {
            "code" : "swimmingOpenWater"
          },
          {
            "code" : "swimmingPool"
          },
          {
            "code" : "upperTwist"
          },
          {
            "code" : "weightlifting"
          },
          {
            "code" : "wheelchair"
          },
          {
            "code" : "workout"
          },
          {
            "code" : "armCurl"
          },
          {
            "code" : "ballSlam"
          },
          {
            "code" : "doubleArmTricepsExtension"
          },
          {
            "code" : "dumbbellRow"
          },
          {
            "code" : "frontRaise"
          },
          {
            "code" : "hipThrust"
          },
          {
            "code" : "hulaHoop"
          },
          {
            "code" : "kettlebellSwing"
          },
          {
            "code" : "lateralRaise"
          },
          {
            "code" : "legCurl"
          },
          {
            "code" : "legExtension"
          },
          {
            "code" : "legPress"
          },
          {
            "code" : "legRaise"
          },
          {
            "code" : "mountainClimber"
          },
          {
            "code" : "otherWorkout"
          },
          {
            "code" : "pause"
          },
          {
            "code" : "pullUp"
          },
          {
            "code" : "punch"
          },
          {
            "code" : "rest"
          },
          {
            "code" : "shoulderPress"
          },
          {
            "code" : "singleArmTricepsExtension"
          },
          {
            "code" : "sitUp"
          },
          {
            "code" : "stairClimbingMachine"
          },
          {
            "code" : "swimmingBackstroke"
          },
          {
            "code" : "swimmingBreaststroke"
          },
          {
            "code" : "swimmingButterfly"
          },
          {
            "code" : "swimmingFreestyle"
          },
          {
            "code" : "swimmingMixed"
          },
          {
            "code" : "swimmingOther"
          }
        ]
      }
    ]
  }
}

```
