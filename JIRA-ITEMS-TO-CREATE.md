# JIRA Items To Create — Post-WGM Sprint (Sept 2026)

> Paste-ready ticket text for the Sept 2026 Connectathon / WGM changes.
> Workflow: changes are **implemented first** on the `post-wgm-sprint` branch; tickets are
> logged from the actual diffs, with branch preview links; then tickets are grouped into
> **block votes** so the committee approves larger revisions in one motion instead of
> nitpicking details. Strategy: move forward now, revert the 5–10% that doesn't survive
> review later.
>
> Fill in `FHIR-_____` as tickets are created, then mirror into `JIRA.md`.
> Preview root once pushed: `https://build.fhir.org/ig/HL7/personal-health-record-format-ig/branches/post-wgm-sprint/`

## Block Vote Summary

| Block | Theme | Tickets | Existing tickets resolved by this block |
|-------|-------|---------|------------------------------------------|
| BV-1 | Patient Summary realignment (IPS) | 2 new | FHIR-53517 |
| BV-2 | File format security simplification | 1 new | FHIR-50750, FHIR-49072, FHIR-50763 |
| BV-3 | API conformance & operations | 5 new + 2 pre-existing (FHIR-59300, FHIR-59303) | FHIR-50761 |
| BV-4 | Logical models disposition | 2 new | partially FHIR-50765, FHIR-49258 |
| BV-5 | Jurisdictional guidance / US realm | 2 new | framework for FHIR-50738 |
| BV-6 | PGHD visibility & claims data | 2 new | — |
| BV-7 | Merging & patient identity | 2 new | FHIR-50739 |
| BV-8 | Exchange object & minimum metadata | 4 new | complements BV-3; sharpens conformance model |
| BV-9 | IG narrative & architecture | 2 new | — |

---

## BV-1 — Patient Summary Realignment

### Ticket 1.1 [FHIR-59576](https://jira.hl7.org/browse/FHIR-59576)
- **Summary:** Replace IPS-vs-PHR comparison with "IPS as the PHR patient summary" guidance
- **Type:** Change Request | **Pages:** recordkeeping.html
- **Related:** Resolves direction of FHIR-53517 (IPS harmonization)
- **Description:**
The File Formats page contains a comparison table contrasting IPS and PHR as if they were competing formats. Per the Sept 2026 WGM discussion: a PHR requires a patient summary, and this IG adopts the International Patient Summary as that summary, since it already exists and is widely implemented. This change removes the comparison table and replaces it with guidance on using the IPS Composition as the summary layer of a PHR, retaining the existing export/import guidance. Implemented on branch `post-wgm-sprint`.

### Ticket 1.2 `FHIR-_____`
- **Summary:** Add PHR-S Functional Model to IPS section mapping
- **Type:** Change Request | **Pages:** functionality.html
- **Description:** 
The Functional Model page maps PHR-S FM functions to FHIR resources but not to the International Patient Summary. Since the IG adopts IPS as its patient summary, add a mapping of PHR-S FM functions to IPS Composition sections, indicating which functions are satisfiable by an IPS alone versus a full PHR.
- **Status note:** NOT in the low-hanging-fruit sprint — mapping table still being drafted.

---

## BV-2 — File Format Security Simplification

### Ticket 2.1 [FHIR-59577](https://jira.hl7.org/browse/FHIR-59577)
- **Summary:** Remove .sphr file-level encryption/signing; add drive-level encryption guidance
- **Type:** Change Request | **Pages:** recordkeeping.html, datastorage.html, security.html
- **Related:** Resolves FHIR-50750 (security page is a shell), FHIR-49072 (security section
  incomplete), FHIR-50763 (encrypted-file wording)
- **Description:** 

