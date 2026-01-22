Instance: pghd-blood-glucose-1
InstanceOf: PGHDBloodGlucose
Description: "BloodGlucose Example"
Usage: #example
* contained = Inline-Instance-Device
* id = "pghd-blood-glucose-1"
* status = #final
* category[0] = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #bloodGlucose
  * coding[LOINCCode]
    * system = $CodeSystemLoinc
    * code = #15074-8
    * display = "Glucose [Moles/volume] in Blood"
* subject
  * reference = "Patient/1"
* effectiveDateTime = "2020-10-05"
* issued = "2019-12-05T09:21:37.130+09:00"
* performer
  * reference = "Patient/1"
* valueQuantity
  * value = 7
  * unit = "mmol/L"
  * system = $CodeSystemUCUM
  * code = #mmol/L
* device
  * reference = "#device"
