Instance: JaneDoePhrComposition
InstanceOf: PhrComposition
Title: "Jane Doe Composition"
Description: "A minimal narrative composition for Jane Doe's patient data."
Usage: #example
* id = "jane-doe-composition"
* status = #final
* type = http://loinc.org#11503-0 "Medical records"
* subject  = Reference(jane-doe-inline)
* date = "2024-12-10"
* author[0] = Reference(phr-provider-inline)
* title = "Jane Doe Patient Summary"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\"><p>Summary of Jane Doe's patient information...</p></div>"

/*
* section[0].title = "Related Documents"
* section[0].entry[0].reference = "https://example.org/baseR4/DocumentReference/jane-doe-genomics-document"
* section[0].entry[1].reference = "https://example.org/baseR4/Media/jane-doe-media"
*/

// Contained Resource
* contained[+] = jane-doe-inline
* contained[+] = phr-provider-inline

Instance: jane-doe-inline
InstanceOf: PhrPatient
Usage: #inline
* id = "jane-doe-inline"
* active = true
* identifier[0]
  * system = "http://hospital.hogehoge.org/patient"
  * value = "12345"
* name[0].use = #official
* name[0].family = "Doe"
* name[0].given[0] = "Jane"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #mobile
* gender = #female
* birthDate = "1985-05-15"
* address[0].line[0] = "123 Main St"
* address[0].city = "Springfield"
* address[0].state = "IL"
* address[0].postalCode = "62704"
* address[0].country = "USA"

Instance: phr-provider-inline
InstanceOf: PhrProvider
Usage: #inline
* id = "phr-provider-inline"
* active = true
* name = "PHR Provider"
* identifier[0]
  * system = "http://phr.hogehoge.org/provider"
  * value = "12345"
* telecom[0].system = #url
* telecom[0].value = "https://hogehoge.jp/phr-provider"
* telecom[0].use = #work
* address.text = "Tokyo Chiyoda-ku 1-1-1"
* address.city = "Chiyoda-ku"
* address.state = "Tokyo"
* address.postalCode = "100-0001"
* address.country = "JP"

Instance: HospitalPatientIdentifierSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "HospitalPatientIdentifier"
* date = "2026-01-20"
* status = #active
* kind = #identifier
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://hospital.hogehoge.org/patient"
* uniqueId[0].preferred = true


Instance: PhrProviderIdentifierSystem
InstanceOf: NamingSystem
Usage: #definition
* name = "PhrProviderIdentifier"
* date = "2026-01-20"
* status = #active
* kind = #identifier
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://phr.hogehoge.org/provider"
* uniqueId[0].preferred = true