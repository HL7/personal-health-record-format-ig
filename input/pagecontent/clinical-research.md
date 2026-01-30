### Clinical Research and Real World Evidence

This page documents how Personal Health Record data can contribute to clinical research, real-world evidence generation, and patient safety monitoring, with particular alignment to the HL7 Vulcan Accelerator initiatives.

#### Overview

Personal Health Records offer unique value for clinical research because they:
- Capture patient-reported outcomes and experiences
- Include data from consumer devices not connected to clinical systems
- Span multiple healthcare providers and systems
- Reflect the patient's complete health journey
- Enable longitudinal observational studies

### Adverse Event Reporting

Adverse events in the context of a PHR may include:
- **Medication side effects**: Reactions to prescribed or over-the-counter drugs
- **Vaccine reactions**: Post-immunization adverse events
- **Medical device problems**: Issues with implants, wearables, or therapeutic devices
- **Procedure complications**: Unexpected outcomes from medical procedures
- **Healthcare-associated events**: Hospital-acquired infections, falls, etc.

#### FHIR Resources for Adverse Events

| Event Type | Primary Resource | Supporting Resources |
|------------|-----------------|---------------------|
| Medication reaction | AdverseEvent | MedicationStatement, Medication |
| Allergic reaction | AllergyIntolerance | Observation (symptoms) |
| Vaccine reaction | AdverseEvent | Immunization |
| Device problem | AdverseEvent | Device, DeviceUseStatement |

#### AdverseEvent Resource Example

```json
{
  "resourceType": "AdverseEvent",
  "id": "adverse-event-medication",
  "status": "completed",
  "actuality": "actual",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/adverse-event-category",
      "code": "medication-mishap",
      "display": "Medication Mishap"
    }]
  }],
  "subject": {
    "reference": "Patient/example-patient"
  },
  "date": "2025-01-10T14:30:00Z",
  "detected": "2025-01-10T16:00:00Z",
  "recordedDate": "2025-01-10T18:00:00Z",
  "seriousness": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
      "code": "non-serious",
      "display": "Non-serious"
    }]
  },
  "suspectEntity": [{
    "instance": {
      "reference": "MedicationStatement/statin-therapy"
    },
    "causality": [{
      "assessment": {
        "coding": [{
          "system": "http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess",
          "code": "probably-likely",
          "display": "Probably/Likely"
        }]
      }
    }]
  }],
  "description": "Patient reports muscle pain in legs starting 2 weeks after beginning statin therapy."
}
```

#### Patient-Reported vs Clinician-Recorded

Distinguish data provenance using the `recorder` and meta elements:

**Patient-reported:**
```json
{
  "resourceType": "AdverseEvent",
  "meta": {
    "source": "urn:phr:patient-reported"
  },
  "recorder": {
    "reference": "Patient/example-patient",
    "display": "Self-reported by patient"
  }
}
```

**Clinician-recorded:**
```json
{
  "meta": {
    "source": "urn:ehr:hospital-xyz"
  },
  "recorder": {
    "reference": "Practitioner/dr-smith"
  }
}
```

#### Vulcan Accelerator Alignment

The Vulcan Accelerator initiative promotes standardized real-world data collection. For adverse event reporting aligned with Vulcan:

- Use standardized terminology (MedDRA for adverse event terms)
- Include severity grading (CTCAE for oncology contexts)
- Document temporal relationships clearly
- Capture concomitant medications
- Enable consent-based research sharing

#### Regulatory Reporting

For serious adverse events, PHR systems may facilitate reporting to regulatory bodies:
- **FDA MedWatch** (United States)
- **PMDA** (Japan - 医薬品医療機器総合機構)
- **EudraVigilance** (European Union)

Note: PHR systems should not automatically submit regulatory reports; they should facilitate patient or provider submission.

### Real World Data Harmonization

Real World Data encompasses health data collected outside of traditional clinical trials, including:
- Electronic Health Records (EHR)
- Claims and billing data
- Patient registries
- **Personal Health Records (PHR)**
- Wearable devices and mobile health apps
- Social determinants of health data

#### Vulcan Accelerator Program

The HL7 Vulcan Accelerator works to harmonize standards for clinical research data. PHR implementations should consider alignment with:

| Vulcan Project | PHR Relevance |
|----------------|---------------|
| Real World Data | Patient-contributed data for observational studies |
| Adverse Events | Patient-reported side effects and reactions |
| Patient Registries | Longitudinal condition tracking |
| Electronic Data Capture | Structured questionnaire responses |

#### Data Quality Considerations

Patient-contributed data requires attention to quality:

**Provenance Tracking:**
```json
{
  "resourceType": "Provenance",
  "target": [{"reference": "Observation/bp-home-reading"}],
  "recorded": "2025-01-15T08:30:00Z",
  "agent": [{
    "type": {
      "coding": [{
        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code": "author"
      }]
    },
    "who": {
      "reference": "Patient/example"
    }
  }],
  "entity": [{
    "role": "source",
    "what": {
      "display": "Omron Blood Pressure Monitor Model HEM-7600T"
    }
  }]
}
```

**Data Quality Flags:**
- Device-captured vs manually entered
- Validated vs unvalidated measurements
- Professional vs consumer-grade devices
- Clinician-verified vs patient-reported

#### Consent for Research Use

PHR systems must implement consent management for research data sharing:

```json
{
  "resourceType": "Consent",
  "id": "research-consent",
  "status": "active",
  "scope": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentscope",
      "code": "research"
    }]
  },
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
      "code": "research"
    }]
  }],
  "patient": {
    "reference": "Patient/example"
  },
  "dateTime": "2025-01-01",
  "provision": {
    "type": "permit",
    "purpose": [{
      "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code": "HRESCH",
      "display": "Healthcare Research"
    }],
    "dataPeriod": {
      "start": "2020-01-01",
      "end": "2030-12-31"
    }
  }
}
```

#### De-identification Requirements

When contributing PHR data to research datasets:

| Data Element | Action |
|--------------|--------|
| Patient name | Remove |
| Dates | Shift or generalize |
| Geographic data | Generalize to region |
| Device identifiers | Remove or pseudonymize |
| Biometric data | Assess re-identification risk |

Reference: [HIPAA Safe Harbor](https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html)

#### CDISC Alignment

For clinical research integration, PHR data may need transformation to CDISC standards:

| FHIR Resource | CDISC Domain |
|---------------|--------------|
| Observation (vital signs) | VS (Vital Signs) |
| Observation (labs) | LB (Laboratory) |
| Condition | MH (Medical History) |
| MedicationStatement | CM (Concomitant Meds) |
| AdverseEvent | AE (Adverse Events) |
| Procedure | PR (Procedures) |

#### Patient Data Registries

PHRs can contribute to condition-specific registries:
- Oncology registries (mCODE alignment)
- Rare disease registries
- Post-market device surveillance
- Long COVID tracking
- Pregnancy and birth outcome registries

### References

- [Vulcan Accelerator](https://www.hl7.org/vulcan/)
- [FDA Real World Evidence](https://www.fda.gov/science-research/science-and-research-special-topics/real-world-evidence)
- [CDISC Standards](https://www.cdisc.org/)
- [FHIR AdverseEvent Resource](https://www.hl7.org/fhir/adverseevent.html)
- [MedDRA Terminology](https://www.meddra.org/)
- [FDA MedWatch](https://www.fda.gov/safety/medwatch-fda-safety-information-and-adverse-event-reporting-program)