Per Sept 2026 WGM discussion, the IG no longer defines its own file-level encryption and signing scheme for `.sphr` files (passphrase/ES256/JWS/X.509). File formats defining bespoke crypto create key-management burdens no consumer PHR app has implemented, and Sept 2026 Connectathon testing (six systems) exercised none of it. The Security page now provides concrete guidance instead: protect data at rest with OS/volume encryption (FileVault, BitLocker, LUKS, mobile file-based encryption) and data in transit with TLS or SMART Health Links (which carries its own A256GCM encryption). `.sphr` files are plain zip archives and MUST NOT be assumed self-protecting. Implemented on branch `post-wgm-sprint`.
- **Resolution comments to post:**
  - FHIR-50750 / FHIR-49072: "Security page rewritten with concrete at-rest/in-transit
    guidance; no longer a shell. See [ticket 2.1]."
  - FHIR-50763: "Encrypted-file wording removed along with the file-level encryption scheme."

---

## BV-3 — API Conformance & Operations

### Ticket 3.1 [FHIR-59578](https://jira.hl7.org/browse/FHIR-59578)
- **Summary:** Add normative MUST/SHOULD conformance language to PHR export/import APIs
- **Type:** Change Request | **Pages:** api.html
- **Related:** Also applies FHIR-50761 endpoint wording fix
- **Description:**
  > The API page described `$phr-export`/`$import` permissively ("systems MAY"). Based on
  > Sept 2026 Connectathon testing across six systems (Life Library, FlexPa, Chronicle
  > Workstation, Android HealthConnect, Apple HealthKit, Epic Sandbox), add normative
  > language: servers MUST support `?outputFormat`; MUST support FHIR Bundle output for
  > small exports; SHOULD support NDJSON for large exports; clients MUST accept both.
  > CapabilityStatement wording updated per FHIR-50761.

### Ticket 3.2 [FHIR-59579](https://jira.hl7.org/browse/FHIR-59579)
- **Summary:** Specify NDJSON line discipline (one minified resource per line, no wrapping)
- **Type:** Technical Correction | **Pages:** api.html
- **Description:**
  > At the Sept 2026 Connectathon, systems disagreed on whether exported NDJSON may be
  > pretty-printed or word-wrapped. Add explicit rules matching Bulk Data: one minified
  > JSON resource per line, newline-terminated, no wrapping; consumers tolerate trailing
  > newlines.

### Ticket 3.3 [FHIR-59300](https://jira.hl7.org/browse/FHIR-59300) *(pre-existing, filed 2026-09-20; retitle to match keep-`$phr-export` decision)*
- **Summary:** Define $phr-export/$phr-import OperationDefinitions and document relationship
  to $ehi-export, Patient/$everything, and Bulk Data $export
- **Type:** Change Request | **Pages:** api.html, new OperationDefinition artifacts
- **Description:**
  > The CapabilityStatement example references `OperationDefinition/phr-export` and
  > `phr-import` canonicals that the IG never defines. Sept 2026 Connectathon testing showed
  > EHI Export working across systems while our operation remained conceptual. Add formal
  > OperationDefinition resources, reconcile parameters with R5 Patient/$everything
  > (`_since`, `_type`), and add a section positioning $phr-export against $ehi-export,
  > Patient/$everything, and Bulk Data $export. Decision: keep the `$phr-export` name and
  > provide a mapping, rather than renaming to `$ehi-export` (avoids collision with
  > existing EHI Export semantics).

### Ticket 3.4 [FHIR-59303](https://jira.hl7.org/browse/FHIR-59303) *(pre-existing, filed 2026-09-20)*
- **Summary:** Document asynchronous $import pattern with back pressure (202 + polling, 429/Retry-After)
- **Type:** Change Request | **Pages:** api.html
- **Description:**
  > Importing a full PHR can be large; a synchronous POST $import risks timeouts and gives
  > servers no flow control. Document the FHIR async request pattern for imports
  > (202 Accepted + Content-Location polling), 429/Retry-After for back pressure, and
  > alignment with the Bulk Data $submit/import work, while keeping synchronous import for
  > small Bundles.

