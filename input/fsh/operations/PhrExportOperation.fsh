Instance: phr-export
InstanceOf: OperationDefinition
Usage: #definition
Title: "PHR Export Operation"
Description: "Generates a complete patient health record in Bundle, NDJSON, .phr, or .sphr format."
* name = "PHRExport"
* title = "PHR Export Operation"
* status = #draft
* kind = #operation
* experimental = true
* description = "Generates a complete patient health record. The default output is a FHIR Bundle; the outputFormat parameter selects NDJSON, .phr, or .sphr packaging. Parameters are aligned with the R5 Patient/$everything operation (_since, _type), so a server MAY implement this operation as a façade over $everything plus serialization. See the API Endpoints page for conformance requirements and worked examples."
* code = #phr-export
* resource[0] = #Bundle
* resource[+] = #Patient
* system = false
* type = true
* instance = true
* parameter[0]
  * name = #outputFormat
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Requested output format: bundle (default), ndjson, phr, or sphr. Servers implementing PHR export MUST support this parameter."
  * type = #code
* parameter[+]
  * name = #patient
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The patient whose record is being exported. Required when the operation is invoked at type level on a multi-patient system."
  * type = #Reference
* parameter[+]
  * name = #start
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Earliest clinically-effective date to include (date or partial date)."
  * type = #date
* parameter[+]
  * name = #end
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Latest clinically-effective date to include (date or partial date)."
  * type = #date
* parameter[+]
  * name = #_since
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Only include resources updated after this instant. Same meaning as in Patient/$everything."
  * type = #instant
* parameter[+]
  * name = #_type
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Comma-separated list of resource types to include. Same meaning as in Patient/$everything."
  * type = #string
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "The exported record: a Bundle when outputFormat is bundle, otherwise a Binary wrapping the NDJSON (.phr) or zip (.sphr) content."
  * type = #Resource
