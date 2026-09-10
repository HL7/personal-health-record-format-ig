### Using the Conformance Recommendations

The Personal Health Record (PHR) Implementation Guide is designed to support a range of implementations, from small applications that manage only a limited amount of health information to comprehensive personal health record systems. Implementers are not expected to implement every specification listed in Table 4.1.

For implementers who are new to the FHIR ecosystem, Table 4.1 is intended to serve as an implementation roadmap. Begin with the specifications identified as foundational, and add additional capabilities according to the clinical information and workflows supported by the application.

A minimal PHR implementation begins with the **Electronic Health Information (EHI) Export API** and the **Record Life Cycle**. Together, these establish the basic mechanisms needed to represent, retain, exchange, and manage the life cycle of a personal health record. An implementation may therefore begin with a very small record — potentially containing only a few data elements — without implementing the entire FHIR API surface or every clinical domain described by this guide.

Implementers are **RECOMMENDED** to additionally support the **International Patient Summary (IPS)**. IPS provides a standardized, internationally applicable representation of essential patient health information and provides a useful clinical foundation upon which a more comprehensive PHR can be constructed.

Other specifications in Table 4.1 should be treated as **opt-in capabilities**. Implementers should select them according to the information their application manages and the functions it provides. For example, an application that manages immunization records should implement the applicable immunization guidance, while an application that does not manage immunizations is not expected to implement that capability solely to claim conformance with this guide.

This modular approach is intentional. It follows a pattern familiar from standards such as DICOM, in which implementations support the information objects, services, and capabilities appropriate to their intended use rather than being required to implement the entire standard. A conformant PHR can therefore begin as a minimal viable health record and progressively add standardized capabilities as its scope expands.

This approach also distinguishes the PHR Implementation Guide from comprehensive functional models. Earlier approaches to personal health record standardization, including the PHR-S Functional Model, describe a broad set of functions that a complete PHR system might provide. Feedback from implementers indicated that requiring such a broad functional surface would make conformance impractical for many focused applications. This guide therefore favors **composable conformance**: a small foundational core, accompanied by standardized capabilities that implementations adopt when applicable.

### Additional Implementation Guides 