### Ticket 3.5 [FHIR-59580](https://jira.hl7.org/browse/FHIR-59580)
- **Summary:** Add guidance on chained/dependent operations and reference ordering during import
- **Type:** Change Request | **Pages:** api.html
- **Description:**
  > Connectathon testing surfaced operation-sequencing questions: what order do
  > export/validate/import run in, and how do servers handle resources that reference each
  > other when NDJSON provides no ordering guarantee? Add an "Operation sequencing" section
  > covering the recommended pipeline and forward-reference handling (two-pass or deferred
  > resolution).

### Ticket 3.6 [FHIR-59581](https://jira.hl7.org/browse/FHIR-59581)
- **Summary:** Add "Optional Companion Specifications" table to Conformance page
- **Type:** Change Request | **Pages:** conformance.html
- **Description:**
Implementers ask which adjacent specifications (Bulk Data, IHE export profiles, Patient/$everything, EHI Export, SMART Health Links) are required. Add a conformance table marking each OPTIONAL with guidance on when to use it.

### Ticket 3.7 [FHIR-59582](https://jira.hl7.org/browse/FHIR-59582)
- **Summary:** Add validation best-practices section with multi-schema guidance
- **Type:** Change Request | **Pages:** conformance.html
- **Description:**

A PHR is inherently multi-schema: records accumulate across FHIR versions and IG releases over decades (R4/R4B/R5, US Core 3–8, IPS 1.x). The guide mentioned validation only in passing. Add a section covering export-side and import-side validation, per-resource schema/profile selection via meta.profile, and quarantine-not-reject handling for historical records that fail current-profile validation. Raised at the Sept 2026 Connectathon.

---

## BV-4 — Logical Models Disposition

### Ticket 4.1 [FHIR-59583](https://jira.hl7.org/browse/FHIR-59583)
- **Summary:** Replace SocialMedia logical model with core-resource guidance (Media,
  Communication, RelatedPerson, ClinicalImpression, Composition)
- **Type:** Change Request | **Pages:** logical-models.html
- **Related:** Partial response to FHIR-50765 (why publish experimental models)
- **Description:** 
Per Sept 2026 WGM, net-new logical models don't belong in this IG. Social media content — successfully round-tripped at the Sept 2026 Connectathon — is representable with existing resources. Remove the SocialMedia logical model and add guidance mapping post content, participants, and clinical interpretation onto Media/DocumentReference, Communication, RelatedPerson, ClinicalImpression, and Composition.

### Ticket 4.4 [FHIR-59584](https://jira.hl7.org/browse/FHIR-59584)
- **Summary:** Mark Logical Models page and artifacts as experimental
- **Type:** Change Request | **Pages:** logical-models.html
- **Related:** FHIR-50765, FHIR-49258
- **Description:** 

Ballot feedback (FHIR-50765, FHIR-49258) asked why experimental logical models are published and how they connect to the IG. Add an explicit experimental notice to the Logical Models page and set experimental=true on remaining models, stating they are feedback-gathering artifacts not required for conformance, expected to be removed or migrated to other specifications.

### Deferred (not in this sprint — gated on handoffs)
- **4.2 FinancialReceipt → DaVinci Price Transparency** (remove after handoff package
  delivered to Vanessa/Corey)
- **4.3 Environmental → Personal Health Devices WG** (destination unconfirmed)

---

## BV-5 — Jurisdictional Guidance / US Realm

### Ticket 5.1 [FHIR-59585](https://jira.hl7.org/browse/FHIR-59585)
- **Summary:** Add jurisdictional-variation and records-preservation notice (executive
  orders, sex/race/ethnicity modeling deferred to regional guidance)
- **Type:** Change Request | **Pages:** index.html (Relevant Law), datamodel.html
- **Related:** Provides disposition framework for FHIR-50738 (Gender Identity / EO 14168)
- **Description:**

