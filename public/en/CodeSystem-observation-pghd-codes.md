# Observation PGHD Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: Observation PGHD Codes 

 
Code defining the type of PGHD data 

This Code system is referenced in the definition of the following value sets:

* [ObservationActivity](ValueSet-observation-activity-codes.md)
* [ObservationAlcholConsumption](ValueSet-observation-alchol-consumption-codes.md)
* [ObservationBodyMeasurementsValueSet](ValueSet-observation-body-measurements-codes.md)
* [ObservationDiving](ValueSet-observation-diving-codes.md)
* [ObservationHearing](ValueSet-observation-hearing-codes.md)
* [ObservationLabResultsValueSet](ValueSet-observation-lab-results-codes.md)
* [ObservationMind](ValueSet-observation-mind-codes.md)
* [ObservationMindfulness](ValueSet-observation-mindfulness-codes.md)
* [ObservationMobility](ValueSet-observation-mobility-codes.md)
* [ObservationNutrition](ValueSet-observation-nutrition-codes.md)
* [ObservationReproductiveHealth](ValueSet-observation-reproductive-health-codes.md)
* [ObservationSelfCare](ValueSet-observation-selfcare-codes.md)
* [ObservationSleep](ValueSet-observation-sleep-codes.md)
* [ObservationSymptom](ValueSet-observation-symptom-codes.md)
* [ObservationUVExposure](ValueSet-observation-uvexposure-codes.md)
* [ObservationVitalsignsValueSet](ValueSet-observation-vital-signs-codes.md)
* [ObservationWorkout](ValueSet-observation-workout-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "observation-pghd-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationPGHD",
  "title" : "Observation PGHD Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-23T17:08:04-05:00",
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
  "description" : "Code defining the type of PGHD data",
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
  "hierarchyMeaning" : "grouped-by",
  "compositional" : false,
  "content" : "complete",
  "count" : 405,
  "concept" : [
    {
      "code" : "Activity",
      "display" : "Activity",
      "concept" : [
        {
          "code" : "activeEnergyBurned",
          "display" : "Active energy burned",
          "definition" : "A quantity sample type that measures the amount of active energy the user has burned.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal"
              }
            }
          ]
        },
        {
          "code" : "appleExerciseTime",
          "display" : "Apple exercise time",
          "definition" : "A quantity sample type that measures the amount of time the user spent exercising.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "min"
              }
            }
          ]
        },
        {
          "code" : "appleMoveTime",
          "display" : "Apple move time",
          "definition" : "A quantity sample type that measures the amount of time the user has spent performing activities that involve full-body movements during the specified day.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "min"
              }
            }
          ]
        },
        {
          "code" : "appleStandHour",
          "display" : "Apple stand hour",
          "definition" : "A category sample type that counts the number of hours in the day during which the user has stood and moved for at least one minute per hour."
        },
        {
          "code" : "appleStandTime",
          "display" : "Apple stand time",
          "definition" : "A quantity sample type that measures the amount of time the user has spent standing.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "min"
              }
            }
          ]
        },
        {
          "code" : "basalEnergyBurned",
          "display" : "Basal energyBurned",
          "definition" : "A quantity sample type that measures the resting energy burned by the user.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal"
              }
            }
          ]
        },
        {
          "code" : "cyclingCadence",
          "display" : "Cycling cadence",
          "definition" : "Captures the user's cycling pedaling cadence. Each record represents a series of measurements."
        },
        {
          "code" : "cyclingFunctionalThresholdPower",
          "display" : "Cycling functional threshold power",
          "definition" : "A quantity sample type that measures the highest average power output the user can maintain for an hour.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "W"
              }
            }
          ]
        },
        {
          "code" : "cyclingPower",
          "display" : "Cycling power",
          "definition" : "A quantity sample type that measures power output by the user while cycling.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "W"
              }
            }
          ]
        },
        {
          "code" : "cyclingSpeed",
          "display" : "Cycling speed",
          "definition" : "A quantity sample type measuring the user's speed while cycling.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km/h"
              }
            }
          ]
        },
        {
          "code" : "distance",
          "display" : "Distance",
          "definition" : "Captures distance travelled by the user since the last reading.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "elevationGained",
          "display" : "Elevation gained",
          "definition" : "Captures the elevation gained by the user since the last reading.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "totalEnergyBurned",
          "display" : "Total energy burned",
          "definition" : "Captures the user's steps cadence. Each record represents a series of measurements.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal"
              }
            }
          ]
        },
        {
          "code" : "distanceCycling",
          "display" : "Distance cycling",
          "definition" : "A quantity sample type that measures the distance the user has moved by cycling.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "distanceDownhillSnowSports",
          "display" : "Distance downhill snow sports",
          "definition" : "A quantity sample type that measures the distance the user has traveled while skiing or snowboarding.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "distanceSwimming",
          "display" : "Distance swimming",
          "definition" : "A quantity sample type that measures the distance the user has moved while swimming.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "distanceWalkingRunning",
          "display" : "Distance walking running",
          "definition" : "A quantity sample type that measures the distance the user has moved by walking or running.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km"
              }
            }
          ]
        },
        {
          "code" : "distanceWheelchair",
          "display" : "Distance wheelchair",
          "definition" : "A quantity sample type that measures the distance the user has moved using a wheelchair.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "flightsClimbed",
          "display" : "Flights climbed",
          "definition" : "A quantity sample type that measures the number flights of stairs that the user has climbed."
        },
        {
          "code" : "lowCardioFitnessEvent",
          "display" : "Low cardio fitness event",
          "definition" : "An event that indicates the user's VO2 max values consistently fall below a particular aerobic fitness threshold."
        },
        {
          "code" : "nikeFuel",
          "display" : "NikeFuel",
          "definition" : "A quantity sample type that measures the number of NikeFuel points the user has earned."
        },
        {
          "code" : "physicalEffort",
          "display" : "Physical effort",
          "definition" : "A quantity sample type that records an estimate of the energy the user using.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal/(kg.h)"
              }
            }
          ]
        },
        {
          "code" : "power",
          "display" : "Power",
          "definition" : "Captures the power generated by the user, e.g. during rowing with a power meter. Each record represents a series of measurements.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "W"
              }
            }
          ]
        },
        {
          "code" : "pushCount",
          "display" : "Push count",
          "definition" : "A quantity sample type that measures the number of pushes that the user has performed while using a wheelchair."
        },
        {
          "code" : "runningGroundContactTime",
          "display" : "Running ground contact time",
          "definition" : "A quantity sample type that measures the amount of time the runner's foot is in contact with the ground while running.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "s"
              }
            }
          ]
        },
        {
          "code" : "runningPower",
          "display" : "Running power",
          "definition" : "A quantity sample type that measures the rate of work required for the runner to maintain their speed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "W"
              }
            }
          ]
        },
        {
          "code" : "runningSpeed",
          "display" : "Running speed",
          "definition" : "A quantity sample type that measures the runner's speed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/s"
              }
            }
          ]
        },
        {
          "code" : "runningStrideLength",
          "display" : "Running stride length",
          "definition" : "A quantity sample type that measures the distance covered by a single step while running.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "runningVerticalOscillation",
          "display" : "Running vertical oscillation",
          "definition" : "A quantity sample type measuring pelvis vertical range of motion during a single running stride.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "stepsCadence",
          "display" : "Steps cadence",
          "definition" : "Captures the user's steps cadence. Each record represents a series of measurements."
        },
        {
          "code" : "stepCount",
          "display" : "Step count",
          "definition" : "A quantity sample type that measures the number of steps the user has taken."
        },
        {
          "code" : "speed",
          "display" : "Speed",
          "definition" : "Captures the user's speed, e.g. during running. Each record represents a series of measurements.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/s"
              }
            }
          ]
        },
        {
          "code" : "swimmingStrokeCount",
          "display" : "Swimming stroke count",
          "definition" : "A quantity sample type that measures the number of strokes performed while swimming."
        },
        {
          "code" : "vo2Max",
          "display" : "VO2 max",
          "definition" : "A quantity sample that measures the maximal oxygen consumption during exercise.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ml/kg/min"
              }
            }
          ]
        },
        {
          "code" : "pace",
          "display" : "Pace",
          "definition" : "Pace at a specific point in time. Will be 0 if the user stops moving, otherwise the value will be in milliseconds/kilometer.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "min/km"
              }
            }
          ]
        },
        {
          "code" : "moderateActivity",
          "display" : "Moderate activity",
          "definition" : "Represents moderate (3.0-5.9 MET) activity."
        },
        {
          "code" : "vigorousActivity",
          "display" : "Vigorous activity",
          "definition" : "Represents vigorous (6.0- MET) activity."
        },
        {
          "code" : "moderateToVigorousActivity",
          "display" : "Moderate to vigorous activity",
          "definition" : "Weekly moderate to vigorous physical activity in minutes."
        },
        {
          "code" : "met",
          "display" : "Met"
        },
        {
          "code" : "metByStandardRmr",
          "display" : "Met by standard RMR",
          "definition" : "Metabolic equivalent of task (MET) calculated based on either measured, estimated or reported exercise metabolic rate and the standard resting metabolic rate (RMR)."
        },
        {
          "code" : "crossCountrySkiingSpeed",
          "display" : "Cross country skiing speed",
          "definition" : "A quantity sample type measuring the user's speed while cross country skiing.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km/h"
              }
            }
          ]
        },
        {
          "code" : "distanceCrossCountrySkiing",
          "display" : "Distance cross country skiing",
          "definition" : "A quantity sample type that measures the distance the user has moved while cross country skiing.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km"
              }
            }
          ]
        },
        {
          "code" : "paddleSportsSpeed",
          "display" : "Paddle sports speed",
          "definition" : "A quantity sample type measuring the user's speed during paddle sports.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km/h"
              }
            }
          ]
        },
        {
          "code" : "distancePaddleSports",
          "display" : "Distance paddle sports",
          "definition" : "A quantity sample type that measures the distance the user has moved during paddle sports.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km"
              }
            }
          ]
        },
        {
          "code" : "rowingSpeed",
          "display" : "Rowing speed",
          "definition" : "A quantity sample type measuring the user's rowing speed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km/h"
              }
            }
          ]
        },
        {
          "code" : "distanceRowing",
          "display" : "Distance rowing",
          "definition" : "A quantity sample type measuring the distance the user has rowed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km"
              }
            }
          ]
        },
        {
          "code" : "distanceSkatingSports",
          "display" : "Distance skating sports",
          "definition" : "A quantity sample type that measures the distance the user has skated.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "km"
              }
            }
          ]
        },
        {
          "code" : "estimatedWorkoutEffortScore",
          "display" : "Estimated workout effort score",
          "definition" : "A quantity sample type that represents estimate of exertion score."
        },
        {
          "code" : "workoutEffortScore",
          "display" : "Workout effort score",
          "definition" : "A quantity sample type that represents exertion score."
        }
      ]
    },
    {
      "code" : "AlcoholConsumption",
      "display" : "Alcohol consumption",
      "concept" : [
        {
          "code" : "bloodAlcoholContent",
          "display" : "Blood alcohol content",
          "definition" : "quantity sample type that measures the user's blood alcohol content.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "numberOfAlcoholicBeverages",
          "display" : "Number of alcoholic beverages",
          "definition" : "A quantity sample type that measures the number of standard alcoholic drinks that the user has consumed."
        }
      ]
    },
    {
      "code" : "BodyMeasurements",
      "display" : "Body measurements",
      "concept" : [
        {
          "code" : "appleSleepingWristTemperature",
          "display" : "Apple sleeping wrist temperature",
          "definition" : "A quantity sample type that records the wrist temperature during sleep.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "Cel"
              }
            }
          ]
        },
        {
          "code" : "bodyFatPercentage",
          "display" : "Body fat percentage",
          "definition" : "A quantity sample type that measures the user's body fat percentage.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "bodyMass",
          "display" : "Body mass",
          "definition" : "A quantity sample type that measures the user's weight.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kg"
              }
            }
          ]
        },
        {
          "code" : "bodyMassIndex",
          "display" : "Body mass index",
          "definition" : "A quantity sample type that measures the user's body mass index."
        },
        {
          "code" : "height",
          "display" : "Height",
          "definition" : "A quantity sample type that measures the user's height.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "cm"
              }
            }
          ]
        },
        {
          "code" : "hipCircumference",
          "display" : "Hip circumference",
          "definition" : "A quantity sample type that measures the user's hip circumference.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "cm"
              }
            }
          ]
        },
        {
          "code" : "leanBodyMass",
          "display" : "Lean body mass",
          "definition" : "A quantity sample type that measures the user's lean body mass.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kg"
              }
            }
          ]
        },
        {
          "code" : "waistCircumference",
          "display" : "Waist circumference",
          "definition" : "A quantity sample type that measures the user's waist circumference.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "cm"
              }
            }
          ]
        },
        {
          "code" : "boneMass",
          "display" : "Bone mass",
          "definition" : "A quantity sample type that measures the user's bone mass",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kg"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "Diving",
      "display" : "Diving",
      "concept" : [
        {
          "code" : "underwaterDepth",
          "display" : "Underwater depth",
          "definition" : "A quantity sample that records a person's depth underwater.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "waterTemperature",
          "display" : "Water temperature",
          "definition" : "A quantity sample that records the water temperature.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "Cel"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "Hearing",
      "display" : "Hearing",
      "concept" : [
        {
          "code" : "environmentalAudioExposure",
          "display" : "Environmental audio exposure",
          "definition" : "A quantity sample type that measures audio exposure to sounds in the environment.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "dB"
              }
            }
          ]
        },
        {
          "code" : "environmentalAudioExposureEvent",
          "display" : "Environmental audio exposure event",
          "definition" : "A category sample type that records exposure to potentially damaging sounds from the environment."
        },
        {
          "code" : "environmentalSoundReduction",
          "display" : "Environmental sound reduction",
          "definition" : "The environmental sound level reduced while user wearing AirPods Pro and using Active Noise Cancellation or Adaptive Transparency mode.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "dB"
              }
            }
          ]
        },
        {
          "code" : "headphoneAudioExposure",
          "display" : "Headphone audio exposure",
          "definition" : "A quantity sample type that measures audio exposure from headphones.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "dB"
              }
            }
          ]
        },
        {
          "code" : "headphoneAudioExposureEvent",
          "display" : "Headphone audio exposure event",
          "definition" : "A category sample type that records exposure to potentially damaging sounds from headphones."
        }
      ]
    },
    {
      "code" : "Heart",
      "display" : "Heart",
      "concept" : [
        {
          "code" : "electrocardiogram",
          "display" : "Electrocardiogram",
          "definition" : "A type that identifies samples containing electrocardiogram data."
        },
        {
          "code" : "heartBeatSeries",
          "display" : "Heart beat series",
          "definition" : "A series sample containing heartbeat data."
        }
      ]
    },
    {
      "code" : "LabAndTestResults",
      "display" : "Lab and test results",
      "concept" : [
        {
          "code" : "bloodGlucose",
          "display" : "Blood glucose",
          "definition" : "A quantity sample type that measures the user's blood glucose level.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mmol/L"
              }
            }
          ]
        },
        {
          "code" : "electrodermalActivity",
          "display" : "Electrodermal activity",
          "definition" : "A quantity sample type that measures electrodermal activity.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "S"
              }
            }
          ]
        },
        {
          "code" : "forcedExpiratoryVolume1",
          "display" : "Forced expiratory volume1",
          "definition" : "A quantity sample type that measures the amount of air that can be forcibly exhaled from the lungs during the first second of a forced exhalation.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "L"
              }
            }
          ]
        },
        {
          "code" : "forcedVitalCapacity",
          "display" : "Forced vital capacity",
          "definition" : "A quantity sample type that measures the amount of air that can be forcibly exhaled from the lungs after taking the deepest breath possible.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "L"
              }
            }
          ]
        },
        {
          "code" : "inhalerUsage",
          "display" : "Inhaler usage",
          "definition" : "A quantity sample type that measures the number of puffs the user takes from their inhaler."
        },
        {
          "code" : "insulinDelivery",
          "display" : "Insulin delivery",
          "definition" : "A quantity sample that measures the amount of insulin delivered.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "[IU]"
              }
            }
          ]
        },
        {
          "code" : "numberOfTimesFallen",
          "display" : "Number of times fallen",
          "definition" : "A quantity sample type that measures the number of times the user fell."
        },
        {
          "code" : "peakExpiratoryFlowRate",
          "display" : "Peak expiratory flow rate",
          "definition" : "A quantity sample type that measures the user's maximum flow rate generated during a forceful exhalation.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "L/min"
              }
            }
          ]
        },
        {
          "code" : "peripheralPerfusionIndex",
          "display" : "Peripheral perfusion index",
          "definition" : "A quantity sample type that measures the user's peripheral perfusion index.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "timeInDaylight",
          "display" : "Time in daylight",
          "definition" : "A quantity sample type that captures the amount of time the user spent in daylight.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "min"
              }
            }
          ]
        },
        {
          "code" : "inspiratoryTime",
          "display" : "Inspiratory time",
          "definition" : "The duration of a person's inspiration, either a single measurement, or the result of aggregating several measurements made over time.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "s"
              }
            }
          ]
        },
        {
          "code" : "ventilationCycleTime",
          "display" : "Ventilation cycle time",
          "definition" : "Represents the duration of a person's complete respiration.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "s"
              }
            }
          ]
        },
        {
          "code" : "minuteVolume",
          "display" : "Minute volume",
          "definition" : "The volume of gas inhaled or exhaled from a person's lungs per minute.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mL/min"
              }
            }
          ]
        },
        {
          "code" : "breathCarbonMonoxide",
          "display" : "Breath carbon monoxide",
          "definition" : "The amount of carbon monoxide gas present in a person's exhaled breath.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "[ppm]"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "Mindfulness",
      "display" : "Mindfulness",
      "concept" : [
        {
          "code" : "mindfulSession",
          "display" : "Mindful session",
          "definition" : "A category sample type for recording a mindful session."
        }
      ]
    },
    {
      "code" : "Sleep",
      "display" : "Sleep",
      "concept" : [
        {
          "code" : "sleepAnalysis",
          "display" : "Sleep analysis",
          "definition" : "A category sample type for sleep analysis information."
        },
        {
          "code" : "sleepEpisode",
          "display" : "Sleep episode",
          "definition" : "Represents one sleep episode, which can be the main sleep event (i.e., a night sleep for most people) or a nap."
        },
        {
          "code" : "snoreIndex",
          "display" : "Snore index",
          "definition" : "The number of snore events per hour."
        },
        {
          "code" : "snoreEvent",
          "display" : "Snore event",
          "definition" : "A data type that represents the loudness, duration of snoring, and the posture during snoring."
        },
        {
          "code" : "sleepAHI",
          "display" : "Sleep ahi",
          "definition" : "The number of apnea and hypopnea events recorded per hour of sleep.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/h"
              }
            }
          ]
        },
        {
          "code" : "sleepArousalIndex",
          "display" : "Sleep arousal index",
          "definition" : "The average number of arousals per hour of sleep.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/h"
              }
            }
          ]
        },
        {
          "code" : "appleSleepingBreathingDisturbances",
          "display" : "Apple sleeping breathing disturbances",
          "definition" : "A quantity sample type that measures a nightly breathing disturbances."
        },
        {
          "code" : "sleepApneaEvent",
          "display" : "Sleep apnea event",
          "definition" : "A category type that represents sleep apnea event."
        }
      ]
    },
    {
      "code" : "Mobility",
      "display" : "Mobility",
      "concept" : [
        {
          "code" : "appleWalkingSteadiness",
          "display" : "Apple walking steadiness",
          "definition" : "A quantity sample type that measures the steadiness of the user's gait.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "appleWalkingSteadinessEvent",
          "display" : "Apple walking steadiness event",
          "definition" : "A category sample type that records an incident where the user showed a reduced score for their gait's steadiness."
        },
        {
          "code" : "sixMinuteWalkTestDistance",
          "display" : "Six minute walk test distance",
          "definition" : "A quantity sample type that stores the distance a user can walk during a six-minute walk test.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/(6.min)"
              }
            }
          ]
        },
        {
          "code" : "walkingSpeed",
          "display" : "Walking speed",
          "definition" : "A quantity sample type that measures the user's average speed when walking steadily over flat ground.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/s"
              }
            }
          ]
        },
        {
          "code" : "walkingStepLength",
          "display" : "Walking step length",
          "definition" : "A quantity sample type that measures the average length of the user's step when walking steadily over flat ground.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m"
              }
            }
          ]
        },
        {
          "code" : "walkingAsymmetryPercentage",
          "display" : "Walking asymmetry percentage",
          "definition" : "A quantity sample type that measures the percentage of steps in which one foot moves at a different speed than the other when walking on flat ground.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "walkingDoubleSupportPercentage",
          "display" : "Walking double support percentage",
          "definition" : "A quantity sample type that measures the percentage of time when both of the user's feet touch the ground while walking steadily over flat ground.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "stairAscentSpeed",
          "display" : "Stair ascent speed",
          "definition" : "A quantity sample type measuring the user's speed while climbing a flight of stairs.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/s"
              }
            }
          ]
        },
        {
          "code" : "stairDescentSpeed",
          "display" : "Stair descent speed",
          "definition" : "A quantity sample type measuring the user's speed while descending a flight of stairs.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "m/s"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "Nutrition",
      "display" : "Nutrition",
      "concept" : [
        {
          "code" : "dietaryBiotin",
          "display" : "Biotin",
          "definition" : "A quantity sample type that measures the amount of biotin (vitamin B7) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryCaffeine",
          "display" : "Caffeine",
          "definition" : "A quantity sample type that measures the amount of caffeine consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryCalcium",
          "display" : "Calcium",
          "definition" : "A quantity sample type that measures the amount of calcium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryCarbohydrates",
          "display" : "Carbohydrates",
          "definition" : "A quantity sample type that measures the amount of carbohydrates consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryChloride",
          "display" : "Chloride",
          "definition" : "A quantity sample type that measures the amount of chloride consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryCholesterol",
          "display" : "Cholesterol",
          "definition" : "A quantity sample type that measures the amount of cholesterol consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryChromium",
          "display" : "Chromium",
          "definition" : "A quantity sample type that measures the amount of chromium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryCopper",
          "display" : "Copper",
          "definition" : "A quantity sample type that measures the amount of copper consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryEnergyConsumed",
          "display" : "Energy consumed",
          "definition" : "A quantity sample type that measures the amount of energy consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal"
              }
            }
          ]
        },
        {
          "code" : "dietaryEnergyFromFat",
          "display" : "Energy from fat",
          "definition" : "A quantity sample type that measures the amount of energy form fat.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "kcal"
              }
            }
          ]
        },
        {
          "code" : "dietaryFatMonounsaturated",
          "display" : "Fat monounsaturated",
          "definition" : "A quantity sample type that measures the amount of monounsaturated fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFatPolyunsaturated",
          "display" : "Fat polyunsaturated",
          "definition" : "A quantity sample type that measures the amount of polyunsaturated fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFatUnsaturated",
          "display" : "Fat unsaturated",
          "definition" : "A quantity sample type that measures the amount of unsaturated fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryTransFat",
          "display" : "Trans fat",
          "definition" : "A quantity sample type that measures the amount of trans fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFatSaturated",
          "display" : "Fat saturated",
          "definition" : "A quantity sample type that measures the amount of saturated fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFatTotal",
          "display" : "Fat total",
          "definition" : "A quantity sample type that measures the total amount of fat consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFiber",
          "display" : "Fiber",
          "definition" : "A quantity sample type that measures the amount of fiber consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryFolateOrFolicAcid",
          "display" : "Folate or folic acid",
          "definition" : "A quantity sample type that measures the amount of folate (folic acid) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryFolate",
          "display" : "Folate",
          "definition" : "A quantity sample type that measures the amount of folate consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryFolicAcid",
          "display" : "Folic acid",
          "definition" : "A quantity sample type that measures the amount of folic acid consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryIodine",
          "display" : "Iodine",
          "definition" : "A quantity sample type that measures the amount of iodine consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryIron",
          "display" : "Iron",
          "definition" : "A quantity sample type that measures the amount of iron consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryMagnesium",
          "display" : "Magnesium",
          "definition" : "A quantity sample type that measures the amount of magnesium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryManganese",
          "display" : "Manganese",
          "definition" : "A quantity sample type that measures the amount of manganese consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryMolybdenum",
          "display" : "Molybdenum",
          "definition" : "A quantity sample type that measures the amount of molybdenum consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryNiacin",
          "display" : "Niacin",
          "definition" : "A quantity sample type that measures the amount of niacin (vitamin B3) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryPantothenicAcid",
          "display" : "Pantothenic acid",
          "definition" : "A quantity sample type that measures the amount of pantothenic acid (vitamin B5) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryPhosphorus",
          "display" : "Phosphorus",
          "definition" : "A quantity sample type that measures the amount of phosphorus consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryPotassium",
          "display" : "Potassium",
          "definition" : "A quantity sample type that measures the amount of potassium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryProtein",
          "display" : "Protein",
          "definition" : "A quantity sample type that measures the amount of protein consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryRiboflavin",
          "display" : "Riboflavin",
          "definition" : "A quantity sample type that measures the amount of riboflavin (vitamin B2) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietarySelenium",
          "display" : "Selenium",
          "definition" : "A quantity sample type that measures the amount of selenium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietarySodium",
          "display" : "Sodium",
          "definition" : "A quantity sample type that measures the amount of sodium consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietarySugar",
          "display" : "Sugar",
          "definition" : "A quantity sample type that measures the amount of sugar consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              }
            }
          ]
        },
        {
          "code" : "dietaryThiamin",
          "display" : "Thiamin",
          "definition" : "A quantity sample type that measures the amount of thiamin (vitamin B1) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminA",
          "display" : "Vitamin a",
          "definition" : "A quantity sample type that measures the amount of vitamin A consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminB12",
          "display" : "Dietary vitamin b12",
          "definition" : "A quantity sample type that measures the amount of cyanocobalamin (vitamin B12) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminB6",
          "display" : "Vitamin b6",
          "definition" : "A quantity sample type that measures the amount of pyridoxine (vitamin B6) consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminC",
          "display" : "Vitamin c",
          "definition" : "A quantity sample type that measures the amount of vitamin C consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminD",
          "display" : "Vitamin d",
          "definition" : "A quantity sample type that measures the amount of vitamin D consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminE",
          "display" : "Vitamin e",
          "definition" : "A quantity sample type that measures the amount of vitamin E consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        },
        {
          "code" : "dietaryVitaminK",
          "display" : "Vitamin k",
          "definition" : "A quantity sample type that measures the amount of vitamin K consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ug"
              }
            }
          ]
        },
        {
          "code" : "dietaryWater",
          "display" : "Water",
          "definition" : "A quantity sample type that measures the amount of water consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "L"
              }
            }
          ]
        },
        {
          "code" : "dietaryZinc",
          "display" : "Zinc",
          "definition" : "A quantity sample type that measures the amount of zinc consumed.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "ReproductiveHealth",
      "display" : "Reproductive health",
      "concept" : [
        {
          "code" : "basalBodyTemperature",
          "display" : "Basal body temperature",
          "definition" : "A quantity sample type that records the user's basal body temperature.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "Cel"
              }
            }
          ]
        },
        {
          "code" : "cervicalMucusQuality",
          "display" : "Cervical mucus quality",
          "definition" : "A category sample type that records the quality of the user's cervical mucus."
        },
        {
          "code" : "contraceptive",
          "display" : "Contraceptive",
          "definition" : "A category sample type that records the use of contraceptives."
        },
        {
          "code" : "intermenstrualBleeding",
          "display" : "Intermenstrual bleeding",
          "definition" : "A category sample type that records spotting outside the normal menstruation period."
        },
        {
          "code" : "irregularMenstrualCycles",
          "display" : "Irregular menstrual cycles",
          "definition" : "A category sample that indicates an irregular menstrual cycle."
        },
        {
          "code" : "infrequentMenstrualCycles",
          "display" : "Infrequent menstrual cycles",
          "definition" : "A category sample that indicates an infrequent menstrual cycle."
        },
        {
          "code" : "lactation",
          "display" : "Lactation",
          "definition" : "A category type that records lactation."
        },
        {
          "code" : "menstrualFlow",
          "display" : "Menstrual flow",
          "definition" : "A category sample type that records menstrual cycles."
        },
        {
          "code" : "menstrualPeriod",
          "display" : "Menstrual period",
          "definition" : "A category sample type that records menstrual periods."
        },
        {
          "code" : "ovulationTestResult",
          "display" : "Ovulation test result",
          "definition" : "A category sample type that records the result of an ovulation home test."
        },
        {
          "code" : "persistentIntermenstrualBleeding",
          "display" : "Persistent intermenstrual bleeding",
          "definition" : "A category sample that indicates persistent intermenstrual bleeding."
        },
        {
          "code" : "pregnancy",
          "display" : "Pregnancy",
          "definition" : "A category type that records pregnancy."
        },
        {
          "code" : "pregnancyTestResult",
          "display" : "Pregnancy test result",
          "definition" : "A category type that represents the results from a home pregnancy test."
        },
        {
          "code" : "progesteroneTestResult",
          "display" : "Progesterone test result",
          "definition" : "A category type that represents the results from a home progesterone test."
        },
        {
          "code" : "prolongedMenstrualPeriods",
          "display" : "Prolonged menstrual periods",
          "definition" : "A category sample that indicates a prolonged menstrual cycle."
        },
        {
          "code" : "sexualActivity",
          "display" : "Sexual activity",
          "definition" : "A category sample type that records sexual activity."
        },
        {
          "code" : "bleedingAfterPregnancy",
          "display" : "Bleeding after pregnancy",
          "definition" : "A category type that represents bleeding after pregnancy."
        },
        {
          "code" : "bleedingDuringPregnancy",
          "display" : "Bleeding during pregnancy",
          "definition" : "A category type that represents bleeding during pregnancy."
        }
      ]
    },
    {
      "code" : "SelfCare",
      "display" : "Self care",
      "concept" : [
        {
          "code" : "handwashingEvent",
          "display" : "Handwashing event",
          "definition" : "A category sample type for handwashing events."
        },
        {
          "code" : "toothbrushingEvent",
          "display" : "Toothbrushing event",
          "definition" : "A category sample type for toothbrushing events."
        }
      ]
    },
    {
      "code" : "Symptom",
      "display" : "Symptom",
      "concept" : [
        {
          "code" : "abdominalCramps",
          "display" : "Bdominal cramps",
          "definition" : "A category type that records abdominal cramps as a symptom."
        },
        {
          "code" : "acne",
          "display" : "Acne",
          "definition" : "A category type that records acne as a symptom."
        },
        {
          "code" : "appetiteChanges",
          "display" : "Appetite changes",
          "definition" : "A category type that records changes in appetite as a symptom."
        },
        {
          "code" : "bladderIncontinence",
          "display" : "Bladder incontinence",
          "definition" : "A category type that records bladder incontinence as a symptom."
        },
        {
          "code" : "bloating",
          "display" : "Bloating",
          "definition" : "A category type that records bloating as a symptom."
        },
        {
          "code" : "breastPain",
          "display" : "Breast pain",
          "definition" : "A category type that records breast pain as a symptom."
        },
        {
          "code" : "chestTightnessOrPain",
          "display" : "Chest tightness or pain",
          "definition" : "A category type that records chest tightness or pain as a symptom."
        },
        {
          "code" : "chills",
          "display" : "Chills",
          "definition" : "A category type that records chills as a symptom."
        },
        {
          "code" : "constipation",
          "display" : "Constipation",
          "definition" : "A category type that records constipation as a symptom."
        },
        {
          "code" : "coughing",
          "display" : "Coughing",
          "definition" : "A category type that records coughing as a symptom."
        },
        {
          "code" : "diarrhea",
          "display" : "Diarrhea",
          "definition" : "A category type that records diarrhea as a symptom."
        },
        {
          "code" : "dizziness",
          "display" : "Dizziness",
          "definition" : "A category type that records dizziness as a symptom."
        },
        {
          "code" : "drySkin",
          "display" : "Dry skin",
          "definition" : "A category type that records dry skin as a symptom."
        },
        {
          "code" : "fainting",
          "display" : "Fainting",
          "definition" : "A category type that records fainting as a symptom."
        },
        {
          "code" : "fatigue",
          "display" : "Fatigue",
          "definition" : "A category type that records fatigue as a symptom."
        },
        {
          "code" : "fever",
          "display" : "Fever",
          "definition" : "A category type that records fever as a symptom."
        },
        {
          "code" : "generalizedBodyAche",
          "display" : "Generalized body ache",
          "definition" : "A category type that records body ache as a symptom."
        },
        {
          "code" : "hairLoss",
          "display" : "Hair loss",
          "definition" : "A category type that records hair loss as a symptom."
        },
        {
          "code" : "headache",
          "display" : "Headache",
          "definition" : "A category type that records headache as a symptom."
        },
        {
          "code" : "heartburn",
          "display" : "Heartburn",
          "definition" : "A category type that records heartburn as a symptom."
        },
        {
          "code" : "hotFlashes",
          "display" : "Hot flashes",
          "definition" : "A category type that records hot flashes as a symptom."
        },
        {
          "code" : "lossOfSmell",
          "display" : "Loss of smell",
          "definition" : "A category type that records loss of smell as a symptom."
        },
        {
          "code" : "lossOfTaste",
          "display" : "Loss of taste",
          "definition" : "A category type that records loss of taste as a symptom."
        },
        {
          "code" : "lowerBackPain",
          "display" : "Lower back pain",
          "definition" : "A category type that records lower back pain as a symptom."
        },
        {
          "code" : "memoryLapse",
          "display" : "Memory lapse",
          "definition" : "A category type that records memory lapse as a symptom."
        },
        {
          "code" : "moodChanges",
          "display" : "Mood changes",
          "definition" : "A category type that records mood changes as a symptom."
        },
        {
          "code" : "nausea",
          "display" : "Nausea",
          "definition" : "A category type that records nausea as a symptom."
        },
        {
          "code" : "nightSweats",
          "display" : "Night sweats",
          "definition" : "A category type that records night sweats as a symptom."
        },
        {
          "code" : "pelvicPain",
          "display" : "Pelvic pain",
          "definition" : "A category type that records pelvic pain as a symptom."
        },
        {
          "code" : "rapidPoundingOrFlutteringHeartbeat",
          "display" : "Rapid pounding or fluttering heartbeat",
          "definition" : "A category type that records a rapid,  pounding,  or fluttering heartbeat as a symptom."
        },
        {
          "code" : "runnyNose",
          "display" : "Runny nose",
          "definition" : "A category type that records runny nose as a symptom."
        },
        {
          "code" : "shortnessOfBreath",
          "display" : "Shortness of breath",
          "definition" : "A category type that records shortness of breath as a symptom."
        },
        {
          "code" : "sinusCongestion",
          "display" : "Sinus congestion",
          "definition" : "A category type that records sinus congestion as a symptom."
        },
        {
          "code" : "skippedHeartbeat",
          "display" : "Skipped heartbeat",
          "definition" : "A category type that records skipped heartbeat as a symptom."
        },
        {
          "code" : "sleepChanges",
          "display" : "Sleep changes",
          "definition" : "A category type that records sleep changes as a symptom."
        },
        {
          "code" : "soreThroat",
          "display" : "Sore throat",
          "definition" : "A category type that records sore throat as a symptom."
        },
        {
          "code" : "vaginalDryness",
          "display" : "Vaginal dryness",
          "definition" : "A category type that records vaginal dryness as a symptom."
        },
        {
          "code" : "vomiting",
          "display" : "Vomiting",
          "definition" : "A category type that records vomiting as a symptom."
        },
        {
          "code" : "wheezing",
          "display" : "Wheezing",
          "definition" : "A category type that records wheezing as a symptom."
        }
      ]
    },
    {
      "code" : "UVExposure",
      "display" : "Uv exposure",
      "concept" : [
        {
          "code" : "uvExposure",
          "display" : "Uv exposure",
          "definition" : "A quantity sample type that measures the user's exposure to UV radiation."
        }
      ]
    },
    {
      "code" : "VitalSigns",
      "display" : "Vital signs",
      "concept" : [
        {
          "code" : "atrialFibrillationBurden",
          "display" : "Atrial fibrillation burden",
          "definition" : "A quantity type that measures an estimate of the percentage of time a person's heart shows signs of atrial fibrillation (AFib) while wearing Apple Watch.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "bloodPressure",
          "display" : "Blood pressure",
          "definition" : "A correlation sample that combines a systolic sample and a diastolic sample into a single blood pressure reading."
        },
        {
          "code" : "bloodPressureDiastolic",
          "display" : "Blood pressure diastolic",
          "definition" : "A quantity sample type that measures the user's diastolic blood pressure.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mm[Hg]"
              }
            }
          ]
        },
        {
          "code" : "bloodPressureSystolic",
          "display" : "Blood pressure systolic",
          "definition" : "A quantity sample type that measures the user's systolic blood pressure.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "mm[Hg]"
              }
            }
          ]
        },
        {
          "code" : "bodyTemperature",
          "display" : "Body temperature",
          "definition" : "A quantity sample type that measures the user's body temperature.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "Cel"
              }
            }
          ]
        },
        {
          "code" : "heartRate",
          "display" : "Heart rate",
          "definition" : "A quantity sample type that measures the user's heart rate.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/min"
              }
            }
          ]
        },
        {
          "code" : "heartRateVariabilitySDNN",
          "display" : "Heart rate variability sdnn",
          "definition" : "A quantity sample type that measures the standard deviation of heartbeat intervals.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ms"
              }
            }
          ]
        },
        {
          "code" : "heartRateRecoveryOneMinute",
          "display" : "Heart rate recovery one minute",
          "definition" : "A quantity sample that records the reduction in heart rate from the peak exercise rate to the rate one minute after exercising ended.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/min"
              }
            }
          ]
        },
        {
          "code" : "highHeartRateEvent",
          "display" : "High heart rate event",
          "definition" : "A category sample type for high heart rate events."
        },
        {
          "code" : "irregularHeartRhythmEvent",
          "display" : "Irregular heart rhythm event",
          "definition" : "A category sample type for irregular heart rhythm events."
        },
        {
          "code" : "lowHeartRateEvent",
          "display" : "Low heart rate event",
          "definition" : "A category sample type for low heart rate events."
        },
        {
          "code" : "oxygenSaturation",
          "display" : "Oxygen saturation",
          "definition" : "A quantity sample type that measures the user's oxygen saturation.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "%"
              }
            }
          ]
        },
        {
          "code" : "respiratoryRate",
          "display" : "Respiratory rate",
          "definition" : "A quantity sample type that measures the user's respiratory rate.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/min"
              }
            }
          ]
        },
        {
          "code" : "restingHeartRate",
          "display" : "Resting heart rate",
          "definition" : "A quantity sample type that measures the user's resting heart rate.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/min"
              }
            }
          ]
        },
        {
          "code" : "walkingHeartRateAverage",
          "display" : "Walking heart rate average",
          "definition" : "A quantity sample type that measures the user's heart rate while walking.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "/min"
              }
            }
          ]
        },
        {
          "code" : "rrInterval",
          "display" : "Rr interval",
          "definition" : "The time period between successive R waves.",
          "property" : [
            {
              "code" : "unit",
              "valueCoding" : {
                "system" : "http://unitsofmeasure.org",
                "code" : "ms"
              }
            }
          ]
        }
      ]
    },
    {
      "code" : "WorkoutActivity",
      "display" : "Workout activity",
      "concept" : [
        {
          "code" : "americanFootball",
          "display" : "American football",
          "definition" : "The constant for playing American football."
        },
        {
          "code" : "archery",
          "display" : "Archery",
          "definition" : "The constant for shooting archery."
        },
        {
          "code" : "australianFootball",
          "display" : "Australian football",
          "definition" : "The constant for playing Australian football."
        },
        {
          "code" : "badminton",
          "display" : "Badminton",
          "definition" : "The constant for playing badminton."
        },
        {
          "code" : "barre",
          "display" : "Barre",
          "definition" : "The constant for barre workout."
        },
        {
          "code" : "baseball",
          "display" : "Baseball",
          "definition" : "The constant for playing baseball."
        },
        {
          "code" : "basketball",
          "display" : "Basketball",
          "definition" : "The constant for playing basketball."
        },
        {
          "code" : "bowling",
          "display" : "Bowling",
          "definition" : "The constant for bowling."
        },
        {
          "code" : "boxing",
          "display" : "Boxing",
          "definition" : "The constant for boxing."
        },
        {
          "code" : "cardioDance",
          "display" : "Cardio dance",
          "definition" : "The constant for cardiovascular dance workouts."
        },
        {
          "code" : "climbing",
          "display" : "Climbing",
          "definition" : "The constant for climbing."
        },
        {
          "code" : "cooldown",
          "display" : "Cooldown",
          "definition" : "The constant for low intensity stretching and mobility exercises following a more vigorous workout."
        },
        {
          "code" : "coreTraining",
          "display" : "Core training",
          "definition" : "The constant for core training."
        },
        {
          "code" : "cricket",
          "display" : "Cricket",
          "definition" : "The constant for playing cricket."
        },
        {
          "code" : "crossCountrySkiing",
          "display" : "Cross country skiing",
          "definition" : "The constant for cross country skiing."
        },
        {
          "code" : "crossTraining",
          "display" : "Cross training",
          "definition" : "The constant for exercise that includes any mixture of cardio, strength, and/or flexibility training."
        },
        {
          "code" : "curling",
          "display" : "Curling",
          "definition" : "The constant for curling."
        },
        {
          "code" : "cycling",
          "display" : "Cycling",
          "definition" : "The constant for cycling."
        },
        {
          "code" : "dance",
          "display" : "Dance",
          "definition" : "(Deprecated) The constant for dancing."
        },
        {
          "code" : "danceInspiredTraining",
          "display" : "Dance inspired training",
          "definition" : "(Deprecated) The constant for workouts inspired by dance, including Pilates, Barre, and Feldenkrais."
        },
        {
          "code" : "discSports",
          "display" : "Disc sports",
          "definition" : "The constant for playing disc sports such as Ultimate and Disc Golf."
        },
        {
          "code" : "downhillSkiing",
          "display" : "Downhill skiing",
          "definition" : "The constant for downhill skiing."
        },
        {
          "code" : "elliptical",
          "display" : "Elliptical",
          "definition" : "The constant for workouts on an elliptical machine."
        },
        {
          "code" : "equestrianSports",
          "display" : "Equestrian sports",
          "definition" : "The constant for activities that involve riding a horse, including polo, horse racing, and horse riding."
        },
        {
          "code" : "fencing",
          "display" : "Fencing",
          "definition" : "The constant for fencing."
        },
        {
          "code" : "fishing",
          "display" : "Fishing",
          "definition" : "The constant for fishing."
        },
        {
          "code" : "fitnessGaming",
          "display" : "Fitness gaming",
          "definition" : "The constant for playing fitness-based video games."
        },
        {
          "code" : "flexibility",
          "display" : "Flexibility",
          "definition" : "The constant for a flexibility workout."
        },
        {
          "code" : "functionalStrengthTraining",
          "display" : "Functional strength training",
          "definition" : "The constant for strength training, primarily with free weights and body weight."
        },
        {
          "code" : "golf",
          "display" : "Golf",
          "definition" : "The constant for playing golf."
        },
        {
          "code" : "gymnastics",
          "display" : "Gymnastics",
          "definition" : "Performing gymnastics."
        },
        {
          "code" : "handball",
          "display" : "Handball",
          "definition" : "The constant for playing handball."
        },
        {
          "code" : "handCycling",
          "display" : "Hand cycling",
          "definition" : "The constant for hand cycling."
        },
        {
          "code" : "highIntensityIntervalTraining",
          "display" : "High intensity interval training",
          "definition" : "The constant for high intensity interval training."
        },
        {
          "code" : "hiking",
          "display" : "Hiking",
          "definition" : "The constant for hiking."
        },
        {
          "code" : "hockey",
          "display" : "Hockey",
          "definition" : "The constant for playing hockey, including ice hockey, field hockey, and related sports."
        },
        {
          "code" : "hunting",
          "display" : "Hunting",
          "definition" : "The constant for hunting."
        },
        {
          "code" : "jumpRope",
          "display" : "Jump rope",
          "definition" : "The constant for jumping rope."
        },
        {
          "code" : "kickboxing",
          "display" : "Kickboxing",
          "definition" : "The constant for kickboxing."
        },
        {
          "code" : "lacrosse",
          "display" : "Lacrosse",
          "definition" : "The constant for playing lacrosse."
        },
        {
          "code" : "martialArts",
          "display" : "Martial arts",
          "definition" : "The constant for practicing martial arts."
        },
        {
          "code" : "mindAndBody",
          "display" : "Mind and body",
          "definition" : "The constant for performing activities like walking meditation, Gyrotonic exercise, and Qigong."
        },
        {
          "code" : "mixedCardio",
          "display" : "Mixed cardio",
          "definition" : "The constant for workouts that mix a variety of cardio exercise machines or modalities."
        },
        {
          "code" : "mixedMetabolicCardioTraining",
          "display" : "Mixed metabolic cardio training",
          "definition" : "The constant for performing any mix of cardio-focused exercises."
        },
        {
          "code" : "other",
          "display" : "Other",
          "definition" : "The constant for a workout that does not match any of the other workout activity types."
        },
        {
          "code" : "paddleSports",
          "display" : "Paddle sports",
          "definition" : "The constant for canoeing, kayaking, paddling an outrigger, paddling a stand-up paddle board, and related sports."
        },
        {
          "code" : "pickleball",
          "display" : "Pickleball",
          "definition" : "The constant for playing pickleball."
        },
        {
          "code" : "pilates",
          "display" : "Pilates",
          "definition" : "The constant for a pilates workout."
        },
        {
          "code" : "play",
          "display" : "Play",
          "definition" : "The constant for play-based activities like tag, dodgeball, hopscotch, tetherball, and playing on a jungle gym."
        },
        {
          "code" : "preparationAndRecovery",
          "display" : "Preparation and recovery",
          "definition" : "The constant for warm-up and therapeutic activities like foam rolling and stretching."
        },
        {
          "code" : "racquetball",
          "display" : "Racquetball",
          "definition" : "The constant for playing racquetball."
        },
        {
          "code" : "rowing",
          "display" : "Rowing",
          "definition" : "The constant for rowing."
        },
        {
          "code" : "rugby",
          "display" : "Rugby",
          "definition" : "The constant for playing rugby."
        },
        {
          "code" : "running",
          "display" : "Running",
          "definition" : "The constant for running and jogging."
        },
        {
          "code" : "sailing",
          "display" : "Sailing",
          "definition" : "The constant for sailing."
        },
        {
          "code" : "skatingSports",
          "display" : "Skating sports",
          "definition" : "The constant for skating activities, including ice skating, speed skating, inline skating, and skateboarding."
        },
        {
          "code" : "snowboarding",
          "display" : "Snowboarding",
          "definition" : "The constant for snowboarding."
        },
        {
          "code" : "snowSports",
          "display" : "Snow sports",
          "definition" : "The constant for a variety of snow sports, including sledding, snowmobiling, or building a snowman."
        },
        {
          "code" : "soccer",
          "display" : "Soccer",
          "definition" : "The constant for playing soccer."
        },
        {
          "code" : "socialDance",
          "display" : "Social dance",
          "definition" : "The constant for dancing with a partner or partners, such as swing, salsa, or folk dances."
        },
        {
          "code" : "softball",
          "display" : "Softball",
          "definition" : "The constant for playing softball."
        },
        {
          "code" : "squash",
          "display" : "Squash",
          "definition" : "The constant for playing squash."
        },
        {
          "code" : "stairClimbing",
          "display" : "Stair climbing",
          "definition" : "The constant for workouts using a stair climbing machine."
        },
        {
          "code" : "stairs",
          "display" : "Stairs",
          "definition" : "The constant for running, walking, or other drills using stairs (for example, in a stadium or inside a multilevel building)."
        },
        {
          "code" : "stepTraining",
          "display" : "Step training",
          "definition" : "The constant for training using a step bench."
        },
        {
          "code" : "surfingSports",
          "display" : "Surfing sports",
          "definition" : "The constant for a variety of surf sports, including surfing, kite surfing, and wind surfing."
        },
        {
          "code" : "swimBikeRun",
          "display" : "Swim bike run",
          "definition" : "The constant for multisport activities like triathlons."
        },
        {
          "code" : "swimming",
          "display" : "Swimming",
          "definition" : "The constant for swimming."
        },
        {
          "code" : "tableTennis",
          "display" : "Table tennis",
          "definition" : "The constant for playing table tennis."
        },
        {
          "code" : "taiChi",
          "display" : "Tai chi",
          "definition" : "The constant for tai chi."
        },
        {
          "code" : "tennis",
          "display" : "Tennis",
          "definition" : "The constant for playing tennis."
        },
        {
          "code" : "trackAndField",
          "display" : "Track and field",
          "definition" : "Participating in track and field events, including shot put, javelin, pole vaulting, and related sports."
        },
        {
          "code" : "traditionalStrengthTraining",
          "display" : "Traditional strength training",
          "definition" : "The constant for strength training exercises primarily using machines or free weights."
        },
        {
          "code" : "transition",
          "display" : "Transition",
          "definition" : "A constant for the transition time between activities in a multisport workout."
        },
        {
          "code" : "underwaterDiving",
          "display" : "Underwater diving",
          "definition" : "The constant for underwater diving."
        },
        {
          "code" : "volleyball",
          "display" : "Volleyball",
          "definition" : "The constant for playing volleyball."
        },
        {
          "code" : "walking",
          "display" : "Walking",
          "definition" : "The constant for walking."
        },
        {
          "code" : "waterFitness",
          "display" : "Water fitness",
          "definition" : "The constant for aerobic exercise performed in shallow water."
        },
        {
          "code" : "waterPolo",
          "display" : "Water polo",
          "definition" : "The constant for playing water polo."
        },
        {
          "code" : "waterSports",
          "display" : "Water sports",
          "definition" : "The constant for a variety of water sports, including water skiing, wake boarding, and related activities."
        },
        {
          "code" : "wheelchairRunPace",
          "display" : "Wheelchair run pace",
          "definition" : "The constant for wheelchair workout at running pace."
        },
        {
          "code" : "wheelchairWalkPace",
          "display" : "Wheelchair walk pace",
          "definition" : "The constant for a wheelchair workout at walking pace."
        },
        {
          "code" : "wrestling",
          "display" : "Wrestling",
          "definition" : "The constant for wrestling."
        },
        {
          "code" : "yoga",
          "display" : "Yoga",
          "definition" : "The constant for practicing yoga."
        },
        {
          "code" : "backExtension",
          "display" : "Back extension",
          "definition" : "The constant for back Extension."
        },
        {
          "code" : "barbellShoulderPress",
          "display" : "Barbell shoulder press",
          "definition" : "The constant for barbell shoulder press."
        },
        {
          "code" : "benchPress",
          "display" : "Bench press",
          "definition" : "The constant for bench press."
        },
        {
          "code" : "benchSitUp",
          "display" : "Bench sit up",
          "definition" : "The constant for bench sit up."
        },
        {
          "code" : "biking",
          "display" : "Biking",
          "definition" : "The constant for biking."
        },
        {
          "code" : "bikingStationary",
          "display" : "Biking stationary",
          "definition" : "The constant for biking stationary."
        },
        {
          "code" : "bootCamp",
          "display" : "Boot camp",
          "definition" : "The constant for boot camp."
        },
        {
          "code" : "burpee",
          "display" : "Burpee",
          "definition" : "The constant for burpee."
        },
        {
          "code" : "calisthenics",
          "display" : "Calisthenics",
          "definition" : "The constant for calisthenics."
        },
        {
          "code" : "crunch",
          "display" : "Crunch",
          "definition" : "The constant for crunch."
        },
        {
          "code" : "deadlift",
          "display" : "Deadlift",
          "definition" : "The constant for deadlift."
        },
        {
          "code" : "dumbbellCurlLeftArm",
          "display" : "Dumbbell curl left arm",
          "definition" : "The constant for dumbbell curl left arm."
        },
        {
          "code" : "dumbbellCurlRightArm",
          "display" : "Dumbbell curl right arm",
          "definition" : "The constant for dumbbell curl right arm."
        },
        {
          "code" : "dumbbellFrontRaise",
          "display" : "Dumbbell front raise",
          "definition" : "The constant for dumbbell front raise."
        },
        {
          "code" : "dumbbellLateralRaise",
          "display" : "Dumbbell lateral raise",
          "definition" : "The constant for dumbbell lateral raise."
        },
        {
          "code" : "dumbbellTricepsExtensionLeftArm",
          "display" : "Dumbbell triceps extension left arm",
          "definition" : "The constant for dumbbell triceps extension left arm."
        },
        {
          "code" : "dumbbellTricepsExtensionRightArm",
          "display" : "Dumbbell triceps extension right arm",
          "definition" : "The constant for dumbbell triceps extension right arm."
        },
        {
          "code" : "dumbbellTricepsExtensionTwoArm",
          "display" : "Dumbbell triceps extension two arm",
          "definition" : "The constant for dumbbell triceps extension two arm."
        },
        {
          "code" : "exerciseClass",
          "display" : "Exercise class",
          "definition" : "The constant for exercise class."
        },
        {
          "code" : "forwardTwist",
          "display" : "Forward twist",
          "definition" : "The constant for forward twist."
        },
        {
          "code" : "frisbeeDisc",
          "display" : "Frisbee disc",
          "definition" : "The constant for frisbee disc."
        },
        {
          "code" : "guidedBreathing",
          "display" : "Guided breathing",
          "definition" : "The constant for guided breathing."
        },
        {
          "code" : "iceHockey",
          "display" : "Ice hockey",
          "definition" : "The constant for ice hockey."
        },
        {
          "code" : "iceSkating",
          "display" : "Ice skating",
          "definition" : "The constant for ice skating."
        },
        {
          "code" : "jumpingJack",
          "display" : "Jumping jack",
          "definition" : "The constant for jumping jack."
        },
        {
          "code" : "latPullDown",
          "display" : "Lat pull down",
          "definition" : "The constant for lat pull down."
        },
        {
          "code" : "lunge",
          "display" : "Lunge",
          "definition" : "The constant for lunge."
        },
        {
          "code" : "meditation",
          "display" : "Meditation",
          "definition" : "The constant for meditation."
        },
        {
          "code" : "paraGliding",
          "display" : "Para gliding",
          "definition" : "The constant for para gliding."
        },
        {
          "code" : "plank",
          "display" : "Plank",
          "definition" : "The constant for plank."
        },
        {
          "code" : "rockClimbing",
          "display" : "Rock climbing",
          "definition" : "The constant for rock climbing."
        },
        {
          "code" : "rollerHockey",
          "display" : "Roller hockey",
          "definition" : "The constant for roller hockey."
        },
        {
          "code" : "rowingMachine",
          "display" : "Rowing machine",
          "definition" : "The constant for rowing machine."
        },
        {
          "code" : "runningTreadmill",
          "display" : "Running treadmill",
          "definition" : "The constant for running treadmill."
        },
        {
          "code" : "scubaDiving",
          "display" : "Scuba diving",
          "definition" : "The constant for scuba diving."
        },
        {
          "code" : "skiing",
          "display" : "Skiing",
          "definition" : "The constant for skiing."
        },
        {
          "code" : "snowshoeing",
          "display" : "Snowshoeing",
          "definition" : "The constant for snowshoeing."
        },
        {
          "code" : "squat",
          "display" : "Squat",
          "definition" : "The constant for squat."
        },
        {
          "code" : "strengthTraining",
          "display" : "Strength training",
          "definition" : "The constant for strength training."
        },
        {
          "code" : "stretching",
          "display" : "Stretching",
          "definition" : "The constant for stretching."
        },
        {
          "code" : "swimmingOpenWater",
          "display" : "Swimming open water",
          "definition" : "The constant for swimming open water."
        },
        {
          "code" : "swimmingPool",
          "display" : "Swimming pool",
          "definition" : "The constant for swimming pool."
        },
        {
          "code" : "upperTwist",
          "display" : "Upper twist",
          "definition" : "The constant for upper twist."
        },
        {
          "code" : "weightlifting",
          "display" : "Weightlifting",
          "definition" : "The constant for weightlifting."
        },
        {
          "code" : "wheelchair",
          "display" : "Wheelchair",
          "definition" : "The constant for wheelchair."
        },
        {
          "code" : "workout",
          "display" : "Workout",
          "definition" : "The constant for workout."
        },
        {
          "code" : "armCurl",
          "display" : "Arm curl",
          "definition" : "The constant for arm curl exercises targeting the biceps."
        },
        {
          "code" : "ballSlam",
          "display" : "Ball slam",
          "definition" : "The constant for full-body workouts using a slam ball."
        },
        {
          "code" : "doubleArmTricepsExtension",
          "display" : "Double arm triceps extension",
          "definition" : "The constant for triceps extension exercises using both arms."
        },
        {
          "code" : "dumbbellRow",
          "display" : "Dumbbell row",
          "definition" : "The constant for back-strengthening exercises using dumbbells."
        },
        {
          "code" : "frontRaise",
          "display" : "Front raise",
          "definition" : "The constant for shoulder workouts lifting weights in front of the body."
        },
        {
          "code" : "hipThrust",
          "display" : "Hip thrust",
          "definition" : "The constant for glute-focused exercises involving hip elevation."
        },
        {
          "code" : "hulaHoop",
          "display" : "Hula hoop",
          "definition" : "The constant for core and cardio workouts using a hula hoop."
        },
        {
          "code" : "kettlebellSwing",
          "display" : "Kettlebell swing",
          "definition" : "The constant for dynamic full-body workouts using a kettlebell."
        },
        {
          "code" : "lateralRaise",
          "display" : "Lateral raise",
          "definition" : "The constant for shoulder workouts lifting weights to the sides."
        },
        {
          "code" : "legCurl",
          "display" : "Leg curl",
          "definition" : "The constant for hamstring-focused leg curl exercises."
        },
        {
          "code" : "legExtension",
          "display" : "Leg extension",
          "definition" : "The constant for quadriceps-focused leg extension exercises."
        },
        {
          "code" : "legPress",
          "display" : "Leg press",
          "definition" : "The constant for lower-body strength training using a leg press machine."
        },
        {
          "code" : "legRaise",
          "display" : "Leg raise",
          "definition" : "The constant for abdominal and hip flexor exercises involving leg lifts."
        },
        {
          "code" : "mountainClimber",
          "display" : "Mountain climber",
          "definition" : "The constant for cardio and core workouts simulating climbing motion."
        },
        {
          "code" : "otherWorkout",
          "display" : "Other workout",
          "definition" : "The constant for workouts not categorized under specific types."
        },
        {
          "code" : "pause",
          "display" : "Pause",
          "definition" : "The constant for temporary pauses during a workout session."
        },
        {
          "code" : "pullUp",
          "display" : "Pull-up",
          "definition" : "The constant for upper-body strength exercises involving pulling up the body."
        },
        {
          "code" : "punch",
          "display" : "Punch",
          "definition" : "The constant for boxing-style workouts involving punching motions."
        },
        {
          "code" : "rest",
          "display" : "Rest",
          "definition" : "The constant for rest periods between or after workouts."
        },
        {
          "code" : "shoulderPress",
          "display" : "Shoulder press",
          "definition" : "The constant for overhead pressing exercises targeting the shoulders."
        },
        {
          "code" : "singleArmTricepsExtension",
          "display" : "Single arm triceps extension",
          "definition" : "The constant for triceps extension exercises using one arm."
        },
        {
          "code" : "sitUp",
          "display" : "Sit-up",
          "definition" : "The constant for abdominal exercises involving torso lifts."
        },
        {
          "code" : "stairClimbingMachine",
          "display" : "Stair climbing",
          "definition" : "The constant for workouts using a stair climbing machine."
        },
        {
          "code" : "swimmingBackstroke",
          "display" : "Swimming backstroke",
          "definition" : "The constant for swimming using the backstroke technique."
        },
        {
          "code" : "swimmingBreaststroke",
          "display" : "Swimming breaststroke",
          "definition" : "The constant for swimming using the breaststroke technique."
        },
        {
          "code" : "swimmingButterfly",
          "display" : "Swimming butterfly",
          "definition" : "The constant for swimming using the butterfly stroke."
        },
        {
          "code" : "swimmingFreestyle",
          "display" : "Swimming freestyle",
          "definition" : "The constant for swimming using the freestyle stroke."
        },
        {
          "code" : "swimmingMixed",
          "display" : "Swimming mixed",
          "definition" : "The constant for swimming using a combination of strokes."
        },
        {
          "code" : "swimmingOther",
          "display" : "Swimming other",
          "definition" : "The constant for swimming using other or unspecified techniques."
        }
      ]
    },
    {
      "code" : "Audiogram",
      "display" : "Audiogram",
      "concept" : [
        {
          "code" : "hearingSensitivity",
          "display" : "Hearing sensitivity",
          "definition" : "A pair of frequencies and left/right ear sensitivity data to represent the patient's hearing sensitivity for each frequency."
        }
      ]
    },
    {
      "code" : "food",
      "display" : "Food"
    },
    {
      "code" : "medicationAdherence",
      "display" : "Medication adherence",
      "definition" : "The degree to which a patient correctly follows medical advice, particularly in relation to taking prescribed medication."
    },
    {
      "code" : "Mind",
      "display" : "Mind",
      "concept" : [
        {
          "code" : "stateOfMind",
          "display" : "State of Mind",
          "definition" : "Momentary emotions and daily moods."
        },
        {
          "code" : "gad7",
          "display" : "GAD-7 assessment",
          "definition" : "The Generalized Anxiety Disorder 7-item scale."
        },
        {
          "code" : "phq9",
          "display" : "PHQ-9 assessment",
          "definition" : "The nine-item Patient Health Questionnaire."
        }
      ]
    }
  ]
}

```