| Implementation Guide  | Specialty | Resources | APIs |
| --------------------- | --------  | :-------- | :-------- | 
| [Electronic Health Information Export API](https://build.fhir.org/ig/argonautproject/ehi-api/) |   | SHOULD | MUST |
| [Record Lifecycle](https://build.fhir.org/ig/HL7/ehrs-rle-ig/) | Medical Records | NOT APPLICABLE | MUST |
| [SMART Health Cards and Links](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/) | Epidemiology  | SHOULD | MAY |
| [PHR-S Functional Model](https://hl7.org/ehrs/uv/phrsfmr2/)  |  | SHOULD | MAY |
| [Patient Data Receipt](https://open-health-manager.github.io/patient-data-receipt-ig/) | Medical Records | NOT APPLICABLE | SHOULD |
| [Argonaut Data Query](http://www.fhir.org/guides/argonaut/r2/) | Internal Medicine  | SHOULD | SHOULD |
| [Argonaut Data Write](https://hackmd.io/@erichaas/rJVqJGmeY/%2FwTGb4Gk6R6O4NVut5yaJig) | Internal Medicine  | SHOULD | SHOULD |
| [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/) | Primary Care | SHOULD | MAY |
| [Argonaut Clinical Notes](http://fhir.org/guides/argonaut/clinicalnotes/) | Primary Care  | SHOULD | MAY |
| [Argonaut Questionnaire](http://fhir.org/guides/argonaut/questionnaire/) |   | SHOULD | MAY |
| [Patient Request for Corrections](https://build.fhir.org/ig/HL7/fhir-patient-correction/) |   | SHOULD | MAY |
| [International Patient Summary](http://hl7.org/fhir/uv/ips/) |   | SHOULD | MAY |
| [US CORE](https://www.hl7.org/fhir/us/core/) |   | MAY | MAY |
| [SMART on FHIR - App Launch](https://hl7.org/fhir/smart-app-launch/) |   | NOT APPLICABLE | SHOULD |
| [C-CDA on FHIR](http://hl7.org/fhir/us/ccda/) |   | MAY | MAY |
| [PACIO - Advanced Directives](https://build.fhir.org/ig/HL7/fhir-pacio-adi/) |   | SHOULD | MAY |
| [PACIO - Personal Functioning and Engagement](https://build.fhir.org/ig/HL7/fhir-pacio-pfe/en/) | Neurology | MAY | MAY |
| [mCode](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/examples.html) | Oncology | SHOULD | MAY |
| [Gravity - Social Determinates of Health](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/) | Social Work | SHOULD | MAY |
| [Dental Data Exchange](https://build.fhir.org/ig/HL7/dental-data-exchange/) | Dental  | MAY | MAY |
| [Genomics Reporting](https://build.fhir.org/ig/HL7/genomics-reporting/artifacts.html) | Genetics | MAY | MAY |
| [Radiation Dose Summary](https://build.fhir.org/ig/HL7/fhir-radiation-dose-summary-ig/) | Radiology  | MAY | MAY |
| [Breast Radiology Reporting](https://build.fhir.org/ig/HL7/fhir-breast-radiology-ig/) |  Radiology | MAY | MAY |
| [mCODE](http://hl7.org/fhir/us/mcode/) | | MAY | MAY |
| [CH AllergyIntolerance](https://fhir.ch/ig/ch-allergyintolerance/) | Immunology  | SHOULD | MAY |
| [Vital Signs](https://build.fhir.org/ig/HL7/cimi-vital-signs/) | Intensive Care  | SHOULD | MAY |
| [UDAP Security](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/) |   | NOT APPLICABLE | SHOULD |
| [SNOMED Terminology Server](https://build.fhir.org/ig/IHTSDO/snomed-ig/) |   | SHOULD | MAY |
| [CARIN Digital Insurance Card](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/) |   | SHOULD | MAY |
| [Physical Activity](https://build.fhir.org/ig/HL7/physical-activity) | | SHOULD | MAY |
| [Mobile Access to Health Documents](https://profiles.ihe.net/ITI/MHD/) |   | MAY | MAY |
| [Patient Reported Outcomes](http://hl7.org/fhir/us/patient-reported-outcomes/2019May/index.html) |   | MAY | MAY |
| [Patient Health Devices](http://hl7.org/fhir/uv/phd/2019May/) |   | MAY | MAY |
| [Da Vinci - Prior Authorization](http://hl7.org/fhir/us/davinci-pas/) |   | MAY | MAY |
| [Vital Records -  Birth and Fetal Death Reporting](http://hl7.org/fhir/us/bfdr/artifacts.html) |   | MAY | MAY |


#### Why These Guides May Be of Interest

- **Electronic Health Information (EHI) Export API** — useful for patients who want to obtain a complete electronic copy of their health information from a healthcare organization and bring that information into their personal health record.

- **Record Lifecycle** — useful for any PHR that needs to maintain health information over time, including understanding when records were created, updated, replaced, corrected, or otherwise changed.

- **SMART Health Cards and Links** — useful for patients who want to carry or share portable, verifiable health information, such as vaccination or laboratory records, using a QR code, wallet, or link.

- **PHR-S Functional Model** — useful for implementers building a comprehensive personal health record and looking for a broader catalog of functions that patients may expect from a full-featured PHR.

- **Patient Data Receipt** — useful for patients who want health information received from another system to be incorporated into their own longitudinal personal health record.

- **Argonaut Data Query** — useful for patients who want their PHR to retrieve common clinical information such as conditions, medications, allergies, laboratory results, and other records from healthcare providers.

- **Argonaut Data Write** — useful for patients who want their PHR to contribute information back to healthcare systems rather than operating solely as a read-only record.

- **Argonaut Scheduling** — useful for patients who want to find available appointments and manage healthcare scheduling through their PHR.

- **Argonaut Clinical Notes** — useful for patients who want access to clinical notes written by their physicians and other healthcare professionals.

- **Argonaut Questionnaire** — useful for patients who want to complete intake forms, screening instruments, health assessments, or other questionnaires electronically.

- **Patient Request for Corrections** — useful for patients who discover inaccurate, incomplete, or disputed information in their medical record and want to request that the record be corrected or amended.

- **International Patient Summary (IPS)** — useful for international travelers, people receiving care outside their usual healthcare system, and anyone who wants a concise, portable summary of essential health information that can be understood across organizational and national boundaries.

- **US Core** — useful for patients receiving healthcare in the United States who want their PHR to interoperate with the common clinical data elements and APIs supported by U.S. healthcare systems.

- **SMART on FHIR – App Launch** — useful for patients who want to securely connect their PHR with third-party health applications, or use PHR applications in conjunction with healthcare-provider systems.

- **C-CDA on FHIR** — useful for patients who have existing clinical documents, such as Continuity of Care Documents, discharge summaries, or referral documents, and want to incorporate those documents into a FHIR-based PHR.

- **PACIO – Advance Directives** — useful for patients who want their PHR to carry advance directives, healthcare agent information, living wills, and other information describing their preferences for future medical care.

- **PACIO – Personal Functioning and Engagement** — useful for people managing disability, rehabilitation, aging, neurological conditions, or long-term care who want to track functional status and participation in everyday activities.

- **mCODE** — useful for anyone receiving oncology care, cancer survivors, or patients with a history of cancer who want their PHR to represent cancer diagnoses, staging, treatments, laboratory information, and other oncology-specific information.

- **Gravity – Social Determinants of Health** — useful for patients whose health or care is affected by factors such as housing, food access, transportation, financial insecurity, social support, or other social needs.

- **Dental Data Exchange** — useful for patients who want dental and oral-health information to be part of their longitudinal personal health record and exchangeable between dental and medical providers.

- **Genomics Reporting** — useful for patients who have undergone genetic or genomic testing and want to retain and reuse genomic results as part of their longitudinal health record.

- **Radiation Dose Summary** — useful for patients who undergo repeated medical imaging or radiation-producing procedures and want to maintain a longitudinal history of their medical radiation exposure.

- **Breast Radiology Reporting** — useful for patients undergoing mammography, breast ultrasound, MRI, or other breast imaging who want their PHR to represent breast-imaging findings and recommendations in a standardized form.

- **CH AllergyIntolerance** — useful particularly for patients receiving care in Switzerland who need standardized exchange of allergy and intolerance information.

- **Vital Signs** — useful for patients who want to track measurements such as blood pressure, heart rate, respiratory rate, temperature, oxygen saturation, height, or weight over time, including measurements collected at home.

- **UDAP Security** — useful when a PHR needs secure, scalable, trusted connections with healthcare organizations and other systems, particularly where automated registration and cross-organizational trust are required.

- **SNOMED Terminology Server** — useful for PHRs that need to consistently interpret, organize, search, or exchange clinical concepts represented using SNOMED CT.

- **CARIN Digital Insurance Card** — useful for patients who want to carry and share health insurance coverage information electronically, including information ordinarily found on a physical insurance card.

- **Physical Activity** — useful for patients tracking exercise, mobility, fitness, rehabilitation, or activity goals, including information collected by consumer devices and health applications.

- **Mobile Access to Health Documents (MHD)** — useful for patients who need access to clinical documents distributed across healthcare organizations or document-sharing networks, particularly from mobile applications.

- **Patient Reported Outcomes** — useful for patients who want to record how they are feeling or functioning directly, including symptoms, quality of life, treatment effects, and other outcomes that may not be captured by clinical measurements alone.

- **Patient Health Devices** — useful for patients using home or personal medical devices—such as blood-pressure monitors, pulse oximeters, thermometers, scales, or other connected devices—and who want those measurements incorporated into their PHR.

- **Da Vinci – Prior Authorization** — useful for patients whose care requires insurance authorization and for PHR applications intended to help patients understand or follow the authorization process for medications, procedures, equipment, or other covered services.

- **Vital Records – Birth and Fetal Death Reporting** — useful for PHR applications supporting pregnancy, childbirth, newborn records, or family health histories where information associated with birth and vital-record reporting needs to be represented.




#### Recommended starting point

For a new implementation:

1. **Implement the EHI Export API** to establish the foundational exchange mechanism.
2. **Implement Record Life Cycle requirements** to establish how records are created, maintained, retained, and exchanged over time.
3. **Implement IPS (RECOMMENDED)** to provide a standardized clinical summary.
4. **Review the remaining rows in Table 4.1** and select the capabilities applicable to the application's intended use.
5. **Document the capabilities supported by the implementation**, so that users and interoperating systems can determine which portions of the PHR ecosystem the application implements.

The result is a progressive implementation model rather than an all-or-nothing conformance requirement. A simple application can implement a small, interoperable PHR; a comprehensive application can use the same foundation while progressively adding additional FHIR-based capabilities.