Per Sept 2026 WGM: the IG takes a library-science position — it specifies faithful preservation and exchange of records, not demographic modeling. Add notices that (1) executive orders and regulations may change requirements faster than ballot cycles, (2) record keepers may be legally obligated to maintain historic records as written, (3) data from external jurisdictions may model sex, race, and ethnicity differently, and systems creating new records should consult current regional guidance.

- **Resolution comment for FHIR-50738:** "The IG now explicitly defers demographic modeling to regional jurisdiction guidance and takes a records-preservation (library science) position for historic data. See datamodel.html jurisdictional notice."

### Ticket 5.2 [FHIR-59586](https://jira.hl7.org/browse/FHIR-59586)
- **Summary:** Add military service member / veteran use case
- **Type:** Change Request | **Pages:** usecases.html
- **Description:** 

Service members are a canonical PHR population: frequent provider transitions (military treatment facilities, VA, civilian network), deployment health data captured offline, and lifelong benefit adjudication depending on complete records. Add a use case describing PHR usage across enlistment, deployment, separation, and veteran care, referencing the offline/merge capabilities of the Merging and Versioning page.

---

## BV-6 — PGHD Visibility & Claims Data

### Ticket 6.1 [FHIR-59301](https://jira.hl7.org/browse/FHIR-59301) *(pre-existing, filed 2026-09-20)*
- **Summary:** Surface PGHD code mapping and reconciliation on the home page and top-level menu
- **Type:** Change Request | **Pages:** index.html, menu (sushi-config)
- **Description:**
  > The PGHD code mapping work (the ConceptMap crosswalk of 400+ device/app codes to
  > LOINC/SNOMED) is a core contribution of this IG but is buried three levels deep in the
  > navigation. Add a summary section with links on the home page and promote PGHD in the
  > menu.

### Ticket 6.3 [FHIR-59587](https://jira.hl7.org/browse/FHIR-59587)
- **Summary:** Add Blue Button 2.0 / CARIN BB claims import guidance
- **Type:** Change Request | **Pages:** datamodel.html, recordkeeping.html
- **Description:**

  > Claims and coverage data round out a PHR's financial picture. Add guidance for importing
  > CMS Blue Button 2.0 (Medicare) and CARIN BB (commercial payer)
  > ExplanationOfBenefit/Coverage resources, including provenance tagging of payer-sourced
  > records.

### Deferred (needs confirmation)
- **6.2 PGHD internal codes for demographics-free records** — interpretation of the
  Connectathon note needs confirmation before scoping codes.

---

## BV-7 — Merging & Patient Identity

### Ticket 7.1 [FHIR-59588](https://jira.hl7.org/browse/FHIR-59588)
- **Summary:** Retitle Longitudinal Records page to "Merging and Versioning"; remove
  record-lifecycle framing
- **Type:** Change Request | **Pages:** longitudinal.html
- **Related:** Resolves FHIR-50739 objection (lifecycle overlaps PHR-S FM / EHR WG IG)
- **Description:**
  > The page's menu label is already "Merging and Versioning" but content still presents as
  > "Record Lifecycle Operations", which FHIR-50739 correctly notes overlaps the PHR-S
  > Functional Model and the EHR WG lifecycle IG. Retitle and reframe the page around its
  > real content — merge strategies, versioning, deduplication, conflict resolution — and
  > drop lifecycle claims.

### Ticket 7.2 [FHIR-59589](https://jira.hl7.org/browse/FHIR-59589)
- **Summary:** Add patient identity linking guidance for multi-source aggregation
- **Type:** Change Request | **Pages:** longitudinal.html
- **Description:**
  > Sept 2026 Connectathon testing with Flexpa surfaced the core aggregation problem: every
  > source system emits its own Patient resource. Add guidance on Patient.link
  > (refer/replaced-by), the Person resource for cross-source identity, $match for
  > probabilistic matching, and preserving source Patient resources with Provenance instead
  > of destructive merges.

---

## BV-8 — Exchange Object & Minimum Metadata

