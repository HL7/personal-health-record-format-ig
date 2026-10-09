# PHR Export Operation - Personal Health Records v1.0.0-ballot2

## OperationDefinition: PHR Export Operation (Experimental) 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "phr-export",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pe"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative",
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
  "url" : "http://hl7.org/fhir/uv/phr/OperationDefinition/phr-export",
  "version" : "1.0.0-ballot2",
  "name" : "PHRExport",
  "title" : "PHR Export Operation",
  "status" : "draft",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2026-10-08T19:53:09-05:00",
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
  "description" : "Generates a complete patient health record. The default output is a FHIR Bundle; the outputFormat parameter selects NDJSON, .phr, or .sphr packaging. Parameters are aligned with the R5 Patient/$everything operation (_since, _type), so a server MAY implement this operation as a façade over $everything plus serialization. See the API Endpoints page for conformance requirements and worked examples.",
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
  "code" : "phr-export",
  "resource" : ["Bundle", "Patient"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [
    {
      "name" : "outputFormat",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Requested output format: bundle (default), ndjson, phr, or sphr. Servers implementing PHR export MUST support this parameter.",
      "type" : "code"
    },
    {
      "name" : "patient",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The patient whose record is being exported. Required when the operation is invoked at type level on a multi-patient system.",
      "type" : "Reference"
    },
    {
      "name" : "start",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Earliest clinically-effective date to include (date or partial date).",
      "type" : "date"
    },
    {
      "name" : "end",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Latest clinically-effective date to include (date or partial date).",
      "type" : "date"
    },
    {
      "name" : "_since",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Only include resources updated after this instant. Same meaning as in Patient/$everything.",
      "type" : "instant"
    },
    {
      "name" : "_type",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Comma-separated list of resource types to include. Same meaning as in Patient/$everything.",
      "type" : "string"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The exported record: a Bundle when outputFormat is bundle, otherwise a Binary wrapping the NDJSON (.phr) or zip (.sphr) content.",
      "type" : "Resource"
    }
  ]
}

```
