# PHR IG - JIRA Ticket Tracker

> This file tracks the status of all JIRA tickets for the HL7 FHIR Personal Health Records Implementation Guide.
> Updated manually or via Claude Code `/first-pass-open-tickets` command.
>
> **JIRA Project:** https://jira.hl7.org/projects/FHIR
> **IG Canonical:** http://hl7.org/fhir/uv/phr
> **Repository:** https://github.com/HL7/personal-health-record-format-ig

## Status Legend

| Status | Meaning |
|--------|---------|
| `[ ]` | Open - not yet started |
| `[~]` | In-Progress - branch created, work underway |
| `[x]` | Completed - merged to master |
| `[D]` | Deferred - postponed to future ballot cycle |
| `[W]` | Won't Fix - non-persuasive or not applicable |
| `[R]` | Rolled Into - addressed as part of another ticket |
| `[?]` | TBD - needs discussion or clarification |

---

## PR1 - New Use Cases (Easy)

- [x] [FHIR-53509](https://jira.hl7.org/browse/FHIR-53509) - Add "LifeLog" use case
  - **JIRA Status:** Submitted | **Priority:** Easy
  - **Affects:** `input/pagecontent/index.md` (Use Cases section)
  - **Branch:** `FHIR-53509`
  - **Description:** Japan's "lifelog" concept - every medical event logged to a single record. Similar to "longitudinal record" but with subtle differences. Social media integration may be relevant.
  - **Notes:** Proposed text approved by Hisashi. Cherry-pick ref: `81302e7`. **PR staged.**

- [ ] [FHIR-53514](https://jira.hl7.org/browse/FHIR-53514) - Add "Healthy Living" use case
  - **JIRA Status:** Submitted | **Priority:** Easy
  - **Affects:** `input/pagecontent/index.md` (Use Cases section)
  - **Branch:** `FHIR-53514`
  - **Description:** Japan legal/policy requirements around "Healthy Living" - central to PHR Business Association. May integrate with Patient Reported Outcomes.
  - **Notes:** Proposed text approved by Hisashi. Cherry-pick ref: `de5e4f7`

- [ ] Fix images and mapping table link on PGHD content
  - **Priority:** Easy
  - **Affects:** `input/pagecontent/pghd.md`, `input/pagecontent/pghd-code-mapping.md`
  - **Notes:** Bundled with PR1 work

## PR2 - Minimum Viable PHR File (Medium)

- [~] [FHIR-53511](https://jira.hl7.org/browse/FHIR-53511) - Minimum Viable PHR File example
  - **JIRA Status:** Submitted | **Priority:** Medium
  - **Affects:** `input/pagecontent/recordkeeping.md`, possibly new example files
  - **Branch:** `FHIR-53511` (exists, 2 commits ahead of master)
  - **PR:** #98 | **Preview:** `build.fhir.org/.../branches/FHIR-53511/en/`
  - **Description:** Two line example: `<Patient />` + `<Observation />`

## PR3 - QR Code / SMART Health Link (Medium)

- [~] [FHIR-53512](https://jira.hl7.org/browse/FHIR-53512) - QR code / SMART Health Link example
  - **JIRA Status:** Submitted | **Priority:** Medium
  - **Affects:** `input/pagecontent/api.md`
  - **Branch:** `FHIR-53512` (exists, 2 commits ahead of master)
  - **PR:** #99 | **Preview:** `build.fhir.org/.../branches/FHIR-53512/en/api.html`
  - **Description:** Provide SMART Health Link + QR code example. Reference Josh Mandel's Patient Intake work.

## PR4 - NDJSON Over the Wire (Medium)

- [~] [FHIR-53513](https://jira.hl7.org/browse/FHIR-53513) - PHR (NDJSON) over the wire
  - **JIRA Status:** Submitted | **Priority:** Medium
  - **Affects:** `input/pagecontent/api.md`
  - **Branch:** `FHIR-53513` (exists, 4 commits ahead of master)
  - **Preview:** `build.fhir.org/.../branches/FHIR-53513/en/api.html`
  - **Description:** Add section for transferring NDJSON over HTTP (system-to-system). Include chunking, encoding. Reference Bulk Data IG.

## Vulcan Drop-In

- [ ] [FHIR-53515](https://jira.hl7.org/browse/FHIR-53515) - Document how to log adverse events
  - **JIRA Status:** Submitted | **Priority:** Medium
  - **Affects:** TBD - likely new section in functional model or new page
  - **Branch:** `FHIR-53515`
  - **Description:** Provide example of recording an adverse event with sample patient record. Of interest to Vulcan Accelerator and clinical trials.
  - **Notes:** Cherry-pick ref: `ed320c7`. Shares commit with FHIR-53516.

- [ ] [FHIR-53516](https://jira.hl7.org/browse/FHIR-53516) - Real World Data (RWD) harmonization
  - **JIRA Status:** Submitted | **Priority:** Medium
  - **Affects:** TBD
  - **Branch:** `FHIR-53516`
  - **Description:** Follow up with Vulcan on PHR adoption re: real world data, adverse events, clinical trials.
  - **Notes:** Cherry-pick ref: `ed320c7`. May be combined with FHIR-53515.

## PHR Council / JAMI Visit - Harmonization & Core Updates

- [ ] [FHIR-53517](https://jira.hl7.org/browse/FHIR-53517) - IPS harmonization
  - **JIRA Status:** Submitted
  - **Source:** PHR Council meeting
  - **Affects:** `input/pagecontent/api.md`
  - **Preview:** `build.fhir.org/.../branches/phr-council-misc-preview/en/api.html`
  - **Description:** Harmonize PHR IG with International Patient Summary (IPS).

- [?] [FHIR-53518](https://jira.hl7.org/browse/FHIR-53518) - mHealth harmonization
  - **JIRA Status:** Submitted
  - **Source:** PHR Council meeting
  - **Description:** mHealth harmonization. Debatable; Hisashi/Fujitsu open to discuss; have opinions.
  - **Notes:** Needs workgroup discussion before proceeding.

- [ ] [FHIR-53519](https://jira.hl7.org/browse/FHIR-53519) - Expanded filtering options
  - **JIRA Status:** Submitted
  - **Source:** PHR Council meeting
  - **Affects:** `input/pagecontent/algorithms.md`
  - **Preview:** `build.fhir.org/.../branches/phr-council-misc-preview/en/algorithms.html`
  - **Description:** Add expanded filtering options for PHR data.

- [ ] [FHIR-53520](https://jira.hl7.org/browse/FHIR-53520) - Need examples of algorithms
  - **JIRA Status:** Submitted
  - **Source:** PHR Council meeting
  - **Affects:** `input/pagecontent/algorithms.md`
  - **Preview:** `build.fhir.org/.../branches/phr-council-misc-preview/en/algorithms.html`
  - **Description:** Provide examples of algorithms used in PHR data processing.

- [ ] [FHIR-53521](https://jira.hl7.org/browse/FHIR-53521) - Add acknowledgements to PHR business association
  - **JIRA Status:** Submitted
  - **Source:** JAMI visit
  - **Affects:** `input/pagecontent/index.md` (Acknowledgements section)
  - **Description:** Add acknowledgements for the PHR Business Association (Japan).

- [ ] [FHIR-53522](https://jira.hl7.org/browse/FHIR-53522) - Build IG scaffold for internationalization
  - **JIRA Status:** Submitted | **Resolution:** Persuasive with Modification
  - **Source:** JAMI visit
  - **Description:** Build out the IG scaffold to support internationalization. Related to multiple ballot tickets about UV realm being too US-specific.

## To Be Determined

- [?] [FHIR-53583](https://jira.hl7.org/browse/FHIR-53583) - Metadata for items (DocumentManifest gone)
  - **JIRA Status:** Submitted | **Priority:** Medium-Hard
  - **Affects:** `input/pagecontent/datastorage.md`, `input/pagecontent/recordkeeping.md`
  - **Branch:** `FHIR-53583`
  - **Description:** DocumentManifest had the metadata but was removed in R5. Where to put it now? IPS? Composition? Also terminology issues (Lifelog vs Longitudinal, Problem List vs Concern List).
  - **Notes:** 0 JIRA comments. `datastorage.md` line 26 still references DocumentManifest. Needs workgroup discussion.

## Completed, Not Voted On

- [x] [FHIR-49225](https://jira.hl7.org/browse/FHIR-49225) - Create new page (example scenarios)
  - **JIRA Status:** Triaged | **Resolution:** Persuasive
- [x] [FHIR-49271](https://jira.hl7.org/browse/FHIR-49271)
  - **JIRA Status:** Triaged
- [x] [FHIR-49268](https://jira.hl7.org/browse/FHIR-49268)
  - **JIRA Status:** Triaged
- [x] [FHIR-49263](https://jira.hl7.org/browse/FHIR-49263)
  - **JIRA Status:** Triaged
- [x] [FHIR-49264](https://jira.hl7.org/browse/FHIR-49264)
  - **JIRA Status:** Triaged
- [x] [FHIR-49272](https://jira.hl7.org/browse/FHIR-49272)
  - **JIRA Status:** Triaged

## Stretch Goals - Logical Models

- [ ] [FHIR-50765](https://jira.hl7.org/browse/FHIR-50765) - Experimental Logical Models
  - **JIRA Status:** Triaged | **Priority:** Highest
  - **Affects:** `input/fsh/models/` (CDS.fsh, PatientDataReceipt.fsh)
  - **Branch:** `FHIR-50765`
  - **Description:** Three experimental logical models - why publish? Net new FHIR resources should go to FHIR-I. Suggest removing.
  - **Notes:** Considering moving from 'experimental' to 'trial-use' with proper profiles.

- [ ] [FHIR-49258](https://jira.hl7.org/browse/FHIR-49258) - Logical Models connection to IG
  - **JIRA Status:** Triaged | **Priority:** High
  - **Affects:** `input/fsh/models/`, IG documentation
  - **Branch:** `FHIR-49258`
  - **Description:** How are logical models connected to the IG? Many profiles from Apple HealthKit - relationship should be clearly stated.

## Stretch Goals - Example Scenarios / IG Organization

- [W] [FHIR-49262](https://jira.hl7.org/browse/FHIR-49262) - OS discussion
  - **JIRA Status:** Triaged
  - **Notes:** Per Hisashi - not needed in guide; difficult to maintain

- [ ] [FHIR-49075](https://jira.hl7.org/browse/FHIR-49075) - Final reorganization
  - **JIRA Status:** Triaged
  - **Priority:** Last (do after all other tickets)
  - **Affects:** `sushi-config.yaml`, all `input/pagecontent/*.md`
  - **Branch:** `FHIR-49075`
  - **Notes:** Many changes have occurred; will revisit at end for one final re-organization

- [ ] [FHIR-49345](https://jira.hl7.org/browse/FHIR-49345) - Device identification for Observations
  - **JIRA Status:** Triaged | **Priority:** Highest | **Blocked**
  - **Affects:** `input/fsh/pghd/profiles/`
  - **Branch:** `FHIR-49345`
  - **Description:** If observations recorded by device/app, device should be Must Support with identifiers. PHR subgroup agreed: `Observation.device` = MS but not 1..1.
  - **Notes:** Blocked - waiting on LOINC for terminology codes. Related to FHIR-49491.

- [ ] [FHIR-49619](https://jira.hl7.org/browse/FHIR-49619) - DocumentReference vs Composition for digital documents
  - **JIRA Status:** Triaged | **Priority:** Medium | **Blocked**
  - **Affects:** `input/pagecontent/recordkeeping.md`, `input/pagecontent/datamodel.md`
  - **Branch:** `FHIR-49619`
  - **Description:** Sync up guidance for CCD/IPS digital documents and paper document scanning in FHIR paradigm. Should reference document Bundles and DocumentReference rather than Composition.
  - **Notes:** Research ongoing. Related to FHIR-53583 (DocumentManifest removal).

- [ ] [FHIR-49244](https://jira.hl7.org/browse/FHIR-49244) - Make scope of IG more clear
  - **JIRA Status:** Triaged | **Priority:** Highest
  - **Affects:** `input/pagecontent/index.md` (Getting Started page)
  - **Branch:** `FHIR-49244`
  - **Description:** Reviewer identified 3 main contributions (file formats, APIs, longitudinal records) but this isn't clear to first-time readers. Guide the reader on how to read the IG.
  - **Notes:** Marked persuasive. Response: "We'll update accordingly!"

## Deferred (More Difficult)

- [D] [FHIR-49071](https://jira.hl7.org/browse/FHIR-49071) - Clarify requirement for FHIR format storage
  - **JIRA Status:** Triaged
  - **Description:** Data Model page assumes FHIR format storage. Should clarify: is it for storage or just exchange? Incompatible with statement that IG doesn't cover how to program software.
- [D] [FHIR-49070](https://jira.hl7.org/browse/FHIR-49070) - Clarify use of FHIR data schemes
  - **JIRA Status:** Triaged
  - **Description:** MUST/SHOULD/MAY language on `datastorage.md` is confusing. Not clear if FHIR is for long-term storage or just import/export.
- [D] [FHIR-49491](https://jira.hl7.org/browse/FHIR-49491) - Code systems and value sets too detailed
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification
  - **JIRA Priority:** Highest | **Blocked on LOINC**
  - **Description:** Apple HealthKit named directly in code systems. Need to remove proprietary names. TSMG recommended crosswalk to LOINC (contact: Eza Hafeza).
- [D] [FHIR-49074](https://jira.hl7.org/browse/FHIR-49074) - Overlap in persona pages
  - **JIRA Status:** Triaged
  - **Description:** Patient Personas, William Sim, and Personas Index pages have redundant content.

## Deferred (Duplicate)

- [D] [FHIR-53510](https://jira.hl7.org/browse/FHIR-53510) - FAQ Page
  - **JIRA Status:** Waiting for Input
  - **Notes:** Duplicate of [FHIR-49463](https://jira.hl7.org/browse/FHIR-49463). Current opinion is NOT to have FAQ due to maintenance burden.

---

## Jan 2025 Ballot - Typos / Minor Fixes

- [ ] [FHIR-49073](https://jira.hl7.org/browse/FHIR-49073) - Typos
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **Description:** *Section 1.4 says:* As such, a modern Patient Health Record needs to essentially be able to receive captured data from throughout the hospital. Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychaitry. All of it is relavent.   Psychiatry and relevant have typos.   *Section 2 says:* espcially considering that   especially has a typo   *Section 2.3.1 says:* The process flows below is based    Plural/singular issue. Seems...

- [ ] [FHIR-49260](https://jira.hl7.org/browse/FHIR-49260) - Typo "if"
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/annotations.html
  - **Description:** "{_}*If* would be good to have a consistent workflow around IPS handling whether the document is held directly by the patient or{_} {_}not.{_}" *If* should be replaced to *It*

- [ ] [FHIR-49265](https://jira.hl7.org/browse/FHIR-49265) - Typo: espcially
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/recordkeeping.html
  - **Description:** Typo: espcially First paragraph

- [ ] [FHIR-49267](https://jira.hl7.org/browse/FHIR-49267) - Link is not working
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/recordkeeping.html
  - **Description:** Link "File extension associations and default apps in Windows 10, how to handle this using commandline" is not working.

## Jan 2025 Ballot - Naming & Terminology Consistency

- [ ] [FHIR-49222](https://jira.hl7.org/browse/FHIR-49222) - Patient or Personal Health Record?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/index.html
  - **Description:** In "{_}The purpose of this implementation guide is to help the reader implement a *Patient Health Record* (in a programming{_} {_}language of their choice).{_}" Is it a Patient Health Record or a Personal Health Record (as the name of the IG)? What is the difference?

- [ ] [FHIR-49261](https://jira.hl7.org/browse/FHIR-49261) - Why EHR and not EMR?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/index.html
  - **Description:** In the sentence: "{_}What it does provide, is{_} {_}guidance on how to successfully exchange data with other PHR and *EHR* apps.{_}" Why EHR and not EMR? In the first paragraph was used EMR. It should be consistence in the use of these terms. Or at least provide a clear definition of them.

## Jan 2025 Ballot - Getting Started / Index Page

- [ ] [FHIR-49223](https://jira.hl7.org/browse/FHIR-49223) - Explain picture 1.2 - provide some text to explain it.
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/index.html
  - **Description:** Explain picture 1.2 - provide some text to explain it. It will help the reader to better understand the concepts.

- [ ] [FHIR-49611](https://jira.hl7.org/browse/FHIR-49611) - Please add a "Plain Language Summary about this Guide" to the home page
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/index.html
  - **Description:** HL7 encourages Implementation Guides (IGs) to voluntarily include a "Plain Language Summary about this Guide" on their home page. This addition can enhance accessibility and understanding for non-technical audiences, including patients and the general public. For an example, see the "Plain Language Summary about HL7 and this Guide" section on the MCC IG homepage: https://hl7.org/fhir/us/mcc/#plain-language-summary-about-hl7-and-this-guide.

## Jan 2025 Ballot - Internationalization / UV Realm

- [ ] [FHIR-49224](https://jira.hl7.org/browse/FHIR-49224) - If the IG is Universal, I would expect also other set of Laws
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/index.html
  - **Description:** Section 1.3 - If the IG is Universal, I would expect also other set of Laws.

- [ ] [FHIR-49490](https://jira.hl7.org/browse/FHIR-49490) - As a UV spec, need more non-USA input
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **Description:** The Getting Started page (as well as may other aspects) is very US-centric. Either this should be a US realm specification, or you need more non-US input. See the un-annotated list of "relevant law" as an example of the problem.

## Jan 2025 Ballot - SPHR Format Clarity

- [ ] [FHIR-49259](https://jira.hl7.org/browse/FHIR-49259) - Does the *.sphr file resources need to conform to PHR profiles?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/artifacts.html
  - **Description:** Does the *.sphr file resources need to conform to the PHR profiles? If so, this should be stated in the IG (e.g., http://hl7.org/fhir/uv/phr/2025Jan/recordkeeping.html)

- [ ] [FHIR-49266](https://jira.hl7.org/browse/FHIR-49266) - Is the .sphr format created by this IG?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/recordkeeping.html
  - **Description:** Is the .sphr format created by this IG? If so, it should be stated, or create a reference to the source of information.

- [ ] [FHIR-49269](https://jira.hl7.org/browse/FHIR-49269) - Indicate what is .sphr format and where to get additional info about it
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/functionality.html
  - **Description:** Indicate what is .sphr format and where to get additional info about it. Referenced in context of consuming Continuity of Care Documents (CCD) in .sphr format.

- [ ] [FHIR-49489](https://jira.hl7.org/browse/FHIR-49489) - What is a ".sphr" model?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **Description:** "The only requirement for conformance is that if the data is included in the .sphr file, it use FHIR data schemas." but no clear documentation of what a ".sphr" format is. Concern about expecting yet another format that somehow uses FHIR.

## Jan 2025 Ballot - Data Model / Artifacts

- [ ] [FHIR-49270](https://jira.hl7.org/browse/FHIR-49270) - The IG is based on R4. Why the resources links go to R5?
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** jan-2025
  - **URL:** http://hl7.org/fhir/uv/phr/2025Jan/functionality.html
  - **Description:** The IG is based on R4. Why the resources links go to R5 - see links in table 5.1.1.

## Jan 2025 Ballot - Terminology / Apple HealthKit

- [ ] [FHIR-49394](https://jira.hl7.org/browse/FHIR-49394) - Remove 'other' codes from code systems
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification | **Ballot:** jan-2025
  - **Section:** 24.0.5
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/artifacts.html
  - **Description:** Following terminology best practices, the 'other' code is not needed in these code systems and can cause complications down the line (changes meaning when codes are added in the future, etc.). The related value sets are also bound extensible, which removes the need for 'other' as a code all together.

- [ ] [FHIR-49409](https://jira.hl7.org/browse/FHIR-49409) - Provide proper Display values for Code System concepts
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification | **Ballot:** jan-2025
  - **Section:** 24.0.5
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/artifacts.html
  - **Description:** Suggest that the following Code Systems have display values added for each concept. The Apple HealthKit Workout Event Type Code System is an example of where this was executed very well. Apple HealthKit Category Type Code System, Apple HealthKit Characteristic Type Code System, Apple HealthKit Correlation Type Code System, Apple HealthKit Workout Activity Type Code System. Some Code Systems are using display values improperly to provide information about the concept's physical quantities.

- [ ] [FHIR-49616](https://jira.hl7.org/browse/FHIR-49616) - If Apple vocabularies continue to be used in the IG. Please add an IP disclaimer
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification | **Ballot:** jan-2025
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/index.html#ip-statements
  - **Description:** Concerns regarding the use of non-standard AppleHealthKit vocabularies. If this IG proceeds with the Apple terminologies intact, strongly recommend adding a disclaimer, such as: "Apple Health and HealthKit are trademarks of Apple Inc., registered in the U.S. and other countries."

- [ ] [FHIR-49618](https://jira.hl7.org/browse/FHIR-49618) - Please use standard terminologies instead of AppleHealth or provide mappings
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification | **Ballot:** jan-2025
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/artifacts.html#terminology-value-sets
  - **Description:** Generally opposed to the use of vendor-specific terminologies in HL7 specifications. Strong preference is to replace these terminologies with standard terminologies, HL7 terminologies, or even FHIR-based terminologies. Goes against historical HL7 practices.

## Jan 2025 Ballot - Conformance / References

- [ ] [FHIR-49425](https://jira.hl7.org/browse/FHIR-49425) - Update and review PACIO IG references
  - **JIRA Status:** Triaged | **Resolution:** Persuasive with Modification | **Ballot:** jan-2025
  - **URL:** https://hl7.org/fhir/uv/phr/2025Jan/conformance.html
  - **Description:** Submitted on behalf of Matt Elrod. Replace "PACIO - Cognitive Status" and "PACIO - Functional Status" with "PACIO - Personal Functioning and Engagement (https://build.fhir.org/ig/HL7/fhir-pacio-pfe/)". PACIO is archiving the Functional and Cognitive Status IGs.

## Jan 2025 Ballot - Security

- [ ] [FHIR-49072](https://jira.hl7.org/browse/FHIR-49072) - Security section is incomplete
  - **JIRA Status:** Triaged | **Ballot:** jan-2025
  - **Description:** The Security page is incomplete and must be updated. Assuming the list of sections is from Functional Model, that should be clearly called out.

## May 2025 Ballot - Getting Started / Scope

- [ ] [FHIR-50629](https://jira.hl7.org/browse/FHIR-50629) - Suggest removing the expectations
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 1.1
  - **URL:** https://hl7.org/fhir/uv/phr/2025May/index.html#expectations-for-this-implementation-guide
  - **Description:** Suggest removing the expectations - PHR has not yet been defined, and it is unclear what marathon analogy is referring to since no details provided.

- [ ] [FHIR-50631](https://jira.hl7.org/browse/FHIR-50631) - Define PHR
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** may-2025
  - **URL:** https://hl7.org/fhir/uv/phr/2025May/index.html#what-is-a-personal-health-record
  - **Description:** A definition of PHR is not provided and is needed. Could reference the PCD white paper which provides a detailed definition and summary from the Markle Foundation's Personal Health workgroup.

- [ ] [FHIR-50632](https://jira.hl7.org/browse/FHIR-50632) - Remove relevant laws section
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 1.3
  - **URL:** https://hl7.org/fhir/uv/phr/2025May/index.html#relevant-law
  - **Description:** These are US specific, and it is not clear how they are relevant because details are not provided. Recommend either clarifying or keep it simple and remove.

- [ ] [FHIR-50734](https://jira.hl7.org/browse/FHIR-50734) - Clarify the purpose of the specification
  - **JIRA Status:** Triaged | **Resolution:** Persuasive | **Ballot:** may-2025
  - **Section:** 1.4
  - **Description:** Change language about "medical grade" PHR to clarify the purpose is to provide a standard mechanism for communication of records contained in a PHR, not to define PHR storage.

- [ ] [FHIR-50735](https://jira.hl7.org/browse/FHIR-50735) - Reference PHR functional model profile in definition of PHR
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 1.2
  - **URL:** https://build.fhir.org/ig/HL7/personal-health-record-format-ig/#what-is-a-personal-health-record
  - **Description:** Recommend referencing the PHR functional model: "For more details on functionality of a personal health record system, the reader is encouraged to review the HL7 PHR System Functional Model profile." No need to redefine the wheel.

## May 2025 Ballot - Internationalization / UV Realm

- [ ] [FHIR-50394](https://jira.hl7.org/browse/FHIR-50394) - UV-realm profile very US-specific
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 1.3, 3
  - **Description:** Overall a very useful and promising IG, however, the regulatory scope is surprisingly narrow for a "universal" realm IG. At least add the European Health Data Space (EHDS) Regulation. International coordination needed in Conformance Recommendations.

- [ ] [FHIR-50740](https://jira.hl7.org/browse/FHIR-50740) - This is a Universal realm FHIR IG yet only US law is referenced and based on US Core
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 1.3, 1.7, 4.1
  - **URL:** http://hl7.org/fhir/uv/phr/2025May/index.html#relevant-law
  - **Description:** Only citations to US specific law and US relevant references. Should be more representation for the international community. Also, the model is based on US realm artifacts - US Core, C-CDA on FHIR and Argonaut. Otherwise make this a US Realm FHIR IG.

- [ ] [FHIR-50749](https://jira.hl7.org/browse/FHIR-50749) - Consider resolving US slant in guide
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 4.1
  - **Description:** Table has column devoted to Argonaut R4 which is sparsely populated and not all readers will know. If keeping this section as international, guides from other countries and at least IPS/IPA should be referenced. Argonaut should be defined or linked.

## May 2025 Ballot - Data Model / Format

- [ ] [FHIR-50736](https://jira.hl7.org/browse/FHIR-50736) - Clarify that data model is for FHIR IG, not for PHR
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 4
  - **Description:** Change "At the core of the Standard Patient Health Record is the assumption that it will contain records in FHIR format..." to "The intention of the PHR FHIR Implementation Guide is to provide the standard mechanism for the communication of any of the records contained in a particular PHR." Important the spec not be confused with a spec for how to build a PHR.

- [ ] [FHIR-50737](https://jira.hl7.org/browse/FHIR-50737) - Clarify the purpose of phr format
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 5
  - **URL:** https://build.fhir.org/ig/HL7/personal-health-record-format-ig/functionality.html#functional-model
  - **Description:** Recommend changing language about .sphr format and conformance to clarify the IG specifies communication format, not PHR implementation requirements.

- [ ] [FHIR-50738](https://jira.hl7.org/browse/FHIR-50738) - Gender Identity resource in Data Model
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** Data Model
  - **URL:** https://hl7.org/fhir/uv/phr/2025May/datamodel.html
  - **Description:** The SPHR Data model includes a FHIR patient resource "Gender Identity" associated with the Gender Harmony project. FEHRM registered a negative vote citing Executive Order 14168.

- [ ] [FHIR-50763](https://jira.hl7.org/browse/FHIR-50763) - Use of word record confusing - recommend clarity
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 7
  - **Description:** Change "Once an encrypted Personal Health Record is generated..." to "Once an encrypted .phr or .sphr file is generated..." to avoid confusion between the record concept and the file format.

## May 2025 Ballot - Record Lifecycle

- [ ] [FHIR-50739](https://jira.hl7.org/browse/FHIR-50739) - Unclear the purpose of record life cycle in this specification - recommend removing
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 6
  - **Description:** Section overlaps with functional model and doesn't offer guidance on interoperability through FHIR. Confusing and un-useful maintenance required to keep aligned with PHR system functional model. EHR WG now has a FHIR IG for this purpose. Recommend removing.

- [ ] [FHIR-50756](https://jira.hl7.org/browse/FHIR-50756) - Clarify and clean record lifecycle operations
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 23.0.1
  - **Description:** What is SPHR-FM - do you mean the Personal Health Record System Functional Model? In the diagram, why is the first commit to EHR listed referred to as the Fifth, should it be First? Unclear how this section relates to the PHR FHIR IG.

- [ ] [FHIR-50759](https://jira.hl7.org/browse/FHIR-50759) - Several statements regarding record lifecycle section appear incorrect
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 23.0.1
  - **Description:** References to a vendor-owned Patient Data Receipt IG as a "standard" which it is not. Seems inappropriate to refer to the guide of one vendor. Perhaps the goal is for that guide to become part of HL7 but would need Mitre approval.

## May 2025 Ballot - Security

- [ ] [FHIR-50750](https://jira.hl7.org/browse/FHIR-50750) - Security section is a shell - recommend removing until ready and needed
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 8
  - **Description:** Having a whole page devoted to security with sections that need to align with the current PHR functional model but with nothing on it and the note "Work in Progress" makes the spec feel like a draft not ready for implementation. Recommend removing until ready and needed.

## May 2025 Ballot - API / Endpoints

- [ ] [FHIR-50761](https://jira.hl7.org/browse/FHIR-50761) - Clarity suggestion - endpoints
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 22
  - **Description:** Recommend changing "Systems MUST post the API endpoints they use in the system's CapabilityStatement." to "PHR systems following the PHR FHIR Implementation Guide MUST include the API endpoints they are exposing in the PHR's FHIR server's CapabilityStatement." to remove ambiguity.

## May 2025 Ballot - Physiology / Content

- [ ] [FHIR-50764](https://jira.hl7.org/browse/FHIR-50764) - Concerned about medical jargon and AI generated table - recommend removal
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 10
  - **Description:** A lot of medical jargon - concerned that this is out of scope for this IG. Also, remove the Domain analysis table. An analysis by AI that has not been reviewed for accuracy does not belong in a standard specification. Especially concerning that it is referring to medical domains. This section needs careful review by the right experts.

## May 2025 Ballot - Profiles / Artifacts

- [ ] [FHIR-50766](https://jira.hl7.org/browse/FHIR-50766) - Remove Profiles for resources with no differential
  - **JIRA Status:** Triaged | **Ballot:** may-2025
  - **Section:** 24.13
  - **Description:** There are numerous profiles for resources that have no difference from the resource they are profiling. That is redundant and confusing. Examples are PHR Patient and PHR Provenance. Recommend removing all resources that do not have a differential. Unless there is some logical reason to keep.

---

## Quick Reference: Ticket-to-File Mapping

| Ticket | Primary Files |
|--------|--------------|
| FHIR-53509 | `input/pagecontent/index.md` |
| FHIR-53514 | `input/pagecontent/index.md` |
| FHIR-53511 | `input/pagecontent/recordkeeping.md` |
| FHIR-53512 | `input/pagecontent/datastorage.md` |
| FHIR-53513 | `input/pagecontent/api.md`, `input/pagecontent/datastorage.md` |
| FHIR-53515 | TBD (adverse events) |
| FHIR-53516 | TBD (RWD harmonization) |
| FHIR-53583 | `input/pagecontent/datastorage.md`, `input/pagecontent/recordkeeping.md` |
| FHIR-49075 | `sushi-config.yaml`, all pagecontent |
| FHIR-49244 | `sushi-config.yaml` |
| FHIR-49345 | `input/fsh/pghd/profiles/` |
| FHIR-49258 | `input/fsh/vocabulary/`, `input/fsh/pghd/codesystems/` |
| FHIR-50765 | `input/fsh/models/` |
