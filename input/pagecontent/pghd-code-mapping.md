# PHR-IG (PGHD) Code Mapping

## 1. Purpose

This document describes how PHR-IG (PGHD) codes are used by implementations and how they relate to external terminology standards, platforms, and the International Patient Summary (IPS).

PHR-IG (PGHD) codes are the canonical codes used to record, exchange, and process PGHD data. Where an appropriate target code is available, ConceptMap information may be used to map the PHR-IG code to an external terminology such as LOINC or SNOMED CT.

The mapping supports interoperability but does not replace the original PHR-IG code. Implementations should retain the PHR-IG code for stable processing, traceability, backward compatibility, and interpretation of historical data.

## 2. Implementation Principles

1. **Use the PHR-IG code as the canonical implementation code.**  
   Applications use the PHR-IG code for internal processing and PGHD exchange.

2. **Use ConceptMap information when external terminology is required.**  
   Where a corresponding external standard code is available, implementations may translate or additionally include the mapped code according to the use case.

3. **Retain the original PHR-IG code after translation.**  
   The source PHR-IG code remains available together with any mapped external code.

4. **Do not block implementation while a mapping is pending.**  
   A PHR-IG code remains usable when an external terminology mapping is under submission, under review, or not yet determined.

5. **Maintain codes required for historical-data processing.**  
   A code remains part of the PHR-IG code system when it is needed to interpret or process existing data, regardless of the lifecycle of the original source-platform data type.

## 3. ConceptMap Model

```text
Source-system codes
        |
        +-- mapped to --> PHR-IG (PGHD) Code
                              |
                              +-- FHIR ConceptMap --> LOINC
                              |
                              +-- FHIR ConceptMap --> SNOMED CT
                              |
                              +-- No external mapping --> Managed in PHR-IG
```

Codes from source systems are normalized to PHR-IG codes. The PHR-IG code is the canonical code used by implementations. FHIR ConceptMap resources provide mappings from PHR-IG codes to external terminologies such as LOINC and SNOMED CT; they are not intended to provide reverse mappings to individual source-system codes.

## 4. PHR Code Mapping Table

