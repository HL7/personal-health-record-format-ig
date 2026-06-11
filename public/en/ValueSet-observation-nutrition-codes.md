# Observation Nutrition Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Observation Nutrition Codes 

 
Codes representing nutrition-related measures 

 **References** 

* [PGHD Nutrition Profile](StructureDefinition-pghd-nutrition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "observation-nutrition-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-nutrition-codes",
  "version" : "1.0.0-ballot2",
  "name" : "ObservationNutrition",
  "title" : "Observation Nutrition Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T13:06:45-06:00",
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
  "description" : "Codes representing nutrition-related measures",
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
            "code" : "dietaryBiotin"
          },
          {
            "code" : "dietaryCaffeine"
          },
          {
            "code" : "dietaryCalcium"
          },
          {
            "code" : "dietaryCarbohydrates"
          },
          {
            "code" : "dietaryChloride"
          },
          {
            "code" : "dietaryCholesterol"
          },
          {
            "code" : "dietaryChromium"
          },
          {
            "code" : "dietaryCopper"
          },
          {
            "code" : "dietaryEnergyConsumed"
          },
          {
            "code" : "dietaryEnergyFromFat"
          },
          {
            "code" : "dietaryFatMonounsaturated"
          },
          {
            "code" : "dietaryFatPolyunsaturated"
          },
          {
            "code" : "dietaryFatUnsaturated"
          },
          {
            "code" : "dietaryTransFat"
          },
          {
            "code" : "dietaryFatSaturated"
          },
          {
            "code" : "dietaryFatTotal"
          },
          {
            "code" : "dietaryFiber"
          },
          {
            "code" : "dietaryFolateOrFolicAcid"
          },
          {
            "code" : "dietaryFolate"
          },
          {
            "code" : "dietaryFolicAcid"
          },
          {
            "code" : "dietaryIodine"
          },
          {
            "code" : "dietaryIron"
          },
          {
            "code" : "dietaryMagnesium"
          },
          {
            "code" : "dietaryManganese"
          },
          {
            "code" : "dietaryMolybdenum"
          },
          {
            "code" : "dietaryNiacin"
          },
          {
            "code" : "dietaryPantothenicAcid"
          },
          {
            "code" : "dietaryPhosphorus"
          },
          {
            "code" : "dietaryPotassium"
          },
          {
            "code" : "dietaryProtein"
          },
          {
            "code" : "dietaryRiboflavin"
          },
          {
            "code" : "dietarySelenium"
          },
          {
            "code" : "dietarySodium"
          },
          {
            "code" : "dietarySugar"
          },
          {
            "code" : "dietaryThiamin"
          },
          {
            "code" : "dietaryVitaminA"
          },
          {
            "code" : "dietaryVitaminB12"
          },
          {
            "code" : "dietaryVitaminB6"
          },
          {
            "code" : "dietaryVitaminC"
          },
          {
            "code" : "dietaryVitaminD"
          },
          {
            "code" : "dietaryVitaminE"
          },
          {
            "code" : "dietaryVitaminK"
          },
          {
            "code" : "dietaryWater"
          },
          {
            "code" : "dietaryZinc"
          }
        ]
      }
    ]
  }
}

```
