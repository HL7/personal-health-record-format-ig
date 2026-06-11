# ConceptMapSymptomSNOMEDCT2PGHD - Personal Health Records v1.0.0-ballot2

## ConceptMap: ConceptMapSymptomSNOMEDCT2PGHD 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "symptom-snomedct-to-pghd",
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
  "url" : "http://hl7.org/fhir/uv/phr/ConceptMap/symptom-snomedct-to-pghd",
  "version" : "1.0.0-ballot2",
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
  "sourceUri" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-snomedct-codes",
  "targetUri" : "http://hl7.org/fhir/uv/phr/ValueSet/observation-symptom-codes",
  "group" : [
    {
      "source" : "http://snomed.info/sct",
      "target" : "http://hl7.org/fhir/uv/phr/CodeSystem/observation-pghd-codes",
      "element" : [
        {
          "code" : "51197009",
          "target" : [
            {
              "code" : "abdominalCramps",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "403364000",
          "target" : [
            {
              "code" : "acne",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "249473004",
          "target" : [
            {
              "code" : "appetiteChanges",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "165232002",
          "target" : [
            {
              "code" : "bladderIncontinence",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "116289008",
          "target" : [
            {
              "code" : "bloating",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "53430007",
          "target" : [
            {
              "code" : "breastPain",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "23924001",
          "target" : [
            {
              "code" : "chestTightnessOrPain",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "43724002",
          "target" : [
            {
              "code" : "chills",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "14760008",
          "target" : [
            {
              "code" : "constipation",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "49727002",
          "target" : [
            {
              "code" : "coughing",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "62315008",
          "target" : [
            {
              "code" : "diarrhea",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "404640003",
          "target" : [
            {
              "code" : "dizziness",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "106076001",
          "target" : [
            {
              "code" : "drySkin",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "271594007",
          "target" : [
            {
              "code" : "fainting",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "84229001",
          "target" : [
            {
              "code" : "fatigue",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "386661006",
          "target" : [
            {
              "code" : "fever",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "22253000",
          "target" : [
            {
              "code" : "generalizedBodyAche",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "278040002",
          "target" : [
            {
              "code" : "hairLoss",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "25064002",
          "target" : [
            {
              "code" : "headache",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "16331000",
          "target" : [
            {
              "code" : "heartburn",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "198436008",
          "target" : [
            {
              "code" : "hotFlashes",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "44169009",
          "target" : [
            {
              "code" : "lossOfSmell",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "36955009",
          "target" : [
            {
              "code" : "lossOfTaste",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "279039007",
          "target" : [
            {
              "code" : "lowerBackPain",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "225038006",
          "target" : [
            {
              "code" : "memoryLapse",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "106131003",
          "target" : [
            {
              "code" : "moodChanges",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "422587007",
          "target" : [
            {
              "code" : "nausea",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "42984000",
          "target" : [
            {
              "code" : "nightSweats",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "30473006",
          "target" : [
            {
              "code" : "pelvicPain",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "80313002",
          "target" : [
            {
              "code" : "rapidPoundingOrFlutteringHeartbeat",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "64531003",
          "target" : [
            {
              "code" : "runnyNose",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "267036007",
          "target" : [
            {
              "code" : "shortnessOfBreath",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "68235000",
          "target" : [
            {
              "code" : "sinusCongestion",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "80313002",
          "target" : [
            {
              "code" : "skippedHeartbeat",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "247950007",
          "target" : [
            {
              "code" : "sleepChanges",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "267102003",
          "target" : [
            {
              "code" : "soreThroat",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31908003",
          "target" : [
            {
              "code" : "vaginalDryness",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "300359004",
          "target" : [
            {
              "code" : "vomiting",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "56018004",
          "target" : [
            {
              "code" : "wheezing",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
