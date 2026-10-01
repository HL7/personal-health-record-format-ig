Instance: phr-import
InstanceOf: OperationDefinition
Usage: #definition
Title: "PHR Import Operation"
Description: "Imports PHR data (NDJSON or Bundle) into the receiving system with deduplication, provenance tracking, and conflict resolution."
* name = "PHRImport"
* title = "PHR Import Operation"
* status = #draft
* kind = #operation
* experimental = true
* description = "Accepts PHR data in NDJSON or Bundle form and imports it into the receiving system. The request body carries the payload directly (Content-Type: application/x-ndjson or application/fhir+json). Importers are expected to deduplicate, retain provenance, validate, and resolve forward references; servers SHOULD support the FHIR asynchronous request pattern (202 Accepted + Content-Location polling) for large payloads and MAY apply back pressure with 429/Retry-After. See the API Endpoints page for conformance requirements and sequencing guidance."
* code = #import
* resource = #Bundle
* system = false
* type = true
* instance = false
* parameter[0]
  * name = #strategy
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Import strategy: merge (reconcile with existing records, default) or append (import without reconciliation)."
  * type = #code
* parameter[+]
  * name = #mode
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Processing mode: commit (default) or validate (validation-only dry run, nothing persisted)."
  * type = #code
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "An import manifest: an OperationOutcome (or Parameters resource for asynchronous imports) reporting resource counts, rejected resources, and unresolved references."
  * type = #Resource
