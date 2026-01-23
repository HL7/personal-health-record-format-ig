# Patient Generated Health Data (PGHD)

## Introduction

Patient Generated Health Data (PGHD) refers to health-related data created, recorded, or gathered by patients or their caregivers, outside of clinical settings. This includes daily activity logs, self-measured vital signs, dietary records, symptom diaries, and more. PGHD complements Electronic Health Records (EHR) by providing a more holistic view of a patient’s health, especially between clinical visits.

---

## Scope

This guide describes the principles and best practices for representing and exchanging PGHD using HL7 FHIR. It is intended for implementers of personal health record (PHR) systems, mobile health apps, and any system that collects or utilizes patient-generated data.

---

## Use Cases

- **Chronic Disease Management:** Patients record daily blood pressure, glucose, or weight at home and share with clinicians.
- **Wellness Tracking:** Individuals use wearables or apps to track steps, sleep, or nutrition.
- **Symptom Monitoring:** Patients log symptoms or side effects between visits.
- **Remote Patient Monitoring:** Devices automatically transmit vital signs to care teams.

---

## Data Model

PGHD covers a wide range of data types, including but not limited to:

- Vital Signs (e.g., body temperature, blood pressure, heart rate)
- Activity (e.g., step count, exercise duration, calories burned)
- Nutrition (e.g., calorie intake, nutrient consumption)
- Sleep (e.g., sleep duration, sleep quality)
- Symptoms/Condition (e.g., pain level, mood, self-reported symptoms)

### Relationship with Major PGHD Standards

PGHD data models are influenced by several major standards and frameworks:

- **Apple HealthKit:**  
  Provides a class-based data structure (e.g., HKSample, HKQuantitySample) for health and fitness data on iOS devices. Each data type (steps, heart rate, sleep, etc.) is represented as a class with associated metadata and units.

- **Google Health Connect:**  
  Offers a similar class-based approach for Android, with records for each data type (e.g., ActiveCaloriesBurnedRecord, BasalBodyTemperatureRecord). Units and metadata are explicitly defined for each record.

- **Open mHealth:**  
  Defines JSON schemas for each data type, focusing on interoperability and open standards (IEEE1752). Data values and units are typically contained within the same object.

- **Kanta PHR (Finland):**  
  Uses FHIR-based resources for personal health data, mapping each data type to FHIR Observation or related resources. Codes and units are standardized using LOINC, SNOMED CT, and UCUM where possible.

![Relationship-b/w-Standards-from-Data-Perspective](pghd/relationship-bw-standards-from-data-perspective.png){: width="70%"}

#### Comparison Table

| Category         | Apple HealthKit                              | Google Health Connect                        | Open mHealth                              | Kanta PHR (Finland)                          |
|------------------|---------------------------------------------|---------------------------------------------|-------------------------------------------|----------------------------------------------|
| Data Types       | 100+ (steps, HR, sleep…)                   | 40+ (steps, HR, sleep…)                    | JSON schema-based                        | FHIR-based                                   |
| Structure        | Class-based (e.g., HKSample)               | Class-based (e.g., Record)                 | JSON object                               | FHIR Resource                                |
| Unit Handling    | Value + unit object (explicit type: HKUnit)| Value + unit fields                         | Value + unit object                       | Value + unit object (FHIR Quantity)          |
| Metadata         | Common & per-type                          | Common & per-type                           | Standardized metadata schema              | FHIR elements                                 |
| Standardization  | Proprietary             | Proprietary         | IEEE 1752                            | FHIR, LOINC, SNOMED                           |

![Data Types of HealthKit](pghd/data-type-healthkit.png){: width="70%"}

![Data Types of Haelth Connect](pghd/data-type-health-connect.png){: width="70%"}

Most PGHD items in this guide are mapped to the FHIR Observation resource. Data types, units, and metadata are aligned as much as possible with existing FHIR profiles, and mappings to these major standards are considered for interoperability.

---

## Code Systems

Many PGHD data items are not yet fully covered by international code systems such as LOINC and SNOMED CT. Therefore, a proprietary (temporary) code system is currently used.

**The current code system serves as an interim solution and will be replaced once comprehensive coverage by international standards such as LOINC and SNOMED CT IPS is achieved.**

[PGHG Code Mapping Table](pghd-code-mapping.html)

---

## Mapping to FHIR

- **Observation:** Most PGHD data is represented as FHIR Observation resources.
- **Value Types:** Numerical, categorical, sampled, and compound data are mapped to appropriate FHIR elements (e.g., valueQuantity, valueCodeableConcept, valueSampledData, component).
- **Metadata:** Generation time, device information, and measurement context are mapped to FHIR elements such as effectiveDateTime, device, and extensions.

![Data Structure of HealthKit (e.g. bodyTemperature)](pghd/data-structure-of-healthkit.png){: width="70%"}
![Data Structure of Health Connect (e.g. BodyTemperatureRecord)](pghd/data-structure-of-health-connect.png){: width="70%"}
![Data Structure of Open mHealth (e.g. body_temperature)](pghd/data-structure-of-open-mhealth.png){: width="70%"}
![Data Structure of Kanta PHR (e.g. Body temperature)](pghd/data-structre-of-kanta-phr.png){: width="70%"}

![Common Data Structure in PHR Standards](pghd/common-data-structure-in-phr-standards.png){: width="70%"}
![Basics of Mapping Common PHR Data Structure to FHIR](pghd/basics-of-mapping-common-phr-data-structure-to-fhir.png){: width="70%"}

---
