# Body Temperature Measurement Location Codes - Personal Health Records v1.0.0-ballot2

## CodeSystem: Body Temperature Measurement Location Codes 

 
Code indicating the location where the body temperature was measured 

This Code system is referenced in the definition of the following value sets:

* [BodyTemperatureMeasurementLocationValueset](ValueSet-body-temperature-measurement-location.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "body-temperature-measurement-location-codes",
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
  "url" : "http://hl7.org/fhir/uv/phr/CodeSystem/body-temperature-measurement-location-codes",
  "version" : "1.0.0-ballot2",
  "name" : "BodyTemperatureMeasurementLocation",
  "title" : "Body Temperature Measurement Location Codes",
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
  "description" : "Code indicating the location where the body temperature was measured",
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
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "other",
      "display" : "Other",
      "definition" : "The temperature was taken at a location that is not otherwise in this list."
    },
    {
      "code" : "armpit",
      "display" : "Armpit",
      "definition" : "The temperature was taken in the armpit."
    },
    {
      "code" : "body",
      "display" : "Body",
      "definition" : "The temperature was taken on the body."
    },
    {
      "code" : "ear",
      "display" : "Ear",
      "definition" : "The temperature was taken in the ear."
    },
    {
      "code" : "finger",
      "display" : "Finger",
      "definition" : "The temperature was taken at the finger."
    },
    {
      "code" : "gastroIntestinal",
      "display" : "Gastrointestinal",
      "definition" : "The temperature was taken inside the gastrointestinal tract."
    },
    {
      "code" : "mouth",
      "display" : "Mouth",
      "definition" : "The temperature was taken in the mouth."
    },
    {
      "code" : "rectum",
      "display" : "Rectum",
      "definition" : "The temperature was taken in the rectum."
    },
    {
      "code" : "toe",
      "display" : "Toe",
      "definition" : "The temperature was taken at the toe."
    },
    {
      "code" : "earDrum",
      "display" : "Ear drum",
      "definition" : "The temperature was taken on the eardrum."
    },
    {
      "code" : "temporalArtery",
      "display" : "Temporal artery",
      "definition" : "The temperature was taken at the temporal artery."
    },
    {
      "code" : "forehead",
      "display" : "Forehead",
      "definition" : "The temperature was taken on the forehead."
    },
    {
      "code" : "vagina",
      "display" : "Vagina",
      "definition" : "The temperature was taken in the vagina."
    },
    {
      "code" : "wrist",
      "display" : "Wrist",
      "definition" : "The temperature was taken on the wrist."
    }
  ]
}

```
