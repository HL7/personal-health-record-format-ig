The purpose of this implementation guide is to help the reader implement a Patient Health Record (in a programming language of their choice).  The notion of a Patient Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient; and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).  The scope of this document does not attempt to prescribe how you, the implementor, ought to go about programming your software.  What it does provide, is guidance on how to successfully exchange data with other PHR and EMR apps.  In effect, it documents widely supported (and government recognized) data standards and file formats for importing/exporting data into your software.

### Expectations for this Implementation Guide

Readers are encouraged to think of this implementation guide as a marathon, not a sprint.  To further the analogy, the authors of this guide hope to help software implementor plan on whether they are competing in a 26 mile standard marathon, a 50 mile ultramarathon, or an Iron Man triathalon.  Similarly, implementing a complete PHR is no simple task, and in many situations may take upwards of a year of time or more to complete.  We hope to provide guidance that will help implementors strategically plan their implementations and avoid common stumbling blocks.

### What is a Personal Health Record?   

Personal Health Records are essentially the same as electronic medical records that hospitals keep; and are typically started when a patient receives copies of their medical chart from a hospital.  This data typically includes immunizations, medication lists, conditions, procedures, immunization records, and so forth.

![VennDiagram.png](VennDiagram.png){:width="100%"}    

There are two important distinctions however:  first, personal health records don't contain data specific to clinical workflow and hospital operations, such as inventory supplies or intermediary processing steps such as pre-authorization communication with an insurrer; and second, they may contain consumer or personal data that is outside the scope of the physician-patient relationship, such as over-the-counter medication receipts or gym/fitness data.  

### Relevant Law

- 21st Century Cures
- Medicare 
- CARES Act

### Purpose / Design Philosophy

The core of the Personal Health Record should be medical grade, and able to incorporate any medical record that you receive after a visit to the hospital; and which the patient can then carry from one healthcare provider to the next.  As such, a modern Personal Health Record needs to essentially be able to receive captured data from throughout the hospital.  Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychiatry.  All of it is relevent.  

### Use Cases  

This guide is particularly interested in the problem of collecting and aggregating medical records from multiple healthcare systems and devices into a coherent whole.  In the healthcare industry, these types of compiled records are known as `longitudinal` records.  

- *Longitudinal Health Records* - Assembly of records over a long time span; generally multiple decades (20 years or more), and possibly from different healthcare systems with different practices or standards of care.

John, now 65, has received care from five different healthcare systems since childhood. When diagnosed with a rare condition, his current physician needs to review his complete medical history. Through John's PHR, historical medical documents from paper-based systems are digitized via scanning applications, while digital records from various Electronic Health Record (EHR) systems are imported through standardized FHIR APIs. Legacy data from obsolete systems is extracted, transformed, and loaded into his PHR through integration engines. This comprehensive repository allows his physician to analyze decades of lab results, medication history, and clinical notes in a unified timeline view.

- *Longitudinal Studies* - Clinical studies that follow up on patient results after 20 or more years. Very important for pediatric studies.

Dr. Martinez is conducting research on childhood asthma treatments administered in the 1990s. Her research platform connects to participants' PHRs through secure research interfaces, allowing automated queries for specific data points while maintaining patient privacy. Participants use mobile study apps that synchronize with their PHRs to complete regular pulmonary function tests via Bluetooth-enabled spirometers. Historical paper records from the original study are digitized and tagged in the PHR with appropriate metadata. The PHR serves as both a data source and consent management tool, allowing participants to control which portions of their medical history are shared with researchers.

- *Snowbirds* - Many patients have more than one home location, and may spend time in different parts of the country on a seasonal basis. This leads to medical records that are fragmented.

Eleanor spends winters in Florida and summers in Michigan, receiving regular care for her diabetes in both locations. Her PHR serves as the central repository for health data from both healthcare networks, with bi-directional integration through FHIR-based exchange protocols. Her continuous glucose monitor and smart insulin pump upload data directly to her PHR via a smartphone app, regardless of her location. When she experiences an acute complication while in Florida, her temporary physician accesses her complete medication history and recent test results through a provider portal connected to her PHR, ensuring seamless care coordination between seasonal providers.

- *Symptom Tracking* - Symptoms of an illness can evolve as the condition improves or worsens, impacted by such things as climate or diet or circumstances of life.

Michael has been tracking his multiple sclerosis symptoms through a dedicated mobile app that synchronizes with his PHR. The app captures structured data on fatigue levels, mobility challenges, and cognitive symptoms, while also collecting environmental data from weather APIs and activity data from his smartwatch. His PHR correlates these inputs with medication administration times recorded by a smart pill dispenser. During quarterly appointments, his neurologist accesses this comprehensive dataset through an analytics dashboard connected to Michael's PHR, identifying seasonal patterns and stress-related flare-ups that inform personalized treatment adjustments.

- *Long COVID* - An example of an ongoing longitudinal study that has captured national and worldwide attention, as we continued to determine the long-term effects of COVID-19.

Sarah, who contracted COVID in 2020, participates in a multi-institution research registry that tracks her persistent symptoms. Her PHR integrates data from multiple sources: pulmonary function tests from hospital equipment, cardiology assessments from specialized clinics, cognitive evaluations from telemedicine sessions, and daily symptom tracking from her smartphone app. A secure FHIR-based research gateway allows her to share selected PHR data with the national Long COVID Registry while maintaining control over her privacy preferences. Researchers can then aggregate anonymized data across thousands of participants while Sarah's healthcare team maintains access to her individual comprehensive record for treatment decisions.

