This implementation guide includes several FHIR Logical Models that represent emerging patient-generated data domains not yet covered by standard FHIR resources. These models are published as StructureDefinitions with `kind = logical`, and are intended to inform future profiling work and facilitate discussion within the HL7 community.

### What Are Logical Models?

A [FHIR Logical Model](https://www.hl7.org/fhir/structuredefinition.html) is a StructureDefinition that defines a data structure independent of any particular FHIR resource. Unlike profiles (which constrain existing resources), logical models describe the shape of data that may not yet have a natural home in the FHIR resource catalog. They are useful for:

- Documenting data domains that patients and consumer devices capture, but which do not map cleanly to a single existing FHIR resource
- Providing a shared vocabulary for discussing these data structures within standards development
- Informing future resource proposals or extension design

### How Do These Models Connect to the IG?

The logical models in this IG represent data that patients commonly generate or collect outside of traditional clinical settings. While each model could theoretically be decomposed into existing FHIR resources (e.g., multiple Observation resources, Claim resources), doing so obscures the holistic nature of the data as patients experience it.

These models are **informational**. They are not required for conformance with this implementation guide. Implementers may choose to map these logical models to existing FHIR resources using Observation, Claim, QuestionnaireResponse, or other appropriate types.

### Models

#### Environmental Observation

Represents environmental conditions relevant to patient health: temperature, humidity, air quality, UV exposure, barometric pressure, altitude, noise levels, and pollen counts. These factors are increasingly captured by consumer weather stations, smartphone sensors, and wearable devices, and can be relevant for respiratory conditions, allergies, skin health, and general wellness.

**Potential FHIR mapping:** Multiple Observation resources with appropriate LOINC or SNOMED CT codes, grouped by an Observation with `hasMember` references.

#### Financial Receipt

Captures over-the-counter (OTC) health-related purchase receipts for expenses such as pharmacy items, medical supplies, copays, and wellness products. These transactions typically do not generate a formal insurance Claim resource, but are relevant for tracking out-of-pocket healthcare spending, HSA/FSA accounting, and understanding patient self-care patterns.

**Potential FHIR mapping:** Claim or ExplanationOfBenefit resources. For simpler OTC tracking, a QuestionnaireResponse or Basic resource with extensions.

#### Nutrient Outtake

Represents bodily elimination and excretion — the output counterpart to nutrient intake. Tracks urine output, stool characteristics, emesis, perspiration, and surgical drainage. Relevant for hydration monitoring, bowel health assessment, kidney function tracking, and post-surgical intake/output balance.

**Potential FHIR mapping:** Observation resources using LOINC codes for intake and output measurements (e.g., LOINC 9187-6 for urine output).

#### Social Media Usage

Captures social media and digital device usage patterns relevant to patient mental health and wellness. Includes screen time, active versus passive engagement, interaction counts, notification frequency, and self-reported sentiment. Particularly relevant for behavioral health, digital wellness programs, and adolescent health monitoring.

**Potential FHIR mapping:** Observation resources for quantitative measures (screen time, counts) and QuestionnaireResponse for self-reported sentiment assessments.
