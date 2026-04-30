# Environmental Observation - Personal Health Records v1.0.0-ballot2

## Logical Model: Environmental Observation 

 
A logical model representing environmental conditions relevant to patient health, such as air quality, temperature, noise, and UV exposure. These factors may be collected by consumer weather stations, smartphone sensors, or wearable devices. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/Environmental)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-Environmental.csv), [Excel](../StructureDefinition-Environmental.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Environmental",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pe"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/Environmental",
  "version" : "1.0.0-ballot2",
  "name" : "Environmental",
  "title" : "Environmental Observation",
  "status" : "active",
  "date" : "2026-04-23T17:08:04-05:00",
  "publisher" : "HL7 International / Patient Empowerment",
  "contact" : [
    {
      "name" : "HL7 International / Patient Empowerment",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/patientempowerment"
        }
      ]
    }
  ],
  "description" : "A logical model representing environmental conditions relevant to patient health, such as air quality, temperature, noise, and UV exposure. These factors may be collected by consumer weather stations, smartphone sensors, or wearable devices.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/fhir/uv/phr/StructureDefinition/Environmental",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Environmental",
        "path" : "Environmental",
        "short" : "Environmental Observation",
        "definition" : "A logical model representing environmental conditions relevant to patient health, such as air quality, temperature, noise, and UV exposure. These factors may be collected by consumer weather stations, smartphone sensors, or wearable devices."
      },
      {
        "id" : "Environmental.subject",
        "path" : "Environmental.subject",
        "short" : "The patient whose environment is being observed",
        "definition" : "The patient whose environment is being observed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "Environmental.effectiveDateTime",
        "path" : "Environmental.effectiveDateTime",
        "short" : "When the observation was made",
        "definition" : "When the observation was made",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Environmental.effectivePeriod",
        "path" : "Environmental.effectivePeriod",
        "short" : "Time period over which the observation applies",
        "definition" : "Time period over which the observation applies",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Environmental.location",
        "path" : "Environmental.location",
        "short" : "Location of measurement",
        "definition" : "Location of measurement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "Environmental.gpsCoordinates",
        "path" : "Environmental.gpsCoordinates",
        "short" : "GPS coordinates of the observation",
        "definition" : "GPS coordinates of the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Environmental.gpsCoordinates.latitude",
        "path" : "Environmental.gpsCoordinates.latitude",
        "short" : "Latitude in decimal degrees",
        "definition" : "Latitude in decimal degrees",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "Environmental.gpsCoordinates.longitude",
        "path" : "Environmental.gpsCoordinates.longitude",
        "short" : "Longitude in decimal degrees",
        "definition" : "Longitude in decimal degrees",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "Environmental.gpsCoordinates.altitude",
        "path" : "Environmental.gpsCoordinates.altitude",
        "short" : "Altitude above sea level",
        "definition" : "Altitude above sea level",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.temperature",
        "path" : "Environmental.temperature",
        "short" : "Ambient temperature",
        "definition" : "Ambient temperature",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.humidity",
        "path" : "Environmental.humidity",
        "short" : "Ambient relative humidity percentage",
        "definition" : "Ambient relative humidity percentage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.barometricPressure",
        "path" : "Environmental.barometricPressure",
        "short" : "Barometric pressure",
        "definition" : "Barometric pressure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.airQualityIndex",
        "path" : "Environmental.airQualityIndex",
        "short" : "Air quality index (AQI)",
        "definition" : "Air quality index (AQI)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Environmental.uvIndex",
        "path" : "Environmental.uvIndex",
        "short" : "UV exposure index",
        "definition" : "UV exposure index",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "Environmental.noiseLevel",
        "path" : "Environmental.noiseLevel",
        "short" : "Environmental noise level in decibels",
        "definition" : "Environmental noise level in decibels",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.pollenCount",
        "path" : "Environmental.pollenCount",
        "short" : "Pollen count",
        "definition" : "Pollen count",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.substance",
        "path" : "Environmental.substance",
        "short" : "Substances detected in the environment",
        "definition" : "Substances detected in the environment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Environmental.substance.code",
        "path" : "Environmental.substance.code",
        "short" : "Substance identity (e.g. lead, PFAS, asbestos, mold, radon)",
        "definition" : "Substance identity (e.g. lead, PFAS, asbestos, mold, radon)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Environmental.substance.category",
        "path" : "Environmental.substance.category",
        "short" : "Category of substance (e.g. contaminant, toxin, irritant, allergen)",
        "definition" : "Category of substance (e.g. contaminant, toxin, irritant, allergen)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Environmental.substance.concentration",
        "path" : "Environmental.substance.concentration",
        "short" : "Measured concentration of the substance",
        "definition" : "Measured concentration of the substance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Environmental.substance.source",
        "path" : "Environmental.substance.source",
        "short" : "Source or medium (e.g. groundwater, soil, air, surface)",
        "definition" : "Source or medium (e.g. groundwater, soil, air, surface)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