- *Multiple Chronic Conditions* - Not all medical conditions are reported to all healthcare providers. Conversely, specialists will report results for one area of medicine, which needs to be incorporate and reconciled with the patient's master record.

Robert manages hypertension, type 2 diabetes, and depression with three different specialists. His PHR serves as the integration hub for data from multiple provider systems. His home blood pressure cuff, glucometer, and medication adherence tracking devices all transmit data wirelessly to his PHR through a home health hub device. The PHR applies reconciliation algorithms to identify medication conflicts and consolidate problem lists from different specialists. When Robert is hospitalized for an acute kidney injury, emergency providers access his comprehensive health summary through a secure provider portal connected to his PHR, receiving alerts about potential medication interactions and viewing recent lab value trends from all specialists.

- *Differential Diagnoses* - Case presentation for rare diseases can require differential diagnosis, as clinicians generate hypotheses and tests for one condition after another to explain a set of symptoms.

After years of unexplained joint pain and fatigue, Lisa has seen rheumatologists, neurologists, and immunologists across three healthcare systems. Her PHR maintains a comprehensive timeline of symptoms, documented through a combination of provider notes, patient-reported outcomes from mobile questionnaires, and movement data from her fitness tracker. Imaging studies from various facilities are stored in the PHR's integrated imaging repository, accessible through DICOM viewers. Diagnostic algorithms analyze this longitudinal data to highlight patterns and correlations. Lisa's new specialist reviews this unified record through a clinical portal, enabling a comprehensive understanding of all previous workups and tests without unnecessary duplication.

- *Alternative Care* - Massage, Acupuncture, etc. - Patients may wish to track alternative modalities of healthcare that are not recognized or tracked by a healthcare provider or network.

David receives acupuncture and chiropractic care for chronic back pain alongside conventional medical treatments. His PHR includes specialized modules for documenting complementary therapies that may not be captured in traditional EHRs. His acupuncturist and chiropractor use dedicated provider portals to document treatments directly in his PHR, while David uses a mobile app to track pain levels and functional improvements after each session. This data flows into his consolidated health record, alongside conventional medical treatments. When David's primary physician accesses the PHR during appointments, they can view the complete care regimen and identify potential correlations between alternative therapies and changes in his conventional treatment needs.

- *Bring Your Own Device* - Patients may wish to utilize consumer medical devices for tracking their own health.

Amara uses a continuous glucose monitor and smart insulin pump to manage her type 1 diabetes. These devices connect to her smartphone via Bluetooth, with data automatically flowing into her PHR through a device integration hub. Dietary information from her nutrition tracking app and physical activity data from her sports watch are also synchronized to her PHR, providing context for glucose fluctuations. The PHR applies analytics to identify patterns and generates visualization dashboards. Amara's endocrinologist accesses this comprehensive dataset through a clinical portal during quarterly appointments, with the PHR highlighting significant trends and anomalies between visits. This integrated approach allows for more precise insulin dosage adjustments based on lifestyle factors.

- *Foster Care System* - Custody and care of foster children, especially when it crosses state lines, can be complicated; requiring detailed record keeping to align both medical and court proceedings.

Eight-year-old Jayden has been in three different foster homes across two states in the past two years. A specialized foster care PHR maintains his complete health record, with role-based access controls that adjust as his legal guardianship changes. Mobile immunization apps used at various clinics push vaccination records directly to his PHR, while developmental screening tools on tablets in different healthcare settings contribute structured assessment data. The PHR connects to state immunization registries and health information exchanges through secure APIs, automatically retrieving available records as Jayden moves across jurisdictions. Both his case worker and new pediatrician have appropriate access levels to review his complete health history, with the case worker focusing on required documentation for court proceedings.

- *Migrants/Immigrant*s - Patients that have immigrated will necessarily have fragmented records that exist in multiple locations or countries.

Mei recently immigrated from China and brought partial paper records translated into English. Her new primary care provider helps establish a PHR that incorporates these documents through OCR-enabled scanning, with machine translation assistance for any remaining untranslated sections. The PHR includes modules for reconciling international vaccination schedules and medication names that may differ from U.S. conventions. As Mei receives care in her new country, data from provider EHRs automatically flows into her PHR through FHIR interfaces. The PHR serves as the bridge between her previous care and her new healthcare relationships, with visualization tools that present her complete health timeline despite the fragmented sources.

- *Climate Refugees* - Patients that have been forced to relocate, due to fires, floods, and similar events, will likely have medical records in multiple clinics or hospitals.

The Garcia family evacuated during a major hurricane and relocated permanently to another state. Their daughter's pediatric specialty care for a congenital heart condition must now be transferred to a new healthcare system. The family's emergency evacuation kit included a secure digital card with critical health information that can be imported into their PHRs at their new location. Cloud-based PHR storage ensured their comprehensive records remained accessible despite physical displacement. The daughter's implanted cardiac monitor continues to transmit data to her PHR through cellular networks, maintaining continuity of monitoring despite the relocation. The PHR facilitates secure sharing of her complete surgical history and treatment protocol with the new cardiology team through standardized C-CDA and FHIR documents, ensuring a smooth transition without gaps in specialized care.

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
