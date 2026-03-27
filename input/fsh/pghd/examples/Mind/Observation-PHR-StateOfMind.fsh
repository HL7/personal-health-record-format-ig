Instance: StateOfMindExample
InstanceOf: PGHDObservationStateOfMind
Description: "State of Mind Example"
* contained = Inline-Instance-Device
* status = #final
* category[ObservationCategory] = $CodeSystemObservationCategory#survey "Survey"
* code
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#stateOfMind "State of Mind"
* subject = Reference(PGHDPatientExample)
* effectiveDateTime = "2021-10-01"
* issued = "2021-10-01T12:00:00+09:00"
* performer = Reference(PGHDPatientExample)
* device
  * reference = "#device"
* component[kind]
  * code
    * coding = $CodeSystemStateOfMindCodes#kind "Kind"
  * valueCodeableConcept
    * coding = $CodeSystemStateOfMindKindCodes#momentaryEmotion "MOMENTARY EMOTIONS"
* component[valence]
  * code
    * coding = $CodeSystemStateOfMindCodes#valence "Valence"
  * valueQuantity
    * value = 1.0
* component[valenceClassification]
  * code
    * coding = $CodeSystemStateOfMindCodes#valenceClassification "Valence Classification"
  * valueCodeableConcept
    * coding = $CodeSystemStateOfMindValenceCodes#veryPleasant "Very Pleasant"
* component[labels]
  * code
    * coding = $CodeSystemStateOfMindCodes#labels "Labels"
  * valueCodeableConcept
    * coding[0] = $CodeSystemStateOfMindLabelCodes#peaceful "Peaceful"
    * coding[1] = $CodeSystemStateOfMindLabelCodes#satisfied "Satisfied"
* component[associations]
  * code
    * coding = $CodeSystemStateOfMindCodes#associations "Associations"
  * valueCodeableConcept
    * coding = $CodeSystemStateOfMindAssociationCodes#currentEvents "Current Events"
