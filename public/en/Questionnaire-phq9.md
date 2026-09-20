# PHQ-9 assesment - Personal Health Records v1.0.0-ballot2

## Questionnaire: PHQ-9 assesment 

 
PHQ-9 Scored Assessment 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [(no description)](QuestionnaireResponse-gad7.md)
* [(no description)](QuestionnaireResponse-phq9.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "phq9",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/phr/StructureDefinition/pghd-questionnaire"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pe"
    }
  ],
  "url" : "http://hl7.org/fhir/uv/phr/Questionnaire/phq9",
  "version" : "1.0.0-ballot2",
  "name" : "PHQ9",
  "title" : "PHQ-9 assesment",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2024-11-01",
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
  "description" : "PHQ-9 Scored Assessment",
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
  "code" : [
    {
      "system" : "http://loinc.org",
      "code" : "44249-1",
      "display" : "PHQ-9 quick depression assessment panel [Reported.PHQ]"
    }
  ],
  "item" : [
    {
      "linkId" : "44250-9",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44250-9",
          "display" : "Little interest or pleasure in doing things in last 2 weeks"
        }
      ],
      "text" : "Little interest or pleasure in doing things",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44255-8",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44255-8",
          "display" : "Feeling down, depressed, or hopeless in last 2 weeks"
        }
      ],
      "text" : "Feeling down, depressed, or hopeless",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44259-0",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44259-0",
          "display" : "Trouble falling or staying asleep, or sleeping too much in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Trouble falling or staying asleep, or sleeping too much",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44254-1",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44254-1",
          "display" : "Feeling tired or having little energy in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Feeling tired or having little energy",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44251-7",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44251-7",
          "display" : "Poor appetite or overeating in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Poor appetite or overeating",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44258-2",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44258-2",
          "display" : "Feeling bad about yourself - or that you are a failure or have let yourself or your family down in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Feeling bad about yourself-or that you are a failure or have let yourself or your family down",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44252-5",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44252-5",
          "display" : "Trouble concentrating on things, such as reading the newspaper or watching television in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Trouble concentrating on things, such as reading the newspaper or watching television",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44253-3",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44253-3",
          "display" : "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Moving or speaking so slowly that other people could have noticed. Or the opposite – being so fidgety or restless that you were moving around a lot more than usual",
      "type" : "choice",
      "required" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }
      ]
    },
    {
      "linkId" : "44260-8",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "44260-8",
          "display" : "Thoughts that you would be better off dead, or of hurting yourself in some way in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Thoughts that you would be better off dead, or of hurting yourself in some way",
      "type" : "choice",
      "required" : false,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "asked-declined",
            "display" : "Asked But Declined"
          }
        }
      ]
    }
  ]
}

```
