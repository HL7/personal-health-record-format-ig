ValueSet: ObservationBodyMesurementsValueSet
Id: observation-body-mesurements-codes
Title: "Observation BodyMesurements Codes"
Description: """
Codes representing measurement items related to physical measurements
"""
* ^status = #active
* ^experimental = false

* ObservationPGHD#height
* ObservationPGHD#bodyMass
* ObservationPGHD#bodyMassIndex
* ObservationPGHD#leanBodyMass
* ObservationPGHD#bodyFatPercentage
* ObservationPGHD#waistCircumference
* ObservationPGHD#hipCircumference
* ObservationPGHD#boneMass