Instance: pghd-blood-glucose-3
InstanceOf: PGHDBloodGlucose
Description: "BloodGlucose Example"
Usage: #example
* contained = Inline-Instance-Device
* id = "pghd-blood-glucose-3"
* status = #final
* category = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #bloodGlucose
  * coding[LOINCCode]
    * system = $CodeSystemLoinc
    * code = #14743-9
    * display = "Glucose [Moles/volume] in Capillary blood by Glucometer"
* subject
  * reference = "Patient/1"
* effectiveDateTime = "2020-10-05"
* issued = "2019-12-05T09:21:37.130+09:00"
* performer
  * reference = "Patient/1"
* dataAbsentReason
  * coding
    * system = $CodeSystemDataAbsentReason
    * code = #as-text
    * display = "As Text"
* note
  * text = "comment"
* device
  * reference = "#device"
