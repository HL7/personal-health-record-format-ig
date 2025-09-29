The purpose of this implementation guide is to help the reader implement a Patient Health Record (in a programming language of their choice).  The notion of a Patient Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient; and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).  The scope of this document does not attempt to prescribe how you, the implementor, ought to go about programming your software.  What it does provide, is guidance on how to successfully exchange data with other PHR and EMR apps.  In effect, it documents widely supported (and government recognized) data standards and file formats for importing/exporting data into your software.

### Expectations for this Implementation Guide

Readers are encouraged to think of this implementation guide as a marathon, not a sprint.  To further the analogy, the authors of this guide hope to help software implementor plan on whether they are competing in a 26 mile standard marathon, a 50 mile ultramarathon, or an Iron Man triathalon.  Similarly, implementing a complete PHR is no simple task, and in many situations may take upwards of a year of time or more to complete.  We hope to provide guidance that will help implementors strategically plan their implementations and avoid common stumbling blocks.

### What is a Personal Health Record?   

Nearly two decades ago, the Markle Foundation's Personal Health workgroup convened to discuss the state-of-the-art in managing personal health information. The workgroup defined the PHR as "an electronic application through which individuals can access, manage and share their health information, and that of others for whom they are authorized, in a private, secure, and confidential environment." Their early vision was that PHRs would enable individuals to access and coordinate comprehensive, lifelong health information and exchange necessary parts of it.

![VennDiagram.png](VennDiagram.png){:width="100%"}    

The core of the Personal Health Record should be medical grade, and able to incorporate any medical record that you receive after a visit to the hospital; and which the patient can then carry from one healthcare provider to the next. As such, a modern Personal Health Record needs to essentially be able to receive captured data from throughout the hospital. Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychiatry. All of it is relevent." to "The purpose of this specification is to provide standard mechanisms for a PHR to interoperate, facilitating sharing of information obtained by the PHR from healthcare encounters, personal documentation and measurement, and other sources.

The diagram above shows the intersection of the data collected by the patient, compared to the data collected by the hospital EHR or insurance systems.  

### Relevant Law

| **Country**     | **Initiative / Law**                             | **Type**                            | **FHIR/API Integration**                                                                                      |
|------------------|--------------------------------------------------|-------------------------------------|--------------------------------------------------------------------------------------------------------------|
| **Netherlands**  | MedMij Framework                                | Policy/Standard + Certification     | Yes (HL7 FHIR) – MedMij defines FHIR-based APIs; all certified PHRs use these standard APIs.                  |
|                  | PGO Personal Health Environments (apps)         | Private PHR Platforms (gov’t backed)| Yes – Must be MedMij-certified; patients access data via DigiD login and FHIR APIs.                           |
| **Australia**    | My Health Record (MyHR)                         | Government-run National PHR         | Partial – Transitioning from CDA to FHIR-based APIs via FHIR Gateway for consumer access.                     |
|                  | National Digital Health Strategy                | Policy/Strategy                     | Yes – Emphasizes HL7 FHIR alignment; publishes FHIR implementation guides.                                    |
| **Japan**        | MynaPortal Health Access                        | Government portal & APIs            | Yes – APIs link MynaPortal with private PHRs; using FHIR for new infrastructure.                              |
|                  | Medical DX/Data Health Plans                    | National Policy                     | Yes – Standardizing EMR data and enabling patient access; includes SMART Health Cards (FHIR).                 |
|                  | Personal Information Protection Commission      | National Law                        | Not specifically.  Only specifies handling of personal data and patient data ownership.                       |
|                  | Act on the Protection of Personal Information   | National Law                        | Not specifically.  Only specifies handling of personal data and patient data ownership.                       |
| **United States**| 21st Century Cures Act & ONC/CMS Rules          | Federal Laws/Regulations            | Yes – Mandates HL7 FHIR APIs (US Core profiles); SMART on FHIR widely implemented.                            |
|                  | Blue Button 2.0 / Apple Health Records          | Government & Private Platforms      | Yes – FHIR-based APIs for claims and provider data; app ecosystem supports FHIR APIs.                         |
| **Canada**       | Connected Care Act (Bill C-72, 2024)            | Proposed Federal Law                | Yes (Planned) – Would mandate interoperable systems; aligns with Pan-Canadian FHIR specs.                     |
|                  | Provincial Portals / Pan-Canadian FHIR Profiles | Patient portals / Standards         | Partial – Web portals exist; FHIR-based standards in adoption phase.                                          |
| **UK (England)** | NHS App & GP Record Access                      | NHS-operated Digital Services       | Yes – NHS APIs (e.g., GP Connect) use FHIR; patients access data via NHS App.                                 |
|                  | CareConnect FHIR Profiles / Patients Know Best  | National Profiles / Private PHR     | Yes – Profiles define FHIR structures; private apps integrate via NHS APIs.                                   |
| **Germany**      | Patient Data Protection Act (PDSG) / ePA        | National Law & PHR Platform         | Partial – Currently uses CDA/IHE XDS; migrating to HL7 FHIR (ePA 2.0, Basisprofil DE).                        |
| **Finland**      | Kanta PHR                                       | Government PHR platform             | Yes – Fully HL7 FHIR-based with open APIs; apps write to/read from PHR using Finnish FHIR profiles.           |
| **Taiwan**       | My Health Bank                                  | National PHR Portal (NHI)           | Partial – APIs/SDK provided; transitioning toward FHIR from legacy HL7 standards.                             |
| **India**        | Ayushman Bharat Digital Mission (ABDM)         | National Health IT Framework        | Yes – HL7 FHIR adopted as primary exchange standard; personal consent-based PHR model.                        |

