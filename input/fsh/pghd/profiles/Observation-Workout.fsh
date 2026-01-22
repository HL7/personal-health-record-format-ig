Profile: PGHDWorkout
Parent: Observation
Id: pghd-workout
Title: "PGHD Workout Profile"
Description: """
This profile defines how to represent Workout.
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Workout Profile"

* category[ObservationCategory].coding.code = #activity (exactly)
* code.coding[PGHDCode] from ObservationWorkout
* hasMember only Reference(
    PGHDActivity or
    PGHDAlcholConsumption or
    PGHDHearing or
    PGHDHearingSensitivity or
    PGHDTestResult or
    PGHDMobility or
    PGHDNutrition or
    PGHDReproductiveHealth or
    PGHDSelfCare or
    PGHDSleep or
    PGHDSymptom or
    PGHDUVExposure or
    PGHDWorkout
  )
* category MS
* code MS
* hasMember MS
