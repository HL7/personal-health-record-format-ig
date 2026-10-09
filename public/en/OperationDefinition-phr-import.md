# PHR Import Operation - Personal Health Records v1.0.0-ballot2

## OperationDefinition: PHR Import Operation (Experimental) 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "phr-import",
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
  "url" : "http://hl7.org/fhir/uv/phr/OperationDefinition/phr-import",
  "version" : "1.0.0-ballot2",
  "name" : "PHRImport",
  "title" : "PHR Import Operation",
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
  "description" : "Accepts PHR data in NDJSON or Bundle form and imports it into the receiving system. The request body carries the payload directly (Content-Type: application/x-ndjson or application/fhir+json). Importers are expected to deduplicate, retain provenance, validate, and resolve forward references; servers SHOULD support the FHIR asynchronous request pattern (202 Accepted + Content-Location polling) for large payloads and MAY apply back pressure with 429/Retry-After. See the API Endpoints page for conformance requirements and sequencing guidance.",
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
  "code" : "import",
  "resource" : ["Bundle"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "strategy",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Import strategy: merge (reconcile with existing records, default) or append (import without reconciliation).",
      "type" : "code"
    },
    {
      "name" : "mode",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Processing mode: commit (default) or validate (validation-only dry run, nothing persisted).",
      "type" : "code"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "An import manifest: an OperationOutcome (or Parameters resource for asynchronous imports) reporting resource counts, rejected resources, and unresolved references.",
      "type" : "Resource"
    }
  ]
}

```