### Purpose / Design Philosophy

The core of the Personal Health Record should be medical grade, and able to incorporate any medical record that you receive after a visit to the hospital; and which the patient can then carry from one healthcare provider to the next.  As such, a modern Personal Health Record needs to essentially be able to receive captured data from throughout the hospital.  Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychiatry.  All of it is relevent.  

### Use Cases  

This guide is particularly interested in the problem of collecting and aggregating medical records from multiple healthcare systems and devices into a coherent whole.  In the healthcare industry, these types of compiled records are known as `longitudinal` records.  

- *Longitudinal Health Records* - Assembly of records over a long time span; generally multiple decades (20 years or more), and possibly from different healthcare systems with different practices or standards of care.

- *Longitudinal Studies* - Clinical studies that follow up on patient results after 20 or more years. Very important for pediatric studies.

- *Snowbirds* - Many patients have more than one home location, and may spend time in different parts of the country on a seasonal basis. This leads to medical records that are fragmented.

- *Symptom Tracking* - Symptoms of an illness can evolve as the condition improves or worsens, impacted by such things as climate or diet or circumstances of life.

- *Long COVID* - An example of an ongoing longitudinal study that has captured national and worldwide attention, as we continued to determine the long-term effects of COVID-19.

- *Multiple Chronic Conditions* - Not all medical conditions are reported to all healthcare providers. Conversely, specialists will report results for one area of medicine, which needs to be incorporate and reconciled with the patient's master record.

- *Differential Diagnoses* - Case presentation for rare diseases can require differential diagnosis, as clinicians generate hypotheses and tests for one condition after another to explain a set of symptoms.

- *Alternative Care* - Massage, Acupuncture, etc. - Patients may wish to track alternative modalities of healthcare that are not recognized or tracked by a healthcare provider or network.

- *Bring Your Own Device* - Patients may wish to utilize consumer medical devices for tracking their own health.

- *Foster Care System* - Custody and care of foster children, especially when it crosses state lines, can be complicated; requiring detailed record keeping to align both medical and court proceedings.

- *Migrants/Immigrant*s - Patients that have immigrated will necessarily have fragmented records that exist in multiple locations or countries.

- *Climate Refugees* - Patients that have been forced to relocate, due to fires, floods, and similar events, will likely have medical records in multiple clinics or hospitals.

### Acknowledgements  

- Jan Oldenburg, Patient Empowerment Workgroup
- Dr. Neelima Karipineni, MITRE
- Salim K Semy, MITRE  
- Dave Carlson, Clinical Cloud Solutions
- Savannah Mueller, EMI Advisors

### References  

- [Patient Health Record - System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)  
- [Personal Health Records Software for Consumers](https://www.medicalrecords.com/personal-health-records)    
- [Best Electronic Health Records software of 2022](https://www.techradar.com/best/best-electronic-health-record-ehr-software)  
- [Who Owns Medical Records: 50 State Comparison](http://www.healthinfolaw.org/comparative-analysis/who-owns-medical-records-50-state-comparison)  
- [Centers for Medicare Services - PHR Pilots](https://www.cms.gov/Medicare/E-Health/PerHealthRecords/PHR_Pilots)  
- [Implementing High Quality Primary Care](https://www.nationalacademies.org/our-work/implementing-high-quality-primary-care)  
- [How to Export Facebook Data](https://blog.coupler.io/how-to-export-facebook-data/)
- [Human API - Getting Started](https://reference.humanapi.co/reference/getting-started)
- [Summary of Responses to an Industry RFI Regarding a Role for CMS with Personal Health Records](https://www.cms.gov/Medicare/E-Health/PerHealthRecords/Downloads/SummaryofPersonalHealthRecord.pdf)     
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)

### License 
Copyright (c) 2021+ Health Level Seven International and MITRE.org.   
Published under the Creative Commons "Attribution 4.0 International" (CC BY 4.0) License

#### Dependencies
{% include dependency-table.xhtml %}

#### Globals
{% include globals-table.xhtml %}

#### Cross Version Analysis
{% include cross-version-analysis.xhtml %}

#### IP Statements
{% include ip-statements.xhtml %} 
