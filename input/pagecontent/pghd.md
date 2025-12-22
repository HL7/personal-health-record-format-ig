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

![Relationship-b/w-Standards-from-Data-Perspective](relationship-bw-standards-from-data-perspective.png)

#### Comparison Table

| Category         | Apple HealthKit                              | Google Health Connect                        | Open mHealth                              | Kanta PHR (Finland)                          |
|------------------|---------------------------------------------|---------------------------------------------|-------------------------------------------|----------------------------------------------|
| Data Types       | 100+ (steps, HR, sleep…)                   | 40+ (steps, HR, sleep…)                    | JSON schema-based                        | FHIR-based                                   |
| Structure        | Class-based (e.g., HKSample)               | Class-based (e.g., Record)                 | JSON object                               | FHIR Resource                                |
| Unit Handling    | Value + unit object (explicit type: HKUnit)| Value + unit fields                         | Value + unit object                       | Value + unit object (FHIR Quantity)          |
| Metadata         | Common & per-type                          | Common & per-type                           | Standardized metadata schema              | FHIR elements                                 |
| Standardization  | Proprietary             | Proprietary         | IEEE 1752                            | FHIR, LOINC, SNOMED                           |

![Data Types of HealthKit](data-type-healthkit.png)

![Data Types of Haelth Connect](data-type-health-connect.png)

Most PGHD items in this guide are mapped to the FHIR Observation resource. Data types, units, and metadata are aligned as much as possible with existing FHIR profiles, and mappings to these major standards are considered for interoperability.

---

## Code Systems

Many PGHD data items are not yet fully covered by international code systems such as LOINC and SNOMED CT. Therefore, a proprietary (temporary) code system is currently used.

**The current code system serves as an interim solution and will be replaced once comprehensive coverage by international standards such as LOINC and SNOMED CT IPS is achieved.**

[PGHG Code Mapping Table](pghd-code-mapping.md)

---

## Mapping to FHIR

- **Observation:** Most PGHD data is represented as FHIR Observation resources.
- **Value Types:** Numerical, categorical, sampled, and compound data are mapped to appropriate FHIR elements (e.g., valueQuantity, valueCodeableConcept, valueSampledData, component).
- **Metadata:** Generation time, device information, and measurement context are mapped to FHIR elements such as effectiveDateTime, device, and extensions.

![Data Structure of HealthKit (e.g. bodyTemperature)](data-structure-of-healthkit.png)
![Data Structure of Health Connect (e.g. BodyTemperatureRecord)](data-structure-of-health-connect.png)
![Data Structure of Open mHealth (e.g. body_temperature)](data-structure-of-open-mhealth.png)
![Data Structure of Kanta PHR (e.g. Body temperature)](data-structre-of-kanta-phr.png)

![Common Data Structure in PHR Standards](common-data-structure-in-phr-standards.png)
![Basics of Mapping Common PHR Data Structure to FHIR](basics-of-mapping-common-phr-data-structure-to-fhir.png)

---

## Platform Integration Details

### Apple HealthKit Mapping

Detailed mapping of HealthKit types to FHIR Observations with LOINC codes:

| HealthKit Type | FHIR Resource | LOINC Code | Notes |
|----------------|---------------|------------|-------|
| HKQuantityTypeIdentifierStepCount | Observation | 55423-8 | Number of steps in 24 hour |
| HKQuantityTypeIdentifierHeartRate | Observation | 8867-4 | Heart rate |
| HKQuantityTypeIdentifierBloodPressureSystolic | Observation | 8480-6 | Systolic blood pressure |
| HKQuantityTypeIdentifierBloodPressureDiastolic | Observation | 8462-4 | Diastolic blood pressure |
| HKQuantityTypeIdentifierBodyMass | Observation | 29463-7 | Body weight |
| HKQuantityTypeIdentifierOxygenSaturation | Observation | 2708-6 | Oxygen saturation |
| HKCategoryTypeIdentifierSleepAnalysis | Observation | 93832-4 | Sleep duration |

Reference: [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)

### Google Health Connect Example

```json
{
  "resourceType": "Observation",
  "meta": {
    "source": "urn:google:health-connect"
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
      "code": "activity"
    }]
  }],
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "55423-8",
      "display": "Number of steps in 24 hour Measured"
    }]
  },
  "effectivePeriod": {
    "start": "2025-01-15T00:00:00Z",
    "end": "2025-01-15T23:59:59Z"
  },
  "valueQuantity": {
    "value": 8742,
    "unit": "steps",
    "system": "http://unitsofmeasure.org",
    "code": "{steps}"
  },
  "device": {
    "display": "Google Pixel Watch 2"
  }
}
```

---

## Physical Activity IG Alignment

The [Physical Activity IG](https://build.fhir.org/ig/HL7/physical-activity) provides standardized profiles for activity data. PHR systems incorporating fitness and activity data SHOULD align with these profiles:

- **PA Observation Activity Measure** - Daily/weekly activity totals
- **PA Observation Activity Group** - Grouped activity sessions
- **PA Goal** - Activity goals and targets
- **PA Care Plan** - Exercise prescriptions

---

## Device Resources

Wearable devices and connected health devices SHOULD be represented using FHIR Device resources:

```json
{
  "resourceType": "Device",
  "id": "fitbit-charge-5",
  "identifier": [{
    "system": "urn:fitbit:device-id",
    "value": "ABC123456"
  }],
  "manufacturer": "Fitbit",
  "deviceName": [{
    "name": "Charge 5",
    "type": "model-name"
  }],
  "type": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "706767009",
      "display": "Patient data recorder"
    }]
  },
  "patient": {
    "reference": "Patient/example"
  }
}
```

---

## Data Aggregation

Consumer devices often report high-frequency data. Systems SHOULD aggregate this data appropriately:

| Raw Data | Aggregation Strategy | Use Case |
|----------|---------------------|----------|
| Per-second heart rate | Hourly averages + daily min/max | Trend analysis |
| Per-step timestamps | Daily totals | Activity tracking |
| Per-minute sleep stages | Sleep session summary | Sleep quality assessment |
| Continuous glucose | 15-minute intervals | Glucose management |

---

## Data Quality Indicators

Consumer device data quality varies. Include quality metadata using extensions or meta.tag:

- Device-captured vs manually entered
- Validated vs unvalidated measurements
- Professional-grade vs consumer-grade devices
- Clinician-verified vs patient-reported

---

## References

- [Physical Activity IG](https://build.fhir.org/ig/HL7/physical-activity)
- [Patient Health Devices IG](http://hl7.org/fhir/uv/phd/)
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)
- [Google Health Connect](https://developer.android.com/health-and-fitness/guides/health-connect)

---
