# GAD-7 assesment - Personal Health Records v1.0.0-ballot2

## Questionnaire: GAD-7 assesment 

 
GAD-7 Scored Assessment 

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
  "id" : "gad7",
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
  "url" : "http://hl7.org/fhir/uv/phr/Questionnaire/gad7",
  "version" : "1.0.0-ballot2",
  "name" : "GAD7",
  "title" : "GAD-7 assesment",
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
  "description" : "GAD-7 Scored Assessment",
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
      "code" : "69737-5",
      "display" : "Generalized anxiety disorder 7 item (GAD-7)"
    }
  ],
  "item" : [
    {
      "linkId" : "69725-0",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69725-0",
          "display" : "Feeling nervous, anxious or on edge in last 2 weeks"
        }
      ],
      "text" : "Feeling nervous, anxious or on edge",
      "type" : "choice",
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
    },
    {
      "linkId" : "68509-9",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "68509-9",
          "display" : "Not able to stop or control worrying in the last 2 weeks"
        }
      ],
      "text" : "Over the past 2 weeks have you not been able to stop or control worrying",
      "type" : "choice",
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
    },
    {
      "linkId" : "69733-4",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69733-4",
          "display" : "Worrying too much about different things in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Worrying too much about different things",
      "type" : "choice",
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
    },
    {
      "linkId" : "69734-2",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69734-2",
          "display" : "Trouble relaxing in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Trouble relaxing",
      "type" : "choice",
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
    },
    {
      "linkId" : "69735-9",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69735-9",
          "display" : "Being so restless that it is hard to sit still in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Being so restless that it is hard to sit still",
      "type" : "choice",
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
    },
    {
      "linkId" : "69689-8",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69689-8",
          "display" : "Becoming easily annoyed or irritable in last 4 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Becoming easily annoyed or irritable.",
      "type" : "choice",
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
    },
    {
      "linkId" : "69736-7",
      "code" : [
        {
          "system" : "http://loinc.org",
          "code" : "69736-7",
          "display" : "Feeling afraid as if something awful might happen in last 2 weeks [Reported.PHQ]"
        }
      ],
      "text" : "Feeling afraid as if something awful might happen",
      "type" : "choice",
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
