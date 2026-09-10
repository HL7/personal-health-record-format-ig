Logical: Environmental
Id: Environmental
Title: "Environmental Observation"
Description: "A logical model representing environmental conditions relevant to patient health, such as air quality, temperature, noise, and UV exposure. These factors may be collected by consumer weather stations, smartphone sensors, or wearable devices."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient whose environment is being observed"
* effectiveDateTime 0..1 dateTime "When the observation was made"
* effectivePeriod 0..1 Period "Time period over which the observation applies"
* location 0..1 Address "Location of measurement"
* gpsCoordinates 0..1 BackboneElement "GPS coordinates of the observation"
  * latitude 1..1 decimal "Latitude in decimal degrees"
  * longitude 1..1 decimal "Longitude in decimal degrees"
  * altitude 0..1 Quantity "Altitude above sea level"
* temperature 0..1 Quantity "Ambient temperature"
* humidity 0..1 Quantity "Ambient relative humidity percentage"
* barometricPressure 0..1 Quantity "Barometric pressure"
* airQualityIndex 0..1 integer "Air quality index (AQI)"
* uvIndex 0..1 decimal "UV exposure index"
* noiseLevel 0..1 Quantity "Environmental noise level in decibels"
* pollenCount 0..1 Quantity "Pollen count"
* substance 0..* BackboneElement "Substances detected in the environment"
  * code 1..1 CodeableConcept "Substance identity (e.g. lead, PFAS, asbestos, mold, radon)"
  * category 0..1 CodeableConcept "Category of substance (e.g. contaminant, toxin, irritant, allergen)"
  * concentration 0..1 Quantity "Measured concentration of the substance"
  * source 0..1 string "Source or medium (e.g. groundwater, soil, air, surface)"



