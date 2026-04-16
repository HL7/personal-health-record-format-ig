# Body Temperature Measurement Location Codes - Personal Health Records v1.0.0-ballot2

## ValueSet: Body Temperature Measurement Location Codes 

 
Code indicating the location where the body temperature was measured 

 **References** 

* [PGHD BodyTemperature Profile](StructureDefinition-pghd-bodytemperature.md)
* [PGHD ReproductiveHealth Profile](StructureDefinition-pghd-reproductive-health.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "body-temperature-measurement-location",
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
  "url" : "http://hl7.org/fhir/uv/phr/ValueSet/body-temperature-measurement-location",
  "version" : "1.0.0-ballot2",
  "name" : "BodyTemperatureMeasurementLocationValueset",
  "title" : "Body Temperature Measurement Location Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-16T16:46:43-05:00",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/phr/CodeSystem/body-temperature-measurement-location-codes"
      }
    ]
  }
}

```
