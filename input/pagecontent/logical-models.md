> **These Logical Models are experimental.**  They are published to gather implementer feedback, are **not required for conformance** with this guide, and are expected to be removed from this guide or migrated into other specifications in future versions (for example, financial receipt modeling is being contributed to the Da Vinci Price Transparency work, and environmental sensor modeling is under discussion with the Devices work group).  Do not build load-bearing integrations against them.

This implementation guide includes several FHIR Logical Models that represent emerging patient-generated data domains not yet covered by standard FHIR resources. These models are published as StructureDefinitions with `kind = logical`, and are intended to inform future profiling work and facilitate discussion within the HL7 community.

### What Are Logical Models?

A [FHIR Logical Model](https://www.hl7.org/fhir/R4/structuredefinition.html) is a StructureDefinition that defines a data structure independent of any particular FHIR resource. Unlike profiles (which constrain existing resources), logical models describe the shape of data that may not yet have a natural home in the FHIR resource catalog. They are useful for:

- Documenting data domains that patients and consumer devices capture, but which do not map cleanly to a single existing FHIR resource
- Providing a shared vocabulary for discussing these data structures within standards development
- Informing future resource proposals or extension design

### How Do These Models Connect to the IG?

The logical models in this IG represent data that patients commonly generate or collect outside of traditional clinical settings. While each model could theoretically be decomposed into existing FHIR resources (e.g., multiple Observation resources, Claim resources), doing so obscures the holistic nature of the data as patients experience it.

These models are **informational**. They are not required for conformance with this implementation guide. Implementers may choose to map these logical models to existing FHIR resources using Observation, Claim, QuestionnaireResponse, or other appropriate types.

### Models

#### [Environmental Observation](./StructureDefinition-Environmental.html)  

Represents environmental conditions relevant to patient health: temperature, humidity, air quality, UV exposure, barometric pressure, altitude, noise levels, and pollen counts. These factors are increasingly captured by consumer weather stations, smartphone sensors, and wearable devices, and can be relevant for respiratory conditions, allergies, skin health, and general wellness.


#### [Financial Receipt](./StructureDefinition-FinancialReceipt.html)  

Captures over-the-counter (OTC) health-related purchase receipts for expenses such as pharmacy items, medical supplies, copays, and wellness products. These transactions typically do not generate a formal insurance Claim resource, but are relevant for tracking out-of-pocket healthcare spending, HSA/FSA accounting, and understanding patient self-care patterns.



### Social Media Data

Earlier drafts of this guide defined a `SocialMedia` logical model for social media posts.  That model has been removed: social media content — which round-tripped successfully between systems at the September 2026 Connectathon — is representable with existing FHIR resources, and net-new data structures belong in the core specification rather than this guide.  Use the following mappings:

| Social media concept | FHIR representation |
|----------------------|---------------------|
| The post itself (text, images, video) | [DocumentReference](https://www.hl7.org/fhir/R4/documentreference.html) with the content as an attachment; [Media](https://www.hl7.org/fhir/R4/media.html) for standalone images/video/audio |
| The act of posting or messaging | [Communication](https://www.hl7.org/fhir/R4/communication.html) (sender, recipients, payload, sent time) |
| Other people appearing in or party to the post | [RelatedPerson](https://www.hl7.org/fhir/R4/relatedperson.html) |
| Clinician interpretation of social-media-derived signals (e.g., mood, behavior patterns) | [ClinicalImpression](https://www.hl7.org/fhir/R4/clinicalimpression.html) referencing the source DocumentReferences |
| A curated collection of posts (e.g., a health journey timeline) | [Composition](https://www.hl7.org/fhir/R4/composition.html) with a section per theme or period |
| Where the content came from and when it was captured | [Provenance](https://www.hl7.org/fhir/R4/provenance.html) naming the platform as the source |

The example below represents an Instagram post with an attached photo, as captured into a PHR:

```json
{
  "resourceType": "DocumentReference",
  "status": "current",
  "type": {
    "text": "Social media post"
  },
  "category": [{
    "text": "patient-generated"
  }],
  "subject": { "reference": "Patient/example" },
  "date": "2026-07-04T18:22:00Z",
  "description": "Instagram post: first 5k walk since surgery",
  "content": [
    {
      "attachment": {
        "contentType": "text/markdown",
        "data": "Rmlyc3QgNWsgd2FsayBzaW5jZSBzdXJnZXJ5ISDwn46J",
        "title": "Post text"
      }
    },
    {
      "attachment": {
        "contentType": "image/jpeg",
        "url": "media/2026-07-04-finish-line.jpg",
        "title": "Finish line photo"
      }
    }
  ],
  "context": {
    "related": [{ "display": "https://www.instagram.com/p/example123/" }]
  }
}
```

A corresponding Provenance resource records the platform (`agent.who.display = "Instagram"`) and capture date, so that merge and filtering logic can distinguish social-media-sourced content from clinical content (see [Merging and Versioning](./longitudinal.html)).

