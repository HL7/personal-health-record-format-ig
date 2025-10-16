Instance: ScoredAssessmentPHQ9Example
InstanceOf: PGHDObservationScoredAssessment
Description: "PHQ-9 Scored Assessment Example"
* contained = Inline-Instance-Device
* status = #final
* category[ObservationCategory] = $CodeSystemObservationCategory#survey "Survey"
* code
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#phq9 "PHQ-9 assessment"
* subject = Reference(PGHDPatientExample)
* effectiveDateTime = "2021-10-01"
* issued = "2021-10-01T12:00:00+09:00"
* performer = Reference(PGHDPatientExample)
* device
  * reference = "#device"
* derivedFrom = Reference(QuestionnaireResponseScoredAssessmentPHQ9Example)
* component[score]
  * code
    * coding = $CodeSystemLoinc#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
  * valueInteger = 3
* component[phq9-risk]
  * code
    * coding = $CodeSystemScoredAssessmentCodes#phq9Risk "PHQ-9 Assesment Risk"
  * valueCodeableConcept
    * coding = $CodeSystemPHQ9RiskCodes#noneToMinimal "Minimal"
