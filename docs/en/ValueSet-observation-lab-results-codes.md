# Observation LabResults Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation LabResults Codes 

 
Codes representing measurement items associated with the inspection 

 **References** 

* [PGHD Test Result Profile](StructureDefinition-pghd-testresult.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-lab-results-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-lab-results-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationLabResultsValueSet",
  "title" : "Observation LabResults Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-12T15:47:36-05:00",
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
  "description" : "Codes representing measurement items associated with the inspection",
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
            "code" : "bloodAlcoholContent"
          },
          {
            "code" : "bloodGlucose"
          },
          {
            "code" : "electrodermalActivity"
          },
          {
            "code" : "forcedExpiratoryVolume1"
          },
          {
            "code" : "forcedVitalCapacity"
          },
          {
            "code" : "inhalerUsage"
          },
          {
            "code" : "insulinDelivery"
          },
          {
            "code" : "numberOfTimesFallen"
          },
          {
            "code" : "peakExpiratoryFlowRate"
          },
          {
            "code" : "peripheralPerfusionIndex"
          },
          {
            "code" : "timeInDaylight"
          },
          {
            "code" : "inspiratoryTime"
          },
          {
            "code" : "ventilationCycleTime"
          },
          {
            "code" : "minuteVolume"
          },
          {
            "code" : "breathCarbonMonoxide"
          }
        ]
      }
    ]
  }
}

```
