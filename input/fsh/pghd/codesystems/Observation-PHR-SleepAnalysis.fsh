CodeSystem: SleepAnalysis
Id: sleep-analysis-codes
Title: "Sleep Analysis Codes"
Description: """
Codes for stages of sleep  
睡眠のステージを表すコード
"""
* insert CodeSystemRules

* #inBed "In bed" "The user is in bed."
* #asleepUnspecified "Asleep unspecified" "The user is asleep, but the specific stage isn’t known."
* #awake "Awake" "The user is awake."
* #asleepREM "Asleep REM" "The user is in REM sleep."
* #asleepCore "Asleep core" "The user is in light or intermediate sleep."
* #asleepDeep "Asleep deep" "The user is in deep sleep."

* insert CodeDesignationRules(#inBed, 就寝)
* insert CodeDesignationRules(#asleepUnspecified, 睡眠)
* insert CodeDesignationRules(#awake, 覚醒)
* insert CodeDesignationRules(#asleepREM, レム)
* insert CodeDesignationRules(#asleepCore, コア)
* insert CodeDesignationRules(#asleepDeep, 深い)