|Code system|Code value|HealthKit (iOS26)|Health Connect (Android16)|LOINC|SNOMED CT|IPS Free Set status|Mapping target|Mapping status|
|---|---|---|---|---|---|---|---|---|
|Observation PGHD Codes|activeEnergyBurned|activeEnergyBurned|ActiveCaloriesBurnedRecord|93819-1|||LOINC|Mapped|
|Observation PGHD Codes|basalEnergyBurned|basalEnergyBurned|BasalMetabolicRateRecord||||LOINC|In Progress|
|Observation PGHD Codes|cyclingPedalingCadence||CyclingPedalingCadenceRecord||||LOINC|In Progress|
|Observation PGHD Codes|distance||DistanceRecord|103208-5|||LOINC|Mapped|
|Observation PGHD Codes|elevationGained||ElevationGainedRecord||||LOINC|In Progress|
|Observation PGHD Codes|flightsClimbed|flightsClimbed|FloorsClimbedRecord||||LOINC|In Progress|
|Observation PGHD Codes|totalEnergyBurned||TotalCaloriesBurnedRecord|41981-2|||LOINC|In Progress|
|Observation PGHD Codes|appleExerciseTime|appleExerciseTime||-|-||LOINC|In Progress|
|Observation PGHD Codes|appleMoveTime|appleMoveTime||-|-||LOINC|In Progress|
|Observation PGHD Codes|appleStandHour|appleStandHour||-|-||LOINC|In Progress|
|Observation PGHD Codes|appleStandTime|appleStandTime||-|-||LOINC|In Progress|
|Observation PGHD Codes|distanceCycling|distanceCycling||93818-3|||LOINC|Mapped|
|Observation PGHD Codes|distanceDownhillSnowSports|distanceDownhillSnowSports|||||LOINC|In Progress|
|Observation PGHD Codes|distanceSwimming|distanceSwimming||93816-7|||LOINC|Mapped|
|Observation PGHD Codes|distanceWalkingRunning|distanceWalkingRunning|||||LOINC|In Progress|
|Observation PGHD Codes|distanceWheelchair|distanceWheelchair|||||LOINC|In Progress|
|Observation PGHD Codes|lowCardioFitnessEvent|lowCardioFitnessEvent|||||LOINC|In Progress|
|Observation PGHD Codes|nikeFuel|nikeFuel||-|-||PHR-IG (PGHD)|Mapped|
|Observation PGHD Codes|physicalEffort||||||LOINC|In Progress|
|Observation PGHD Codes|power||PowerRecord||||LOINC|In Progress|
|Observation PGHD Codes|pushCount|pushCount|WheelchairPushesRecord||||LOINC|TBD|
|Observation PGHD Codes|runningGroundContactTime|runningGroundContactTime|||||LOINC|In Progress|
|Observation PGHD Codes|runningPower|runningPower|||||LOINC|In Progress|
|Observation PGHD Codes|runningSpeed|runningSpeed|||||LOINC|In Progress|
|Observation PGHD Codes|runningStrideLength|runningStrideLength|||||LOINC|In Progress|
|Observation PGHD Codes|runningVerticalOscillation|runningVerticalOscillation|||||LOINC|In Progress|
|Observation PGHD Codes|stepsCadence||StepsCadenceRecord||||LOINC|In Progress|
|Observation PGHD Codes|stepCount|stepCount|StepsRecord|55423-8|||LOINC|Mapped|
|Observation PGHD Codes|speed||SpeedRecord||||LOINC|In Progress|
|Observation PGHD Codes|swimmingStrokeCount|swimmingStrokeCount|SwimmingStrokesRecord||||LOINC|In Progress|
|Observation PGHD Codes|vo2Max|vo2Max|Vo2MaxRecord||||LOINC|In Progress|
|Observation PGHD Codes|pace||||||LOINC|In Progress|
|Observation PGHD Codes|moderateActivity||||||LOINC|In Progress|
|Observation PGHD Codes|vigorousActivity||||||LOINC|In Progress|
|Observation PGHD Codes|moderateToVigorousActivity||||||LOINC|In Progress|
|Observation PGHD Codes|met||||||LOINC|In Progress|
|Observation PGHD Codes|metByStandardRmr||||||LOINC|In Progress|
|Observation PGHD Codes|crossCountrySkiingSpeed||||||LOINC|In Progress|
|Observation PGHD Codes|distanceCrossCountrySkiing||||||LOINC|In Progress|
|Observation PGHD Codes|paddleSportsSpeed||||||LOINC|In Progress|
|Observation PGHD Codes|distancePaddleSports||||||LOINC|In Progress|
|Observation PGHD Codes|rowingSpeed||||||LOINC|In Progress|
|Observation PGHD Codes|distanceRowing||||||LOINC|In Progress|
|Observation PGHD Codes|distanceSkatingSports||||||LOINC|In Progress|
|Observation PGHD Codes|estimatedWorkoutEffortScore||||||LOINC|In Progress|
|Observation PGHD Codes|workoutEffortScore||||||LOINC|In Progress|
|Observation PGHD Codes|bloodAlcoholContent|bloodAlcoholContent|||||LOINC|In Progress|
|Observation PGHD Codes|numberOfAlcoholicBeverages|numberOfAlcoholicBeverages|||||LOINC|In Progress|
|Observation PGHD Codes|appleSleepingWristTemperature|appleSleepingWristTemperature||-|-||LOINC|In Progress|
|Observation PGHD Codes|bodyFatPercentage|bodyFatPercentage|BodyFatRecord|41982-0|||LOINC|Mapped|
|Observation PGHD Codes|bodyMass|bodyMass|WeightRecord|29463-7|||LOINC|Mapped|
|Observation PGHD Codes|bodyMassIndex|bodyMassIndex||39156-5|||LOINC|Mapped|
|Observation PGHD Codes|height|height|HeightRecord|8302-2|||LOINC|In Progress|
|Observation PGHD Codes|hipCircumference||HipCircumferenceRecord||||LOINC|In Progress|
|Observation PGHD Codes|leanBodyMass|leanBodyMass|LeanBodyMassRecord|91557-9|||LOINC|Mapped|
|Observation PGHD Codes|waistCircumference|waistCircumference|WaistCircumferenceRecord||||LOINC|In Progress|
|Observation PGHD Codes|boneMass||BoneMassRecord||||LOINC|In Progress|
|Observation PGHD Codes|underwaterDepth|underwaterDepth|||||LOINC|In Progress|
|Observation PGHD Codes|waterTemperature|waterTemperature|||||LOINC|In Progress|
|Observation PGHD Codes|environmentalAudioExposure|environmentalAudioExposure|||||LOINC|In Progress|
|Observation PGHD Codes|environmentalAudioExposureEvent|environmentalAudioExposureEvent|||||LOINC|In Progress|
|Observation PGHD Codes|headphoneAudioExposure|headphoneAudioExposure|||||LOINC|In Progress|
|Observation PGHD Codes|headphoneAudioExposureEvent|headphoneAudioExposureEvent|||||LOINC|In Progress|
|Observation PGHD Codes|electrocardiogram|HKElectrocardiogramType||||||TBD|
|Observation PGHD Codes|heartBeatSeries|HKDataTypeIdentifierHeartbeatSeries||||||TBD|
|Observation PGHD Codes|bloodGlucose|bloodGlucose|BloodGlucoseRecord|2339-0|||LOINC|In Progress|
|Observation PGHD Codes|electrodermalActivity|electrodermalActivity||||||TBD|
|Observation PGHD Codes|forcedExpiratoryVolume1|forcedExpiratoryVolume1||20150-9|||LOINC|Mapped|
|Observation PGHD Codes|forcedVitalCapacity|forcedVitalCapacity||19870-5|||LOINC|Mapped|
|Observation PGHD Codes|inhalerUsage|inhalerUsage||||||TBD|
|Observation PGHD Codes|insulinDelivery|insulinDelivery||||||TBD|
|Observation PGHD Codes|numberOfTimesFallen|numberOfTimesFallen||||||TBD|
|Observation PGHD Codes|peakExpiratoryFlowRate|peakExpiratoryFlowRate||33452-4|||LOINC|Mapped|
|Observation PGHD Codes|peripheralPerfusionIndex|peripheralPerfusionIndex|||||LOINC|In Progress|
|Observation PGHD Codes|timeInDaylight|||||||TBD|
|Observation PGHD Codes|inspiratoryTime|||||||TBD|
|Observation PGHD Codes|ventilationCycleTime|||||||TBD|
|Observation PGHD Codes|minuteVolume|||||||TBD|
|Observation PGHD Codes|breathCarbonMonoxide|||||||TBD|
|Observation PGHD Codes|mindfulSession|mindfulSession|MindfulnessSessionRecord||||LOINC|In Progress|
|Observation PGHD Codes|sleepAnalysis|sleepAnalysis|SleepSessionRecord||||LOINC|In Progress|
|Observation PGHD Codes|sleepEpisode|||||||TBD|
|Observation PGHD Codes|snoreIndex|||||||TBD|
|Observation PGHD Codes|snoreEvent|||||||TBD|
|Observation PGHD Codes|sleepAHI|||||||TBD|
|Observation PGHD Codes|sleepArousalIndex|||||||TBD|
|Observation PGHD Codes|appleSleepingBreathingDisturbances|||-|-||LOINC|In Progress|
|Observation PGHD Codes|sleepApneaEvent||||||LOINC|In Progress|
|Observation PGHD Codes|appleWalkingSteadiness|appleWalkingSteadiness||-|-||LOINC|In Progress|
|Observation PGHD Codes|appleWalkingSteadinessEvent|appleWalkingSteadinessEvent||-|-||LOINC|In Progress|
|Observation PGHD Codes|sixMinuteWalkTestDistance|sixMinuteWalkTestDistance||64098-7|||LOINC|Mapped|
|Observation PGHD Codes|walkingSpeed|walkingSpeed|||||LOINC|In Progress|
|Observation PGHD Codes|walkingStepLength|walkingStepLength|||||LOINC|In Progress|
|Observation PGHD Codes|walkingAsymmetryPercentage|walkingAsymmetryPercentage|||||LOINC|In Progress|
|Observation PGHD Codes|walkingDoubleSupportPercentage|walkingDoubleSupportPercentage|||||LOINC|In Progress|
|Observation PGHD Codes|stairAscentSpeed|stairAscentSpeed|||||LOINC|In Progress|
|Observation PGHD Codes|stairDescentSpeed|stairDescentSpeed|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryBiotin|dietaryBiotin|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryCaffeine|dietaryCaffeine|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryCalcium|dietaryCalcium||9045-6|||LOINC|In Progress|
|Observation PGHD Codes|dietaryCarbohydrates|dietaryCarbohydrates||9059-7|||LOINC|In Progress|
|Observation PGHD Codes|dietaryChloride|dietaryChloride|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryCholesterol|dietaryCholesterol|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryChromium|dietaryChromium|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryCopper|dietaryCopper|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryEnergyConsumed|dietaryEnergyConsumed||9052-2|||LOINC|In Progress|
|Observation PGHD Codes|dietaryEnergyFromFat|||||||TBD|
|Observation PGHD Codes|dietaryFatMonounsaturated|dietaryFatMonounsaturated|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryFatPolyunsaturated|dietaryFatPolyunsaturated|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryFatUnsaturated|||||||TBD|
|Observation PGHD Codes|dietaryTransFat|||||||TBD|
|Observation PGHD Codes|dietaryFatSaturated|dietaryFatSaturated|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryFatTotal|dietaryFatTotal||9066-2|||LOINC|In Progress|
|Observation PGHD Codes|dietaryFiber|dietaryFiber||||||TBD|
|Observation PGHD Codes|dietaryFolateOrFolicAcid|||||||TBD|
|Observation PGHD Codes|dietaryFolate|dietaryFolate|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryFolicAcid|||||||TBD|
|Observation PGHD Codes|dietaryIodine|dietaryIodine||||||TBD|
|Observation PGHD Codes|dietaryIron|dietaryIron|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryMagnesium|dietaryMagnesium|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryManganese|dietaryManganese|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryMolybdenum|dietaryMolybdenum|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryNiacin|dietaryNiacin|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryPantothenicAcid|dietaryPantothenicAcid|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryPhosphorus|dietaryPhosphorus|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryPotassium|dietaryPotassium|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryProtein|dietaryProtein||9079-5|||LOINC|In Progress|
|Observation PGHD Codes|dietaryRiboflavin|dietaryRiboflavin|||||LOINC|In Progress|
|Observation PGHD Codes|dietarySelenium|dietarySelenium|||||LOINC|In Progress|
|Observation PGHD Codes|dietarySodium|dietarySodium||9086-0|||LOINC|In Progress|
|Observation PGHD Codes|dietarySugar|dietarySugar|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryThiamin|dietaryThiamin|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminA|dietaryVitaminA|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminB12|dietaryVitaminB12|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminB6|dietaryVitaminB6|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminC|dietaryVitaminC|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminD|dietaryVitaminD|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminE|dietaryVitaminE|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryVitaminK|dietaryVitaminK|||||LOINC|In Progress|
|Observation PGHD Codes|dietaryWater|dietaryWater|HydrationRecord||||LOINC|In Progress|
|Observation PGHD Codes|dietaryZinc|dietaryZinc|||||LOINC|In Progress|
|Observation PGHD Codes|basalBodyTemperature|basalBodyTemperature|BasalBodyTemperatureRecord||||LOINC|In Progress|
|Observation PGHD Codes|cervicalMucusQuality|cervicalMucusQuality|CervicalMucusRecord||||LOINC|In Progress|
|Observation PGHD Codes|contraceptive|contraceptive||||||TBD|
|Observation PGHD Codes|intermenstrualBleeding|intermenstrualBleeding|||||LOINC|In Progress|
|Observation PGHD Codes|irregularMenstrualCycles|irregularMenstrualCycles||||||TBD|
|Observation PGHD Codes|infrequentMenstrualCycles|infrequentMenstrualCycles||||||TBD|
|Observation PGHD Codes|lactation|lactation||||||TBD|
|Observation PGHD Codes|menstrualFlow|menstrualFlow|MenstruationFlowRecord||||LOINC|In Progress|
|Observation PGHD Codes|menstrualPeriod|||||||TBD|
|Observation PGHD Codes|ovulationTestResult|ovulationTestResult|OvulationTestRecord||||LOINC|In Progress|
|Observation PGHD Codes|persistentIntermenstrualBleeding|persistentIntermenstrualBleeding||||||TBD|
|Observation PGHD Codes|pregnancy|pregnancy||||||TBD|
|Observation PGHD Codes|pregnancyTestResult|pregnancyTestResult||||||TBD|
|Observation PGHD Codes|progesteroneTestResult|progesteroneTestResult|||||LOINC|In Progress|
|Observation PGHD Codes|prolongedMenstrualPeriods|prolongedMenstrualPeriods||||||TBD|
|Observation PGHD Codes|sexualActivity|sexualActivity|SexualActivityRecord||||LOINC|In Progress|
|Observation PGHD Codes|bleedingAfterPregnancy|||||||TBD|
|Observation PGHD Codes|bleedingDuringPregnancy|||||||TBD|
|Observation PGHD Codes|handwashingEvent|handwashingEvent|||||LOINC|In Progress|
|Observation PGHD Codes|toothbrushingEvent|toothbrushingEvent|||||LOINC|In Progress|
|Observation PGHD Codes|abdominalCramps|abdominalCramps||-|51197009(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|acne|acne||-|403364000(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|appetiteChanges|appetiteChanges||-|249473004(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|bladderIncontinence|bladderIncontinence||-|165232002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|bloating|bloating||-|116289008|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|breastPain|breastPain||-|53430007|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|chestTightnessOrPain|chestTightnessOrPain||-|23924001|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|chills|chills||-|43724002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|constipation|constipation||-|14760008|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|coughing|coughing||-|49727002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|diarrhea|diarrhea||-|62315008|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|dizziness|dizziness||-|404640003|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|drySkin|drySkin||-|106076001|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|fainting|fainting||-|271594007|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|fatigue|fatigue||-|84229001|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|fever|fever||-|386661006|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|generalizedBodyAche|generalizedBodyAche||-|22253000|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|hairLoss|hairLoss||-|278040002(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|headache|headache||-|25064002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|heartburn|heartburn||-|16331000|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|hotFlashes|hotFlashes||-|198436008|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|lossOfSmell|lossOfSmell||-|44169009|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|lossOfTaste|lossOfTaste||-|36955009(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|lowerBackPain|lowerBackPain||-|279039007|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|memoryLapse|memoryLapse||-|225038006(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|moodChanges|moodChanges||-|106131003|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|nausea|nausea||-|422587007|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|nightSweats|nightSweats||-|42984000|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|pelvicPain|pelvicPain||-|30473006|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|rapidPoundingOrFlutteringHeartbeat|rapidPoundingOrFlutteringHeartbeat||-|80313002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|runnyNose|runnyNose||-|64531003|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|shortnessOfBreath|shortnessOfBreath||-|267036007|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|sinusCongestion|sinusCongestion||-|68235000|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|skippedHeartbeat|skippedHeartbeat||-|80313002|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|sleepChanges|sleepChanges||-|247950007(*)|Pending|SNOMED CT|Mapped|
|Observation PGHD Codes|soreThroat|soreThroat||-|267102003|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|vaginalDryness|vaginalDryness||-|31908003|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|vomiting|vomiting||-|300359004|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|wheezing|wheezing||-|56018004|Included|SNOMED CT|Mapped|
|Observation PGHD Codes|uvExposure|uvExposure|||||LOINC|In Progress|
|Observation PGHD Codes|exerciseEvent||ExerciseEventRecord|||||TBD|
|Observation PGHD Codes|exerciseLap||ExerciseLapRecord|||||TBD|
|Observation PGHD Codes|exerciseRepetitions||ExerciseRepetitionsRecord|||||TBD|
|Observation PGHD Codes|workoutActivity||ExerciseSessionRecord|||||TBD|
|Observation PGHD Codes|atrialFibrillationBurden|atrialFibrillationBurden||||||TBD|
|Observation PGHD Codes|bloodPressure|bloodPressure|BloodPressureRecord|85354-9|||LOINC|Mapped|
|Observation PGHD Codes|bloodPressureDiastolic|bloodPressureDiastolic||8462-4|||LOINC|Mapped|
|Observation PGHD Codes|bloodPressureSystolic|bloodPressureSystolic||8480-6|||LOINC|Mapped|
|Observation PGHD Codes|bodyTemperature|bodyTemperature|BodyTemperatureRecord|8310-5|||LOINC|Mapped|
|Observation PGHD Codes|heartRate|heartRate|HeartRateRecord|8867-4|||LOINC|Mapped|
|Observation PGHD Codes|heartRateVariabilitySDNN|heartRateVariabilitySDNN||80404-7|||LOINC|Mapped|
|Observation PGHD Codes|heartRateRecoveryOneMinute|heartRateRecoveryOneMinute||||||TBD|
|Observation PGHD Codes|highHeartRateEvent|highHeartRateEvent||||||TBD|
|Observation PGHD Codes|irregularHeartRhythmEvent|irregularHeartRhythmEvent||||||TBD|
|Observation PGHD Codes|lowHeartRateEvent|lowHeartRateEvent||||||TBD|
|Observation PGHD Codes|oxygenSaturation|oxygenSaturation|OxygenSaturationRecord|59408-5|||LOINC|Mapped|
|Observation PGHD Codes|respiratoryRate|respiratoryRate|RespiratoryRateRecord|9279-1|||LOINC|Mapped|
|Observation PGHD Codes|restingHeartRate|restingHeartRate|RestingHeartRateRecord|40443-4|||LOINC|Mapped|
|Observation PGHD Codes|walkingHeartRateAverage|walkingHeartRateAverage|||||LOINC|In Progress|
|Observation PGHD Codes|rrInterval|||||||TBD|
|Observation PGHD Codes|americanFootball|americanFootball|FOOTBALL_AMERICAN|||||TBD|
|Observation PGHD Codes|archery|archery||||||TBD|
|Observation PGHD Codes|australianFootball|australianFootball|FOOTBALL_AUSTRALIAN|||||TBD|
|Observation PGHD Codes|badminton|badminton|BADMINTON|||||TBD|
|Observation PGHD Codes|barre|barre||||||TBD|
|Observation PGHD Codes|baseball|baseball|BASEBALL|||||TBD|
|Observation PGHD Codes|basketball|basketball|BASKETBALL|||||TBD|
|Observation PGHD Codes|bowling|bowling||||||TBD|
|Observation PGHD Codes|boxing|boxing|BOXING|||||TBD|
|Observation PGHD Codes|cardioDance|cardioDance||||||TBD|
|Observation PGHD Codes|climbing|climbing||||||TBD|
|Observation PGHD Codes|cooldown|cooldown||||||TBD|
|Observation PGHD Codes|coreTraining|coreTraining||||||TBD|
|Observation PGHD Codes|cricket|cricket|CRICKET|||||TBD|
|Observation PGHD Codes|crossCountrySkiing|crossCountrySkiing||||||TBD|
|Observation PGHD Codes|crossTraining|crossTraining||||||TBD|
|Observation PGHD Codes|curling|curling||||||TBD|
|Observation PGHD Codes|cycling|cycling||||||TBD|
|Observation PGHD Codes|dance|dance|DANCING|||||TBD|
|Observation PGHD Codes|danceInspiredTraining|danceInspiredTraining||||||TBD|
|Observation PGHD Codes|discSports|discSports||||||TBD|
|Observation PGHD Codes|downhillSkiing|downhillSkiing||||||TBD|
|Observation PGHD Codes|elliptical|elliptical|ELLIPTICAL|||||TBD|
|Observation PGHD Codes|equestrianSports|equestrianSports||||||TBD|
|Observation PGHD Codes|fencing|fencing|FENCING|||||TBD|
|Observation PGHD Codes|fishing|fishing||||||TBD|
|Observation PGHD Codes|fitnessGaming|fitnessGaming||||||TBD|
|Observation PGHD Codes|flexibility|flexibility||||||TBD|
|Observation PGHD Codes|functionalStrengthTraining|functionalStrengthTraining||||||TBD|
|Observation PGHD Codes|golf|golf|GOLF|||||TBD|
|Observation PGHD Codes|gymnastics|gymnastics|GYMNASTICS|||||TBD|
|Observation PGHD Codes|handball|handball|HANDBALL|||||TBD|
|Observation PGHD Codes|handCycling|handCycling||||||TBD|
|Observation PGHD Codes|highIntensityIntervalTraining|highIntensityIntervalTraining|HIGH_INTENSITY_INTERVAL_TRAINING|||||TBD|
|Observation PGHD Codes|hiking|hiking|HIKING|||||TBD|
|Observation PGHD Codes|hockey|hockey||||||TBD|
|Observation PGHD Codes|hunting|hunting||||||TBD|
|Observation PGHD Codes|jumpRope|jumpRope|JUMP_ROPE|||||TBD|
|Observation PGHD Codes|kickboxing|kickboxing||||||TBD|
|Observation PGHD Codes|lacrosse|lacrosse||||||TBD|
|Observation PGHD Codes|martialArts|martialArts|MARTIAL_ARTS|||||TBD|
|Observation PGHD Codes|mindAndBody|mindAndBody||||||TBD|
|Observation PGHD Codes|mixedCardio|mixedCardio||||||TBD|
|Observation PGHD Codes|mixedMetabolicCardioTraining|mixedMetabolicCardioTraining||||||TBD|
|Observation PGHD Codes|other|other||||||TBD|
|Observation PGHD Codes|paddleSports|paddleSports|PADDLING|||||TBD|
|Observation PGHD Codes|pickleball|pickleball||||||TBD|
|Observation PGHD Codes|pilates|pilates|PILATES|||||TBD|
|Observation PGHD Codes|play|play||||||TBD|
|Observation PGHD Codes|preparationAndRecovery|preparationAndRecovery||||||TBD|
|Observation PGHD Codes|racquetball|racquetball|RACQUETBALL|||||TBD|
|Observation PGHD Codes|rowing|rowing|ROWING|||||TBD|
|Observation PGHD Codes|rugby|rugby|RUGBY|||||TBD|
|Observation PGHD Codes|running|running|RUNNING|||||TBD|
|Observation PGHD Codes|sailing|sailing|SAILING|||||TBD|
|Observation PGHD Codes|skatingSports|skatingSports|SKATING|||||TBD|
|Observation PGHD Codes|snowboarding|snowboarding|SNOWBOARDING|||||TBD|
|Observation PGHD Codes|snowSports|snowSports||||||TBD|
|Observation PGHD Codes|soccer|soccer|SOCCER|||||TBD|
|Observation PGHD Codes|socialDance|socialDance||||||TBD|
|Observation PGHD Codes|softball|softball|SOFTBALL|||||TBD|
|Observation PGHD Codes|squash|squash|SQUASH|||||TBD|
|Observation PGHD Codes|stairClimbing|stairClimbing|STAIR_CLIMBING|||||TBD|
|Observation PGHD Codes|stairs|stairs||||||TBD|
|Observation PGHD Codes|stepTraining|stepTraining||||||TBD|
|Observation PGHD Codes|surfingSports|surfingSports|SURFING|||||TBD|
|Observation PGHD Codes|swimBikeRun|swimBikeRun||||||TBD|
|Observation PGHD Codes|swimming|swimming||||||TBD|
|Observation PGHD Codes|tableTennis|tableTennis|TABLE_TENNIS|||||TBD|
|Observation PGHD Codes|taiChi|taiChi||||||TBD|
|Observation PGHD Codes|tennis|tennis|TENNIS|||||TBD|
|Observation PGHD Codes|trackAndField|trackAndField||||||TBD|
|Observation PGHD Codes|traditionalStrengthTraining|traditionalStrengthTraining||||||TBD|
|Observation PGHD Codes|transition|transition||||||TBD|
|Observation PGHD Codes|underwaterDiving|underwaterDiving||||||TBD|
|Observation PGHD Codes|volleyball|volleyball|VOLLEYBALL|||||TBD|
|Observation PGHD Codes|walking|walking|WALKING|||||TBD|
|Observation PGHD Codes|waterFitness|waterFitness||||||TBD|
|Observation PGHD Codes|waterPolo|waterPolo|WATER_POLO|||||TBD|
|Observation PGHD Codes|waterSports|waterSports||||||TBD|
|Observation PGHD Codes|wheelchairRunPace|wheelchairRunPace||||||TBD|
|Observation PGHD Codes|wheelchairWalkPace|wheelchairWalkPace||||||TBD|
|Observation PGHD Codes|wrestling|wrestling||||||TBD|
|Observation PGHD Codes|yoga|yoga|YOGA|||||TBD|
|Observation PGHD Codes|armCurl||ARM_CURL|||||TBD|
|Observation PGHD Codes|backExtension||BACK_EXTENSION|||||TBD|
|Observation PGHD Codes|ballSlam||BALL_SLAM|||||TBD|
|Observation PGHD Codes|barbellShoulderPress||BARBELL_SHOULDER_PRESS|||||TBD|
|Observation PGHD Codes|benchPress||BENCH_PRESS|||||TBD|
|Observation PGHD Codes|benchSitUp||BENCH_SIT_UP|||||TBD|
|Observation PGHD Codes|biking||BIKING|||||TBD|
|Observation PGHD Codes|bikingStationary||BIKING_STATIONARY|||||TBD|
|Observation PGHD Codes|bootCamp||BOOT_CAMP|||||TBD|
|Observation PGHD Codes|burpee||BURPEE|||||TBD|
|Observation PGHD Codes|calisthenics||CALISTHENICS|||||TBD|
|Observation PGHD Codes|crunch||CRUNCH|||||TBD|
|Observation PGHD Codes|deadlift||DEADLIFT|||||TBD|
|Observation PGHD Codes|doubleArmTricepsExtension||DOUBLE_ARM_TRICEPS_EXTENSION|||||TBD|
|Observation PGHD Codes|dumbbellCurlLeftArm||DUMBBELL_CURL_LEFT_ARM|||||TBD|
|Observation PGHD Codes|dumbbellCurlRightArm||DUMBBELL_CURL_RIGHT_ARM|||||TBD|
|Observation PGHD Codes|dumbbellFrontRaise||DUMBBELL_FRONT_RAISE|||||TBD|
|Observation PGHD Codes|dumbbellLateralRaise||DUMBBELL_LATERAL_RAISE|||||TBD|
|Observation PGHD Codes|dumbbellRow||DUMBBELL_ROW|||||TBD|
|Observation PGHD Codes|dumbbellTricepsExtensionLeftArm||DUMBBELL_TRICEPS_EXTENSION_LEFT_ARM|||||TBD|
|Observation PGHD Codes|dumbbellTricepsExtensionRightArm||DUMBBELL_TRICEPS_EXTENSION_RIGHT_ARM|||||TBD|
|Observation PGHD Codes|dumbbellTricepsExtensionTwoArm||DUMBBELL_TRICEPS_EXTENSION_TWO_ARM|||||TBD|
|Observation PGHD Codes|exerciseClass||EXERCISE_CLASS|||||TBD|
|Observation PGHD Codes|forwardTwist||FORWARD_TWIST|||||TBD|
|Observation PGHD Codes|frontRaise||FRONT_RAISE|||||TBD|
|Observation PGHD Codes|hipThrust||HIP_THRUST|||||TBD|
|Observation PGHD Codes|hulaHoop||HULA_HOOP|||||TBD|
|Observation PGHD Codes|frisbeeDisc||FRISBEE_DISC|||||TBD|
|Observation PGHD Codes|guidedBreathing||GUIDED_BREATHING|||||TBD|
|Observation PGHD Codes|iceHockey||ICE_HOCKEY|||||TBD|
|Observation PGHD Codes|iceSkating||ICE_SKATING|||||TBD|
|Observation PGHD Codes|jumpingJack||JUMPING_JACK|||||TBD|
|Observation PGHD Codes|kettlebellSwing||KETTLEBELL_SWING|||||TBD|
|Observation PGHD Codes|lateralRaise||LATERAL_RAISE|||||TBD|
|Observation PGHD Codes|latPullDown||LAT_PULL_DOWN|||||TBD|
|Observation PGHD Codes|legCurl||LEG_CURL|||||TBD|
|Observation PGHD Codes|legExtension||LEG_EXTENSION|||||TBD|
|Observation PGHD Codes|legPress||LEG_PRESS|||||TBD|
|Observation PGHD Codes|legRaise||LEG_RAISE|||||TBD|
|Observation PGHD Codes|lunge||LUNGE|||||TBD|
|Observation PGHD Codes|mountainClimber||MOUNTAIN_CLIMBER|||||TBD|
|Observation PGHD Codes|otherWorkout||OTHER_WORKOUT|||||TBD|
|Observation PGHD Codes|pause||PAUSE|||||TBD|
|Observation PGHD Codes|meditation||MEDITATION|||||TBD|
|Observation PGHD Codes|paraGliding||PARAGLIDING|||||TBD|
|Observation PGHD Codes|plank||PLANK|||||TBD|
|Observation PGHD Codes|pullUp||PULL_UP|||||TBD|
|Observation PGHD Codes|punch||PUNCH|||||TBD|
|Observation PGHD Codes|rest||REST|||||TBD|
|Observation PGHD Codes|rockClimbing||ROCK_CLIMBING|||||TBD|
|Observation PGHD Codes|rollerHockey||ROLLER_HOCKEY|||||TBD|
|Observation PGHD Codes|rowingMachine||ROWING_MACHINE|||||TBD|
|Observation PGHD Codes|runningTreadmill||RUNNING_TREADMILL|||||TBD|
|Observation PGHD Codes|shoulderPress||SHOULDER_PRESS|||||TBD|
|Observation PGHD Codes|singleArmTricepsExtension||SINGLE_ARM_TRICEPS_EXTENSION|||||TBD|
|Observation PGHD Codes|sitUp||SIT_UP|||||TBD|
|Observation PGHD Codes|scubaDiving||SCUBA_DIVING|||||TBD|
|Observation PGHD Codes|skiing||SKIING|||||TBD|
|Observation PGHD Codes|snowshoeing||SNOWSHOEING|||||TBD|
|Observation PGHD Codes|squat||SQUAT|||||TBD|
|Observation PGHD Codes|stairClimbingMachine||STAIR_CLIMBING_MACHINE|||||TBD|
|Observation PGHD Codes|strengthTraining||STRENGTH_TRAINING|||||TBD|
|Observation PGHD Codes|stretching||STRETCHING|||||TBD|
|Observation PGHD Codes|swimmingBackstroke||SWIMMING_BACKSTROKE|||||TBD|
|Observation PGHD Codes|swimmingBreaststroke||SWIMMING_BREASTSTROKE|||||TBD|
|Observation PGHD Codes|swimmingButterfly||SWIMMING_BUTTERFLY|||||TBD|
|Observation PGHD Codes|swimmingFreestyle||SWIMMING_FREESTYLE|||||TBD|
|Observation PGHD Codes|swimmingMixed||SWIMMING_MIXED|||||TBD|
|Observation PGHD Codes|swimmingOpenWater||SWIMMING_OPEN_WATER|||||TBD|
|Observation PGHD Codes|swimmingOther||SWIMMING_OTHER|||||TBD|
|Observation PGHD Codes|swimmingPool||SWIMMING_POOL|||||TBD|
|Observation PGHD Codes|upperTwist||UPPER_TWIST|||||TBD|
|Observation PGHD Codes|weightlifting||WEIGHTLIFTING|||||TBD|
|Observation PGHD Codes|wheelchair||WHEELCHAIR|||||TBD|
|Observation PGHD Codes|workout||WORKOUT|||||TBD|
|Observation PGHD Codes|hearingSensitivity|||||||TBD|
|Observation PGHD Codes|food|food||||||TBD|
|Observation PGHD Codes|medicationAdherence|||||||TBD|
|Observation PGHD Codes|stateOfMind||||||LOINC|In Progress|
|Observation PGHD Codes|gad7|||||||TBD|
|Observation PGHD Codes|phq9|||||||TBD|
|Appetite Changes Codes|increased|increased||||||TBD|
|Appetite Changes Codes|decreased|decreased||||||TBD|
|Appetite Changes Codes|unspecified|unspecified||||||TBD|
|Appetite Changes Codes|noChange|noChange||||||TBD|
|Body Posture Codes|sitting||BODY_POSITION_SITTING_DOWN|||||TBD|
|Body Posture Codes|standing||BODY_POSITION_STANDING_UP|||||TBD|
|Body Posture Codes|lyingDown||BODY_POSITION_LYING_DOWN|||||TBD|
|Body Posture Codes|supine|||||||TBD|
|Body Posture Codes|prone|||||||TBD|
|Body Posture Codes|recumbent|||||||TBD|
|Body Posture Codes|semiRecumbent||BODY_POSITION_RECLINING|||||TBD|
|Body Temperature Measurement Location Codes|other|other||||||TBD|
|Body Temperature Measurement Location Codes|armpit|armpit|MEASUREMENT_LOCATION_ARMPIT|||||TBD|
|Body Temperature Measurement Location Codes|body|body||||||TBD|
|Body Temperature Measurement Location Codes|ear|ear|MEASUREMENT_LOCATION_EAR|||||TBD|
|Body Temperature Measurement Location Codes|finger|finger|MEASUREMENT_LOCATION_FINGER|||||TBD|
|Body Temperature Measurement Location Codes|gastroIntestinal|gastroIntestinal||||||TBD|
|Body Temperature Measurement Location Codes|mouth|mouth|MEASUREMENT_LOCATION_MOUTH|||||TBD|
|Body Temperature Measurement Location Codes|rectum|rectum|MEASUREMENT_LOCATION_RECTUM|||||TBD|
|Body Temperature Measurement Location Codes|toe|toe|MEASUREMENT_LOCATION_TOE|||||TBD|
|Body Temperature Measurement Location Codes|earDrum|earDrum||||||TBD|
|Body Temperature Measurement Location Codes|temporalArtery|temporalArtery|MEASUREMENT_LOCATION_TEMPORAL_ARTERY|||||TBD|
|Body Temperature Measurement Location Codes|forehead|forehead|MEASUREMENT_LOCATION_FOREHEAD|||||TBD|
|Body Temperature Measurement Location Codes|vagina||MEASUREMENT_LOCATION_VAGINA|||||TBD|
|Body Temperature Measurement Location Codes|wrist||MEASUREMENT_LOCATION_WRIST|||||TBD|
|ECG Classification Codes|sinusRhythm|sinusRhythm||||||TBD|
|ECG Classification Codes|atrialFibrillation|atrialFibrillation||||||TBD|
|ECG Classification Codes|inconclusiveHighHeartRate|inconclusiveHighHeartRate||||||TBD|
|ECG Classification Codes|inconclusiveLowHeartRate|inconclusiveLowHeartRate||||||TBD|
|ECG Classification Codes|inconclusivePoorReading|inconclusivePoorReading||||||TBD|
|ECG Classification Codes|inconclusiveOther|inconclusiveOther||||||TBD|
|ECG Classification Codes|unrecognized|unrecognized||||||TBD|
|ECG Classification Codes|notSet|notSet||||||TBD|
|ECG Lead Codes|appleWatchSimilarToLeadI|appleWatchSimilarToLeadI||-|-||PHR-IG (PGHD)|Mapped|
|ECG Lead Codes|I|||||||TBD|
|ECG Lead Codes|II|||||||TBD|
|ECG Lead Codes|III|||||||TBD|
|ECG Lead Codes|aVR|||||||TBD|
|ECG Lead Codes|aVL|||||||TBD|
|ECG Lead Codes|aVF|||||||TBD|
|ECG Lead Codes|V1|||||||TBD|
|ECG Lead Codes|V2|||||||TBD|
|ECG Lead Codes|V3|||||||TBD|
|ECG Lead Codes|V4|||||||TBD|
|ECG Lead Codes|V5|||||||TBD|
|ECG Lead Codes|V6|||||||TBD|
|ECG Symptoms Status Codes|none|none||||||TBD|
|ECG Symptoms Status Codes|present|present||||||TBD|
|ECG Symptoms Status Codes|notSet|notSet||||||TBD|
|GAD-7 Assessment Risk Codes|noneToMinimal|noneToMinimal||||||TBD|
|GAD-7 Assessment Risk Codes|mild|mild||||||TBD|
|GAD-7 Assessment Risk Codes|moderate|moderate||||||TBD|
|GAD-7 Assessment Risk Codes|severe|severe||||||TBD|
|PHQ-9 Assessment Risk Codes|noneToMinimal|noneToMinimal||||||TBD|
|PHQ-9 Assessment Risk Codes|mild|mild||||||TBD|
|PHQ-9 Assessment Risk Codes|moderate|moderate||||||TBD|
|PHQ-9 Assessment Risk Codes|moderatelySevere|moderatelySevere||||||TBD|
|PHQ-9 Assessment Risk Codes|severe|severe||||||TBD|
|Sleep Analysis Codes|inBed|inBed||||||TBD|
|Sleep Analysis Codes|asleepUnspecified|||||||TBD|
|Sleep Analysis Codes|awake|awake|STAGE_TYPE_AWAKE|||||TBD|
|Sleep Analysis Codes|asleepREM|asleepREM|STAGE_TYPE_SLEEPING_REM|||||TBD|
|Sleep Analysis Codes|asleepCore|asleepCore|STAGE_TYPE_SLEEPING_LIGHT|||||TBD|
|Sleep Analysis Codes|asleepDeep|asleepDeep|STAGE_TYPE_SLEEPING_DEEP|||||TBD|
|State of Mind Association Codes|community|community||||||TBD|
|State of Mind Association Codes|currentEvents|currentEvents||||||TBD|
|State of Mind Association Codes|dating|dating||||||TBD|
|State of Mind Association Codes|education|education||||||TBD|
|State of Mind Association Codes|family|family||||||TBD|
|State of Mind Association Codes|fitness|fitness||||||TBD|
|State of Mind Association Codes|friends|friends||||||TBD|
|State of Mind Association Codes|health|health||||||TBD|
|State of Mind Association Codes|hobbies|hobbies||||||TBD|
|State of Mind Association Codes|identity|identity||||||TBD|
|State of Mind Association Codes|money|money||||||TBD|
|State of Mind Association Codes|partner|partner||||||TBD|
|State of Mind Association Codes|selfCare|selfCare||||||TBD|
|State of Mind Association Codes|spirituality|spirituality||||||TBD|
|State of Mind Association Codes|tasks|tasks||||||TBD|
|State of Mind Association Codes|travel|travel||||||TBD|
|State of Mind Association Codes|weather|weather||||||TBD|
|State of Mind Association Codes|work|work||||||TBD|
|State of Mind Kind Codes|dailyMood|dailyMood||||||TBD|
|State of Mind Kind Codes|momentaryEmotion|momentaryEmotion||||||TBD|
|State of Mind Label Codes|amazed|amazed||||||TBD|
|State of Mind Label Codes|amused|amused||||||TBD|
|State of Mind Label Codes|angry|angry||||||TBD|
|State of Mind Label Codes|annoyed|annoyed||||||TBD|
|State of Mind Label Codes|anxious|anxious||||||TBD|
|State of Mind Label Codes|ashamed|ashamed||||||TBD|
|State of Mind Label Codes|brave|brave||||||TBD|
|State of Mind Label Codes|calm|calm||||||TBD|
|State of Mind Label Codes|confident|confident||||||TBD|
|State of Mind Label Codes|content|content||||||TBD|
|State of Mind Label Codes|disappointed|disappointed||||||TBD|
|State of Mind Label Codes|discouraged|discouraged||||||TBD|
|State of Mind Label Codes|disgusted|disgusted||||||TBD|
|State of Mind Label Codes|drained|drained||||||TBD|
|State of Mind Label Codes|embarrassed|embarrassed||||||TBD|
|State of Mind Label Codes|excited|excited||||||TBD|
|State of Mind Label Codes|frustrated|frustrated||||||TBD|
|State of Mind Label Codes|grateful|grateful||||||TBD|
|State of Mind Label Codes|guilty|guilty||||||TBD|
|State of Mind Label Codes|happy|happy||||||TBD|
|State of Mind Label Codes|hopeful|hopeful||||||TBD|
|State of Mind Label Codes|hopeless|hopeless||||||TBD|
|State of Mind Label Codes|indifferent|indifferent||||||TBD|
|State of Mind Label Codes|irritated|irritated||||||TBD|
|State of Mind Label Codes|jealous|jealous||||||TBD|
|State of Mind Label Codes|joyful|joyful||||||TBD|
|State of Mind Label Codes|lonely|lonely||||||TBD|
|State of Mind Label Codes|overwhelmed|overwhelmed||||||TBD|
|State of Mind Label Codes|passionate|passionate||||||TBD|
|State of Mind Label Codes|peaceful|peaceful||||||TBD|
|State of Mind Label Codes|proud|proud||||||TBD|
|State of Mind Label Codes|relieved|relieved||||||TBD|
|State of Mind Label Codes|sad|sad||||||TBD|
|State of Mind Label Codes|satisfied|satisfied||||||TBD|
|State of Mind Label Codes|scared|scared||||||TBD|
|State of Mind Label Codes|stressed|stressed||||||TBD|
|State of Mind Label Codes|surprised|surprised||||||TBD|
|State of Mind Label Codes|worried|worried||||||TBD|
|State of Mind Valence Codes|veryUnpleasant|veryUnpleasant||||||TBD|
|State of Mind Valence Codes|unpleasant|unpleasant||||||TBD|
|State of Mind Valence Codes|slightlyUnpleasant|slightlyUnpleasant||||||TBD|
|State of Mind Valence Codes|neutral|neutral||||||TBD|
|State of Mind Valence Codes|slightlyPleasant|slightlyPleasant||||||TBD|
|State of Mind Valence Codes|pleasant|pleasant||||||TBD|
|State of Mind Valence Codes|veryPleasant|veryPleasant||||||TBD|
|Symptom Presence Codes|present|present||||||TBD|
|Symptom Presence Codes|notPresent|notPresent||||||TBD|
|Symptom Severity Codes|severe|severe||||||TBD|
|Symptom Severity Codes|mild|mild||||||TBD|
|Symptom Severity Codes|moderate|moderate||||||TBD|
|Symptom Severity Codes|unspecified|unspecified||||||TBD|
|Symptom Severity Codes|notPresent|notPresent||||||TBD|

### Mapping status

- **Mapped**: The mapping treatment is confirmed.
- **In Progress**: The mapping is under submission or review.
- **TBD**: The mapping has not yet been confirmed.

### Open items

The following codes are tracked here so that the mapping work can be managed using this document alone. Codes marked as `Not yet listed` are present in the LOINC submission workbook but have not yet been added to the main PHR Code Mapping Table.

| Code value | Source-system code | Table status | Mapping target | Mapping status | Submission status | Action |
|---|---|---|---|---|---|---|
| cyclingFunctionalThresholdPower | HKQuantityTypeIdentifierCyclingFunctionalThresholdPower | Not yet listed | LOINC | In Progress | Submitted | Keep as an open item; do not add to the main table at this stage. |
| environmentalSoundReduction | HKQuantityTypeIdentifierEnvironmentalSoundReduction | Not yet listed | LOINC | In Progress | Submitted | Keep as an open item; do not add to the main table at this stage. |
| pushCount | HKQuantityTypeIdentifierPushCount / WheelchairPushesRecord | Listed | LOINC | TBD | Not submitted | Keep as an open item; determine the handling policy before deciding whether to submit to LOINC. |
| IPS Free Set status review | 2025 SNOMED CT IPS refset package | Not applicable | SNOMED CT IPS Free Set | TBD | Not applicable | The current status reflects the 2025 IPS Free Set review. Review the seven codes currently marked `Pending` against the latest available IPS Free Set and update `IPS Free Set status` as needed. |