> Source: post-WGM email threads, Sept 22–23 2026 (Hisashi Osanai, with Rachel Richesson,
> Virginia Lorenzi, Abbie Watson, Sarah; cc Hirotaka Furuya, Yusuke Sarukura).
> **Status: NOT yet implemented on `post-wgm-sprint`** — these tickets capture a design
> discussion that needs WG input before implementation. Central question: *"What is the
> minimum metadata required to make PHR exchange interoperable, and what must an
> implementer support to claim conformance?"*

### Ticket 8.1 `FHIR-_____`
- **Summary:** Define the PHR Exchange Object: separate the Exchange API, serialization/
  packaging, and exchange metadata into explicit layers
- **Type:** Change Request | **Pages:** api.html, recordkeeping.html, conformance.html
- **Description:**
  > The IG defines Import/Export APIs and serialization/packaging mechanisms (NDJSON,
  > `.phr`/`.sphr`) but never names *what is being exchanged*. APIs and serialization
  > formats alone do not guarantee that a receiving system can reconstruct and understand
  > the same longitudinal record. Add an explicit three-layer exchange model:
  > (1) the **Exchange API** ($phr-export/$phr-import), (2) the **serialization and
  > packaging format** (NDJSON, `.phr`, `.sphr`), and (3) the **exchange metadata**
  > required to understand the exchanged content. Name the unit of exchange (the "PHR
  > Exchange Object") and describe how the three layers compose, so each layer can evolve
  > and be conformance-tested independently.

### Ticket 8.2 `FHIR-_____`
- **Summary:** Define the minimum metadata set required for interoperable PHR exchange
- **Type:** Change Request | **Pages:** recordkeeping.html (Meta Data section), conformance.html
- **Description:**
  > A PHR may contain many content types (IPS content, PGHD, PDFs, images,
  > patient-authored information). For a receiving system to reconstruct the same
  > longitudinal record, it must understand at minimum: what the content represents,
  > which individual it belongs to, when it was created/collected, where it originated,
  > which specification or profile applies, and minimal relationships between content
  > items. Rather than defining a complete PHR information model (content types will keep
  > evolving), define the **minimum metadata set** and map each element to its FHIR
  > carrier. Proposed starting point:
  >
  > | Metadata element | FHIR carrier |
  > |---|---|
  > | Patient/subject | `Patient` resource; `Composition.subject`; `Bundle` subject refs |
  > | Content type | resource type; `DocumentReference.type`/`category` (LOINC); `Composition.section.code` |
  > | Source/origin | `meta.source`; `Provenance.agent`/`entity`; `DocumentReference.custodian` |
  > | Created/collected date | resource date elements; `Provenance.recorded`; `meta.lastUpdated` |
  > | Applicable specification/profile | `meta.profile`; FHIR version in package manifest |
  > | Relationships between items | `Composition.section.entry`; `DocumentReference.relatesTo`; `Provenance.target`; `List` |
  >
  > Mark each element REQUIRED or RECOMMENDED for exchange, and specify receiver behavior
  > when metadata is absent (quarantine-not-reject, consistent with ticket 3.7).

### Ticket 8.3 `FHIR-_____`
- **Summary:** Separate conformance requirements from implementation approaches; add a
  "Claiming Conformance" section
- **Type:** Change Request | **Pages:** conformance.html, api.html
- **Description:**
  > The IG does not currently communicate which elements are mandatory conformance
  > requirements and which are implementation approaches used to realize them. The PGHD
  > portion is relatively clear (profiles and content definitions are specified), but for
  > the broader PHR exchange use case an implementer cannot determine what must be
  > supported to claim conformance. Add a "Claiming Conformance" section that
  > (1) enumerates the mandatory capabilities — likely the Import/Export APIs, the
  > exchange format, and the minimum metadata set from ticket 8.2; (2) explicitly labels
  > content-organization mechanisms (Composition cover page, IPS table of contents) as
  > either required metadata carriers or optional implementation approaches — a WG
  > decision this ticket forces; and (3) states the conformance claim in testable
  > MUST/SHOULD/MAY language, extending the normative API language from ticket 3.1 and
  > the Optional Companion Specifications table from ticket 3.6.

### Ticket 8.4 `FHIR-_____`
- **Summary:** Specify a version-stable manifest mechanism for `.sphr` packages
  (DocumentManifest is removed in current FHIR versions)
- **Type:** Change Request | **Pages:** recordkeeping.html (Meta Data section)
- **Description:**
  > The Meta Data section says an `.sphr` container MAY contain a Composition "cover
  > page" and an IPS acting as "manifest and table of contents." DocumentManifest — the
  > traditional manifest resource — is removed in current FHIR versions, and leaning on
  > Composition re-opens long-running CDA/CCD/IPS document-structure debates. Specify a
  > manifest mechanism that is stable across the FHIR versions a PHR accumulates
  > (R4/R4B/R5): candidates include Composition + List, or a lightweight package-level
  > manifest file. Decide required-vs-optional status per ticket 8.3. Solicit Structured
  > Documents WG input (Lisa Nelson suggested as a reviewer) before a block vote.

---

## BV-9 — IG Narrative & Architecture

> Source: "Thoughts on a Clearer Narrative for the PHR-IG" email, Sept 22 2026 (Hisashi
> Osanai). **Status: NOT yet implemented** — narrative reorganization, low technical risk
> but touches the home page; draft before block vote.

### Ticket 9.1 `FHIR-_____`
- **Summary:** Reorganize the IG introduction around a challenges → capabilities → components
  narrative
- **Type:** Change Request | **Pages:** index.html (possibly a new architecture.html)
- **Description:**
  > New implementers cannot easily answer: "What is the primary purpose of this IG, and
  > how do all of these components relate to one another?" The individual pieces
  > (longitudinal records, `.phr`/`.sphr` packaging, import/export workflows, PGHD
  > profiles/terminology/mappings, reuse of existing standards) are well-motivated, but
  > the connecting narrative is implicit. Restructure the introduction as:
  > (1) **What is a PHR** — a longitudinal health record under the control of an
  > individual; not simply a FHIR resource nor a file format; (2) **Challenges** —
  > semantic interoperability, record preservation, portability, traceability;
  > (3) **Required capabilities** — health information representation, semantic
  > interoperability, preservation, exchange and portability; (4) **How the IG addresses
  > each capability** — mapping every major artifact to the capability it serves. Include
  > one paragraph on the record-stewardship lens: the IG sits at the intersection of
  > health informatics and the disciplines concerned with preservation, organization, and
  > portability of records over time (consistent with the library-science position in
  > ticket 5.1) — a conceptual lens, not a central theme.

### Ticket 9.2 `FHIR-_____`
- **Summary:** Add a "reuse vs. new standardization" capability table
- **Type:** Change Request | **Pages:** index.html or conformance.html
- **Description:**
  > To help implementers and contributors see where this IG reuses mature standards and
  > where it introduces new work, add a table organized by capability: representation of
  > clinical content → reuses IPS and established FHIR IGs; PGHD representation → new
  > PGHD profiles, terminology artifacts, and ConceptMaps (insufficient existing
  > standards); preservation and exchange → `.phr`/`.sphr` packaging and import/export
  > workflows defined by this IG. This makes explicit which areas still require new
  > standardization work and why PGHD-specific artifacts and packaging mechanisms are
  > necessary, complementing the Optional Companion Specifications table (ticket 3.6).

---

## Logging checklist (per block)

1. [ ] Branch pushed; preview build green at `branches/post-wgm-sprint/`
2. [ ] Create tickets in block, pasting descriptions above + preview links
3. [ ] Record FHIR-numbers back into this file and `JIRA.md`
4. [ ] Post resolution comments on the existing tickets each block resolves
5. [ ] Request block vote at next PE WG call; note motion/second/result here
