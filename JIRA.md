## Post-WGM Sprint (Sept 2026) — Block Votes on PR #124

Implemented on branch `post-wgm-sprint` (PR [#124](https://github.com/HL7/personal-health-record-format-ig/pull/124), targeting `development`). Ticket text source: `JIRA-ITEMS-TO-CREATE.md`.

**BV-1 — Patient Summary realignment (IPS)**
- [FHIR-59576](https://jira.hl7.org/browse/FHIR-59576) - IPS as the PHR patient summary (resolves FHIR-53517 direction)

**BV-2 — File format security simplification**
- [FHIR-59577](https://jira.hl7.org/browse/FHIR-59577) - Remove .sphr encryption; drive-level guidance (resolves FHIR-50750, FHIR-49072, FHIR-50763)

**BV-3 — API conformance & operations**
- [FHIR-59578](https://jira.hl7.org/browse/FHIR-59578) - Normative MUST/SHOULD API language (applies FHIR-50761)
- [FHIR-59579](https://jira.hl7.org/browse/FHIR-59579) - NDJSON line discipline
- [FHIR-59300](https://jira.hl7.org/browse/FHIR-59300) - OperationDefinitions + relationship to $ehi-export / $everything / Bulk Data (pre-existing ticket)
- [FHIR-59303](https://jira.hl7.org/browse/FHIR-59303) - Asynchronous $import with back pressure (pre-existing ticket)
- [FHIR-59580](https://jira.hl7.org/browse/FHIR-59580) - Operation sequencing and forward references
- [FHIR-59581](https://jira.hl7.org/browse/FHIR-59581) - Optional Companion Specifications table
- [FHIR-59582](https://jira.hl7.org/browse/FHIR-59582) - Validation best practices, multi-schema

**BV-4 — Logical models disposition**
- [FHIR-59583](https://jira.hl7.org/browse/FHIR-59583) - Replace SocialMedia model with core-resource guidance
- [FHIR-59584](https://jira.hl7.org/browse/FHIR-59584) - Mark logical models experimental (responds to FHIR-50765, FHIR-49258)

**BV-5 — Jurisdictional guidance / US realm**
- [FHIR-59585](https://jira.hl7.org/browse/FHIR-59585) - Jurisdictional / records-preservation notices (framework for FHIR-50738)
- [FHIR-59586](https://jira.hl7.org/browse/FHIR-59586) - Military / veteran use case

**BV-6 — PGHD visibility & claims data**
- [FHIR-59301](https://jira.hl7.org/browse/FHIR-59301) - PGHD code mapping on homepage and menu (pre-existing ticket)
- [FHIR-59587](https://jira.hl7.org/browse/FHIR-59587) - Blue Button 2.0 / CARIN BB claims import

**BV-7 — Merging & patient identity**
- [FHIR-59588](https://jira.hl7.org/browse/FHIR-59588) - Retitle Longitudinal page to Merging and Versioning (resolves FHIR-50739 objection)
- [FHIR-59589](https://jira.hl7.org/browse/FHIR-59589) - Patient identity linking guidance

**BV-8 / BV-9 — not yet filed** (exchange object & minimum metadata; IG narrative) — design discussion needs WG input before implementation; see `JIRA-ITEMS-TO-CREATE.md`.

---

## Vulcan Drop-In
- [FHIR-53515](https://jira.hl7.org/browse/FHIR-53515) - Document how to log adverse events (Vulcan)
- [FHIR-53516](https://jira.hl7.org/browse/FHIR-53516) - Real World Data (RWD) harmonization (Vulcan)

## Stretch Goals

### Structures: Logical Models
1. [FHIR-50765](https://jira.hl7.org/browse/FHIR-50765)
2. [FHIR-49258](https://jira.hl7.org/browse/FHIR-49258)

### Example Scenarios (with sequence diagrams?)
Create new page: [FHIR-49225](https://jira.hl7.org/browse/FHIR-49225)

1. [FHIR-49262](https://jira.hl7.org/browse/FHIR-49262) Hisashi - We don't need to dive into OS in the guide; very difficult to maintain in future.
2. [FHIR-49075](https://jira.hl7.org/browse/FHIR-49075) Many changes have occurred; we will revisit this at the end, and do one final re-organization after we address all the other tickets.
3. [FHIR-49345](https://jira.hl7.org/browse/FHIR-49345) Waiting on response from LOINC; will update Pull Request after; and do final audit on Profiles.
4. [FHIR-49619](https://jira.hl7.org/browse/FHIR-49619) Conducting research on ticket.

---

**Additional Text (Completed, Not Voted On)**
- [FHIR-49225](https://jira.hl7.org/browse/FHIR-49225)
- [FHIR-49271](https://jira.hl7.org/browse/FHIR-49271)
- [FHIR-49268](https://jira.hl7.org/browse/FHIR-49268)
- [FHIR-49263](https://jira.hl7.org/browse/FHIR-49263)
- [FHIR-49264](https://jira.hl7.org/browse/FHIR-49264)
- [FHIR-49272](https://jira.hl7.org/browse/FHIR-49272)

**More Difficult (Deferred)**
- [FHIR-49071](https://jira.hl7.org/browse/FHIR-49071)
- [FHIR-49070](https://jira.hl7.org/browse/FHIR-49070)
- [FHIR-49491](https://jira.hl7.org/browse/FHIR-49491)
- [FHIR-49074](https://jira.hl7.org/browse/FHIR-49074)

**Profiles**
- [FHIR-49345](https://jira.hl7.org/browse/FHIR-49345)
- [FHIR-49619](https://jira.hl7.org/browse/FHIR-49619)

**Terminology**
- [FHIR-49491](https://jira.hl7.org/browse/FHIR-49491)
- [FHIR-49258](https://jira.hl7.org/browse/FHIR-49258)

**IG Organization**
- [FHIR-49262](https://jira.hl7.org/browse/FHIR-49262)
- [FHIR-49075](https://jira.hl7.org/browse/FHIR-49075)
- [FHIR-49244](https://jira.hl7.org/browse/FHIR-49244)

---

## JIRA Tickets

**TODO: PR1 - New Use Cases (Easy)**
- [FHIR-53509](https://jira.hl7.org/browse/FHIR-53509) - Add "LifeLog" usecase
- [FHIR-53514](https://jira.hl7.org/browse/FHIR-53514) - Add "Health Living" usecase
- Also: fix images and mapping table link on PGHD content.

**TODO: PR2 - Minimum Viable PHR File (Medium)**
- [FHIR-53511](https://jira.hl7.org/browse/FHIR-53511) - Add a "Minimum Viable PHR File" example

**TODO: PR3 - QR Code (Medium)**
- [FHIR-53512](https://jira.hl7.org/browse/FHIR-53512) - Show example of QR code (SMART Health Link)

**TODO: PR4 - NDJSON over wire (Medium)**
- [FHIR-53513](https://jira.hl7.org/browse/FHIR-53513) - PHR (NDJSON) over the wire

**To be determined:**
- [FHIR-53583](https://jira.hl7.org/browse/FHIR-53583) - Metadata for items; now that DocumentManifest isn't available

**Deferred:**
- [FHIR-53510](https://jira.hl7.org/browse/FHIR-53510) - Add a FAQ Page (duplicate of [FHIR-49463](https://jira.hl7.org/browse/FHIR-49463))
  - XXX current opinion is NOT to have a FAQ, because of maintenance?
