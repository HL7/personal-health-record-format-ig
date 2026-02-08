Instance: pghd-bloodpressure
InstanceOf: PGHDBloodPressure
Description: "BloodPressure Example"
Usage: #example
* id = "pghd-bloodpressure"
* identifier
  * system = "urn:uuid:2a0d59fe-e99f-d216-5865-670442becaa3"
  * value = "64FA5ADE-0571-464B-8A56-B0660A99BCBF"
* status = #final
* category[VSCat] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[BPCode] = $CodeSystemLoinc#85354-9 "Blood pressure panel with all children optional"
  * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bloodPressure
* subject = Reference(Patient/1)
* effectiveDateTime = "2023-12-01T05:33:42Z"
* performer = Reference(Patient/1)
* component[SystolicBP]
  * valueQuantity = 120 'mm[Hg]' "mm[Hg]"
  * code
    * coding[SBPCode] = $CodeSystemLoinc#8480-6 "Systolic blood pressure"
    * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bloodPressureSystolic
* component[DiastolicBP]
  * code
    * coding[DBPCode] = $CodeSystemLoinc#8462-4 "Diastolic blood pressure"
    * coding[PGHDCode] = $CodeSystemObservationPGHDCodes#bloodPressureDiastolic
  * valueQuantity = 80 'mm[Hg]' "mm[Hg]"
* contained = Inline-Instance-Device
* device = Reference(device)
