# Observation BodyMeasurements Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation BodyMeasurements Codes 

 
Codes representing measurement items related to physical measurements 

 **References** 

* [PGHD BMI Profile](StructureDefinition-pghd-bmi.md)
* [PGHD BodyHeight Profile](StructureDefinition-pghd-bodyheight.md)
* [PGHD Body Measurement Profile](StructureDefinition-pghd-bodymeasurement.md)
* [PGHD BodyWeight Profile](StructureDefinition-pghd-bodyweight.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-body-measurements-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-body-measurements-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationBodyMeasurementsValueSet",
  "title" : "Observation BodyMeasurements Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T16:28:41-06:00",
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
  "description" : "Codes representing measurement items related to physical measurements",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
        "concept" : [
          {
            "code" : "height"
          },
          {
            "code" : "bodyMass"
          },
          {
            "code" : "bodyMassIndex"
          },
          {
            "code" : "leanBodyMass"
          },
          {
            "code" : "bodyFatPercentage"
          },
          {
            "code" : "waistCircumference"
          },
          {
            "code" : "hipCircumference"
          },
          {
            "code" : "boneMass"
          }
        ]
      }
    ]
  }
}

```
