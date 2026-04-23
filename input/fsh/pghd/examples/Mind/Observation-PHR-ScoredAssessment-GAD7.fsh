Instance: ScoredAssessmentGAD7Example
InstanceOf: PGHDObservationScoredAssessment
Description: "GAD-7 Scored Assessment Example"
* contained = Inline-Instance-Device
* status = #final
* category[ObservationCategory] = $CodeSystemObservationCategory#survey "Survey"
* code
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#gad7 "GAD-7 assessment"
* subject = Reference(PGHDPatientExample)
* effectiveDateTime = "2021-10-01"
* issued = "2021-10-01T12:00:00+09:00"
* performer = Reference(PGHDPatientExample)
* device
  * reference = "#device"
* derivedFrom = Reference(QuestionnaireResponseScoredAssessmentGAD7Example)
* component[score]
  * code
    * coding = $CodeSystemLoinc#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
  * valueInteger = 3
* component[gad7-risk]
  * code
    * coding = $CodeSystemScoredAssessmentCodes#gad7Risk "GAD-7 Assesment Risk"
  * valueCodeableConcept
    * coding = $CodeSystemGAD7RiskCodes#noneToMinimal "Minimal"
