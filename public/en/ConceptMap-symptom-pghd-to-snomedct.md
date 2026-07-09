# ConceptMapSymptomPGHD2SNOMEDCT - Personal Health Records v1.0.0-ballot2

## ConceptMap: ConceptMapSymptomPGHD2SNOMEDCT 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "symptom-pghd-to-snomedct",
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
  "url" : "http://hl7.org/fhir/uv/phr/ConceptMap/symptom-pghd-to-snomedct",
  "version" : "1.0.0-ballot2",
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
  "sourceUri" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-codes",
  "targetUri" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-snomedct-codes",
  "group" : [
    {
      "source" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
      "target" : "http://snomed.info/sct",
      "element" : [
        {
          "code" : "abdominalCramps",
          "target" : [
            {
              "code" : "51197009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "acne",
          "target" : [
            {
              "code" : "403364000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "appetiteChanges",
          "target" : [
            {
              "code" : "249473004",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "bladderIncontinence",
          "target" : [
            {
              "code" : "165232002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "bloating",
          "target" : [
            {
              "code" : "116289008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "breastPain",
          "target" : [
            {
              "code" : "53430007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "chestTightnessOrPain",
          "target" : [
            {
              "code" : "23924001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "chills",
          "target" : [
            {
              "code" : "43724002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "constipation",
          "target" : [
            {
              "code" : "14760008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "coughing",
          "target" : [
            {
              "code" : "49727002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "diarrhea",
          "target" : [
            {
              "code" : "62315008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "dizziness",
          "target" : [
            {
              "code" : "404640003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "drySkin",
          "target" : [
            {
              "code" : "106076001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "fainting",
          "target" : [
            {
              "code" : "271594007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "fatigue",
          "target" : [
            {
              "code" : "84229001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "fever",
          "target" : [
            {
              "code" : "386661006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "generalizedBodyAche",
          "target" : [
            {
              "code" : "22253000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "hairLoss",
          "target" : [
            {
              "code" : "278040002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "headache",
          "target" : [
            {
              "code" : "25064002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "heartburn",
          "target" : [
            {
              "code" : "16331000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "hotFlashes",
          "target" : [
            {
              "code" : "198436008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "lossOfSmell",
          "target" : [
            {
              "code" : "44169009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "lossOfTaste",
          "target" : [
            {
              "code" : "36955009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "lowerBackPain",
          "target" : [
            {
              "code" : "279039007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "memoryLapse",
          "target" : [
            {
              "code" : "225038006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "moodChanges",
          "target" : [
            {
              "code" : "106131003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "nausea",
          "target" : [
            {
              "code" : "422587007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "nightSweats",
          "target" : [
            {
              "code" : "42984000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "pelvicPain",
          "target" : [
            {
              "code" : "30473006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "rapidPoundingOrFlutteringHeartbeat",
          "target" : [
            {
              "code" : "80313002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "runnyNose",
          "target" : [
            {
              "code" : "64531003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "shortnessOfBreath",
          "target" : [
            {
              "code" : "267036007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "sinusCongestion",
          "target" : [
            {
              "code" : "68235000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "skippedHeartbeat",
          "target" : [
            {
              "code" : "80313002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "sleepChanges",
          "target" : [
            {
              "code" : "247950007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "soreThroat",
          "target" : [
            {
              "code" : "267102003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "vaginalDryness",
          "target" : [
            {
              "code" : "31908003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "vomiting",
          "target" : [
            {
              "code" : "300359004",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "wheezing",
          "target" : [
            {
              "code" : "56018004",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
