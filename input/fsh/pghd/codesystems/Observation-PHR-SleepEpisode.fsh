CodeSystem: SleepEpisode
Id: sleep-episode-codes
Title: "Sleep Episode Codes"
Description: """
Codes for sleep episodes  
睡眠のエピソードを表すコード
"""
* insert CodeSystemRules

* #latencyToSleepOnset "Latency to sleep onset" ""
* #latencyToArising "Latency to arising" ""
* #totalSleepTime "Total sleep time" ""
* #coreSleepDuration "Core sleep Duration" ""
* #coreSleepPercentage "Core sleep Percentage" ""
* #deepSleepDuration "Deep sleep duration" ""
* #deepSleepPercentage "Deep sleep percentage" ""
* #remSleepDuration "Rem sleep duration" ""
* #remSleepPercentage "Rem sleep percentage" ""
* #wakeAfterSleepOnset "Wake after sleep onset" ""
* #numberOfAwakenings "Number of awakenings" ""
* #sleepEfficiencyPercentage "Sleep efficiency percentage" ""
* #isMainSleep "Is main sleep" ""

* insert CodeDesignationRules(#latencyToSleepOnset, 就寝から入眠までの時間)
* insert CodeDesignationRules(#latencyToArising, 覚醒から起床までの時間)
* insert CodeDesignationRules(#totalSleepTime, 睡眠時間)
* insert CodeDesignationRules(#coreSleepDuration, コア睡眠時間)
* insert CodeDesignationRules(#coreSleepPercentage, コア睡眠の割合)
* insert CodeDesignationRules(#deepSleepDuration, 深い睡眠時間)
* insert CodeDesignationRules(#deepSleepPercentage, 深い睡眠の割合)
* insert CodeDesignationRules(#remSleepDuration, レム睡眠時間)
* insert CodeDesignationRules(#remSleepPercentage, レム睡眠の割合)
* insert CodeDesignationRules(#wakeAfterSleepOnset, 覚醒時間)
* insert CodeDesignationRules(#numberOfAwakenings, 覚醒回数)
* insert CodeDesignationRules(#sleepEfficiencyPercentage, 睡眠の割合)
* insert CodeDesignationRules(#isMainSleep, 主な睡眠)
