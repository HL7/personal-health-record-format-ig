Instance: pghd-blood-glucose-2
InstanceOf: PGHDBloodGlucose
Description: "BloodGlucose Example"
Usage: #example
* contained = Inline-Instance-Device
* id = "pghd-blood-glucose-2"
* status = #final
* category = $CodeSystemObservationCategory#vital-signs "Vital Signs"
* code
  * coding[PGHDCode]
    * system = $CodeSystemObservationPGHDCodes
    * code = #bloodGlucose
  * coding[LOINCCode]
    * system = $CodeSystemLoinc
    * code = #15074-8
    * display = "Glucose [Moles/volume] in Blood"
  * coding[LOINCCode]
    * system = $CodeSystemLoinc
    * code = #14743-9
    * display = "Glucose [Moles/volume] in Capillary blood by Glucometer"
  * coding[LOINCCode]
    * system = $CodeSystemLoinc
    * code = #14745-4
    * display = "Glucose [Moles/volume] in Body fluid"
* subject
  * reference = "Patient/1"
* effectiveDateTime = "2020-10-05"
* issued = "2019-12-05T09:21:37.130+09:00"
* performer
  * reference = "Patient/1"
* valueQuantity
  * value = 10.0
  * unit = "mmol/L"
  * system = $CodeSystemUCUM
  * code = #mmol/L
  * extension[alternativeQuantity]
    * url = "http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation"
    * valueQuantity
      * value = 2
      * unit = "mg/dl"
      * system = $CodeSystemUCUM
      * code = #mg/dl
* interpretation
  * coding
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    * code = #<
    * display = "Off scale low"
* note
  * text = "comment"
* referenceRange
  * low
    * value = 10.0
    * unit = "mmol/L"
    * system = $CodeSystemUCUM
    * code = #mmol/L
  * high
    * value = 16.0
    * unit = "mmol/L"
    * system = $CodeSystemUCUM
    * code = #mmol/L
  * type
    * coding
      * system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
      * code = #normal
      * display = "Normal range"
    * text = "Normal range"
  * appliesTo
    * text = "Male"
  * age
    * low
      * value = 15
      * unit = "years"
      * system = $CodeSystemUCUM
      * code = #a
    * high
      * value = 100
      * unit = "years"
      * system = $CodeSystemUCUM
      * code = #a
* device
  * reference = "#device"
