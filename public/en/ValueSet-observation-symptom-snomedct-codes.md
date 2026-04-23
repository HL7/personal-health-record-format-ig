# Observation Symptom SNOMED CT Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Symptom SNOMED CT Codes 

 
Codes representing symptom-related measurement items with SNOMED CT 

 **References** 

* [PGHD Symptom Profile](StructureDefinition-pghd-symptom.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-symptom-snomedct-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-snomedct-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationSymptomSNOMEDCT",
  "title" : "Observation Symptom SNOMED CT Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Codes representing symptom-related measurement items with SNOMED CT",
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
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "51197009"
          },
          {
            "code" : "403364000"
          },
          {
            "code" : "249473004"
          },
          {
            "code" : "165232002"
          },
          {
            "code" : "116289008"
          },
          {
            "code" : "53430007"
          },
          {
            "code" : "23924001"
          },
          {
            "code" : "43724002"
          },
          {
            "code" : "14760008"
          },
          {
            "code" : "49727002"
          },
          {
            "code" : "62315008"
          },
          {
            "code" : "404640003"
          },
          {
            "code" : "106076001"
          },
          {
            "code" : "271594007"
          },
          {
            "code" : "84229001"
          },
          {
            "code" : "386661006"
          },
          {
            "code" : "22253000"
          },
          {
            "code" : "278040002"
          },
          {
            "code" : "25064002"
          },
          {
            "code" : "16331000"
          },
          {
            "code" : "198436008"
          },
          {
            "code" : "44169009"
          },
          {
            "code" : "36955009"
          },
          {
            "code" : "279039007"
          },
          {
            "code" : "225038006"
          },
          {
            "code" : "106131003"
          },
          {
            "code" : "422587007"
          },
          {
            "code" : "42984000"
          },
          {
            "code" : "30473006"
          },
          {
            "code" : "80313002"
          },
          {
            "code" : "64531003"
          },
          {
            "code" : "267036007"
          },
          {
            "code" : "68235000"
          },
          {
            "code" : "247950007"
          },
          {
            "code" : "267102003"
          },
          {
            "code" : "31908003"
          },
          {
            "code" : "300359004"
          },
          {
            "code" : "56018004"
          }
        ]
      }
    ]
  }
}

```
