Logical: Environmental
Id: Environmental
Title: "Environmental Observation"
Description: "A logical model representing environmental conditions relevant to patient health, such as air quality, temperature, noise, and UV exposure. These factors may be collected by consumer weather stations, smartphone sensors, or wearable devices."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient whose environment is being observed"
* effectiveDateTime 0..1 dateTime "When the observation was made"
* location 0..1 Address "Location of measurement"
* temperature 0..1 Quantity "Ambient temperature"
* humidity 0..1 Quantity "Ambient relative humidity percentage"
* barometricPressure 0..1 Quantity "Barometric pressure"
* altitude 0..1 Quantity "Altitude above sea level"
* airQualityIndex 0..1 integer "Air quality index (AQI)"
* uvIndex 0..1 decimal "UV exposure index"
* noiseLevel 0..1 Quantity "Environmental noise level in decibels"
* pollenCount 0..1 Quantity "Pollen count"
