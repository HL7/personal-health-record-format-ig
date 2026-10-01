# Sept 2026 Connectathon & WGM — IG Update Planning

> Working document for turning the September 2026 HL7 Connectathon and Working Group Meeting
> notes into implemented changes and JIRA tickets for the PHR IG.
>
> **Workflow change:** We are moving from "log ticket first, figure it out later" to
> **commit-first JIRA**. For each item below we (1) plan the exact change, (2) implement it
> on a branch and verify the IG builds, (3) log the JIRA ticket with a description written
> from the *actual diff* (including branch preview link), then (4) PR and merge, and update
> `JIRA.md` with the ticket number.
>
> **Companion files:** `JIRA.md` (ticket status tracker), `JIRA-TODO.md` (legacy todo list)
> **JIRA filter:** [open PHR tickets](https://jira.hl7.org/browse/FHIR-49074?jql=project%20%3D%20FHIR%20AND%20issuetype%20in%20%28%22Change%20Request%22%2C%20Comment%2C%20Question%2C%20%22Technical%20Correction%22%29%20AND%20status%20in%20%28%22Resolved%20-%20change%20required%22%2C%20Triaged%2C%20%22Waiting%20for%20Input%22%2C%20Submitted%29%20AND%20%22Work%20Group%22%20%3D%20pe%20AND%20Specification%20%3D%20%22Personal%20Health%20Record%20%28FHIR%29%20%5BFHIR-phr%5D%22)

## Sprint Status — 2026-10-01

The low-hanging fruit is **implemented on branch `post-wgm-sprint`** (SUSHI clean, one
commit per block vote; ticket text in `JIRA-ITEMS-TO-CREATE.md`):

| Commit | Items implemented |
|--------|-------------------|
| BV-1 | 1.1 (IPS-as-summary) |
| BV-2 | 2.1 (.sphr crypto removal + security.md rewrite) |
| BV-3 | 3.1, 3.2, 3.3 (keep-name+map decision taken; OperationDefinitions created), 3.4, 3.5, 3.6, 3.7 |
| BV-4 | 4.1 (SocialMedia → guidance), 4.4 (experimental notices) |
| BV-5 | 5.1 (jurisdiction notices), 5.2 (military/veteran use case) |
| BV-6 | 6.1 (PGHD homepage + menu), 6.3 (Blue Button claims) |
| BV-7 | 7.1 (Merging retitle), 7.2 (patient linking) |

Still pending: 1.2 (PHR-S↔IPS mapping table), 4.2/4.3 (gated on handoffs), 6.2 (needs
interpretation confirmed), external tasks. Next: push branch, verify CI build, log tickets
per `JIRA-ITEMS-TO-CREATE.md`, request block votes.

## Connectathon Results (context for ticket descriptions)

Sept 2026 Connectathon: transferred data between **six systems** — Life Library, FlexPa,
Chronicle Workstation, Android HealthConnect, Apple HealthKit, Epic Sandbox.
Successfully tested: EHI Export, Apple HealthKit Export, DICOM, PDF Parsing, Social Media,
Environment Data. This is our evidence base — cite it in ticket descriptions where relevant.

## Status Legend

| Status | Meaning |
|--------|---------|
| `[ ]` | Planned — change scoped, not yet implemented |
| `[~]` | Implemented on branch — awaiting ticket + PR |
| `[T]` | Ticket logged — awaiting merge |
| `[x]` | Merged and JIRA updated |
| `[?]` | Interpretation needs confirmation from Abigail before implementing |
| `[E]` | External — not a PHR IG commit (other repo, email, video, etc.) |

---

# Batch 1 — Patient Summary Realignment (WGM approved)

**Theme:** *"We need a Patient Summary, and use International Patient Summary as a starting
point, since it already exists."* Stop positioning IPS as a thing PHR is compared against;
position it as the summary layer of a PHR.

**Branch:** `sept2026-patient-summary`

### 1.1 Remove IPS vs PHR comparison `[ ]`

- **Source note:** "Remove IPS vs PHR comparison"
- **Current state:** `input/pagecontent/recordkeeping.md:227-254` — "Patient Summaries"
  section contains an "IPS and PHR Compared" subsection with a five-row comparison table
  (Purpose, Scope, Size, Authorship, Standard) framing IPS as an "executive summary"
  distinct from the PHR. `input/pagecontent/conformance.md:9` recommends IPS support.
- **Planned change:**
  - Delete the "IPS and PHR Compared" comparison table and its framing prose.
  - Replace with a short "Patient Summary" subsection stating: every PHR needs a patient
    summary; this IG adopts the International Patient Summary (IPS) as its patient summary,
    rather than defining a new one; the IPS Composition is the recommended entry point /
    table of contents for a `.sphr` file.
  - Keep (and lightly edit) the existing "generating IPS from PHR" and "importing IPS into
    PHR" guidance — that content survives, only the adversarial comparison goes away.
  - Check `conformance.md`, `longitudinal.md`, `annotations.md`, `index.md` for language
    that frames IPS as an alternative/competitor and reword to "starting point".
- **Related existing ticket:** [FHIR-53517](https://jira.hl7.org/browse/FHIR-53517)
  (IPS harmonization, Submitted). **This change resolves FHIR-53517** — log the resolution
  comment there instead of opening a new ticket, or link the new ticket as related.
- **Draft JIRA ticket:**
  - **Summary:** Replace IPS-vs-PHR comparison with "IPS as the PHR patient summary" guidance
  - **Type:** Change Request | **Page:** recordkeeping.html (Patient Summaries section)
  - **Description:** The File Formats page currently contains a comparison table contrasting
    IPS and PHR as if they were competing formats. Per the Sept 2026 WGM discussion, the
    guide should instead state that a PHR requires a patient summary and that this IG adopts
    the International Patient Summary as that summary, since it already exists and is widely
    implemented. This change removes the comparison table and replaces it with guidance on
    using the IPS Composition as the summary layer of a PHR, retaining the existing
    export/import guidance. Resolves the harmonization direction discussed in FHIR-53517.
- **Steps:**
  - [ ] Edit `recordkeeping.md` (remove table, add replacement prose)
  - [ ] Sweep other pages for comparison framing (`grep -in "IPS" input/pagecontent/*.md`)
  - [ ] `./_genonce.sh` builds clean; review recordkeeping.html locally
  - [ ] Commit: `FHIR-53517: replace IPS comparison with IPS-as-patient-summary guidance`
  - [ ] Log/annotate JIRA, update `JIRA.md`, open PR

### 1.2 Create PHR-S Functional Model mapping for IPS `[ ]`

- **Source note:** "create PHR-S functional mode for IPS"
- **Current state:** `input/pagecontent/functionality.md` maps PHR-S FM sections (PH.0–PH.6,
  S.1–S.4) to FHIR resources. Nothing maps PHR-S FM to IPS document sections.
- **Planned change:** Add a section to `functionality.md` (or a new page
  `input/pagecontent/functionality-ips.md` if it exceeds ~150 lines) mapping PHR-S FM
  functions to IPS Composition sections (Medication Summary, Allergies, Problem List,
  Immunizations, Results, etc.), showing which PHR-S functions an IPS document satisfies
  and which require the full PHR. This operationalizes "IPS as starting point."
- **Draft JIRA ticket:**
  - **Summary:** Add PHR-S Functional Model to IPS section mapping
  - **Type:** Change Request | **Page:** functionality.html
  - **Description:** The Functional Model page maps PHR-S FM functions to FHIR resources but
    not to the International Patient Summary. Since the IG adopts IPS as its patient summary
    (see FHIR-53517), add a mapping table of PHR-S FM functions to IPS Composition sections,
    indicating which functions are satisfiable by an IPS alone versus a full PHR.
- **Steps:**
  - [ ] Draft the PH.x / S.x → IPS section mapping table
  - [ ] Add to `functionality.md`; register new page in `sushi-config.yaml` only if split out
  - [ ] Build, commit, log JIRA, update `JIRA.md`, PR

---

# Batch 2 — File Format Security Simplification (WGM approved)

**Theme:** The IG stops specifying its own encryption scheme for `.sphr` files and instead
tells implementers to rely on OS/drive-level encryption. This also substantially answers the
four open ballot tickets asking "what is .sphr?" by making the format simpler.

**Branch:** `sept2026-sphr-security`

### 2.1 Remove .sphr encryption and signing scheme `[ ]`

- **Source note:** "remove .sphr encryption and security; add security language about encrypting drives"
- **Current state:**
  - `input/pagecontent/recordkeeping.md:102-162` — Signing (detached JWS/FHIR Signature,
    SHA-256) and Encryption (ES256 public key, passphrase, A256GCM via SMART Health Links).
  - `input/pagecontent/recordkeeping.md:166` — conformance testing requires DEFLATE + X.509 signing.
  - `input/pagecontent/datastorage.md:33-43` — password encryption and GPG asymmetric encryption.
  - `input/pagecontent/api.md:152-165` — encryption references in transport context.
  - `input/pagecontent/security.md` — 85-line shell page (see FHIR-50750: "security section
    is a shell — recommend removing until ready").
- **Planned change:**
  - Remove the file-level encryption/signing specification from `recordkeeping.md` and
    `datastorage.md`. SMART Health Links encryption stays (it is part of SHL, not our spec) —
    reframe as "encryption in transit is handled by the transport (TLS, SHL)".
  - Remove the X.509 signing requirement from the conformance language at
    `recordkeeping.md:166`.
  - Rewrite `security.md` from shell to short, real guidance: data at rest SHOULD be
    protected with OS/volume-level encryption (FileVault, BitLocker, LUKS, iOS/Android file
    based encryption); data in transit protected by TLS/SHL; note that `.sphr` files
    themselves are plaintext zip archives and MUST NOT be assumed self-protecting.
    This simultaneously answers FHIR-49072 and FHIR-50750.
  - Sweep `annotations.md` and `api.md` for now-dangling references to encrypted files
    (also fixes wording flagged in FHIR-50763).
- **Related existing tickets:** [FHIR-50750](https://jira.hl7.org/browse/FHIR-50750)
  (security shell page), [FHIR-49072](https://jira.hl7.org/browse/FHIR-49072) (security
  section incomplete), [FHIR-50763](https://jira.hl7.org/browse/FHIR-50763) (encrypted-file
  wording). Log one new umbrella ticket; resolve those three with pointers to it.
- **Draft JIRA ticket:**
  - **Summary:** Remove .sphr file-level encryption/signing; add drive-level encryption guidance
  - **Type:** Change Request | **Pages:** recordkeeping.html, datastorage.html, security.html
  - **Description:** Per Sept 2026 WGM discussion, the IG will no longer define its own
    file-level encryption and signing scheme for `.sphr` files (passphrase/ES256/JWS). File
    formats defining bespoke crypto create key-management burdens no consumer PHR app has
    implemented, and Connectathon testing (six systems, Sept 2026) exercised none of it.
    Instead, the Security page now provides concrete guidance: protect data at rest with
    OS/volume encryption (FileVault, BitLocker, LUKS, mobile file-based encryption) and data
    in transit with TLS or SMART Health Links (which carries its own A256GCM encryption).
    This also resolves the "security page is a shell" concerns (FHIR-50750, FHIR-49072) and
    the encrypted-file wording issue (FHIR-50763).
- **Steps:**
  - [ ] Edit `recordkeeping.md` (remove lines ~102-162 crypto spec; fix conformance line 166)
  - [ ] Edit `datastorage.md` (remove lines ~33-43)
  - [ ] Rewrite `security.md` with drive/transport encryption guidance
  - [ ] Sweep: `grep -in "encrypt\|sign\|jws\|x.509\|gpg\|passphrase" input/pagecontent/*.md`
  - [ ] Build, review security.html + recordkeeping.html
  - [ ] Commit, log umbrella ticket, add resolution comments on 50750/49072/50763
  - [ ] Update `JIRA.md`, PR

---

# Batch 3 — API Conformance Language (WGM approved + Connectathon)

**Theme:** Turn api.md from descriptive ("systems MAY") into normative MUST/SHOULD
conformance language, informed by what actually interoperated at the Connectathon.

**Branch:** `sept2026-api-conformance`

### 3.1 MUST/SHOULD language for export/import APIs `[ ]`

- **Source note:** "add MUST/SHOULD language for APIs — FHIR Bundles for small data, NDJSON
  for larger files, MUST support ?outputFormat"
- **Current state:** `input/pagecontent/api.md:3` — "Systems MAY implement standard APIs…".
  `$phr-export` documented with `?outputFormat=ndjson|phr|sphr` (lines 11-20), `$import`
  at lines 52-74, CapabilityStatement MUST at lines 86-107.
- **Planned change:** Add a "Conformance" subsection at the top of the API page:
  - Servers implementing PHR export **MUST** support `?outputFormat`.
  - Servers **MUST** support FHIR Bundle output for small exports and **SHOULD** support
    NDJSON for large exports (define the boundary as guidance, e.g. "beyond a few thousand
    resources or ~50 MB, NDJSON SHOULD be used").
  - Clients **MUST** accept both Bundle and NDJSON.
  - Keep MIME-type table (lines 75-84) and align it with the normative statements.
- **Draft JIRA ticket:**
  - **Summary:** Add normative MUST/SHOULD conformance language to PHR export/import APIs
  - **Type:** Change Request | **Page:** api.html
  - **Description:** The API page describes `$phr-export`/`$import` permissively ("systems
    MAY"). Based on Sept 2026 Connectathon testing across six systems, add normative
    language: MUST support `?outputFormat`; MUST support FHIR Bundles for small payloads;
    SHOULD support NDJSON for large payloads; clients MUST accept both. Also aligns with
    endpoint-clarity request in FHIR-50761.
- **Steps:**
  - [ ] Edit `api.md` (new Conformance subsection; reword MAY→MUST/SHOULD where decided)
  - [ ] Also apply the FHIR-50761 endpoint wording fix while in the file
  - [ ] Build, commit, log JIRA (+ resolve FHIR-50761), update `JIRA.md`, PR

### 3.2 NDJSON line-format guidance (no wordwrap) `[ ]`

- **Source note:** "Export NDJSON should i or wordwrap" *(interpreted as: specify whether
  NDJSON output may be wrapped/pretty-printed — answer: no, one resource per line)*
- **Current state:** api.md documents NDJSON streaming but never states line discipline.
- **Planned change:** In the NDJSON section of `api.md`: each resource MUST be serialized as
  a single line of minified JSON terminated by `\n`; producers MUST NOT pretty-print or wrap
  lines; consumers SHOULD tolerate a trailing newline and empty lines. Reference the Bulk
  Data IG's NDJSON rules.
- **Draft JIRA ticket:**
  - **Summary:** Specify NDJSON line discipline (one minified resource per line, no wrapping)
  - **Type:** Technical Correction | **Page:** api.html
  - **Description:** At the Sept 2026 Connectathon, systems disagreed on whether exported
    NDJSON may be pretty-printed or word-wrapped. Add explicit rules matching Bulk Data:
    one minified JSON resource per line, newline-terminated, no wrapping.
- **Steps:** [ ] edit api.md → [ ] build → [ ] commit → [ ] log JIRA → [ ] `JIRA.md` → [ ] PR
  (bundle into Batch 3 PR with 3.1)

### 3.3 Reconcile $phr-export with $ehi-export and R5 $everything `[ ]`

- **Source notes:** "$phr-export to $ehi-export", "Reconcile with R5
  Operation-patient-everything", "Bulk Data vs /Patient/$everything"
- **Current state:** `$phr-export` is our invented operation (api.md:7-50); CapabilityStatement
  references `OperationDefinition/phr-export` and `phr-import` canonicals (api.md:98,102)
  that are **not actually defined** — there are no OperationDefinition FSH files in the IG.
  No discussion of `/Patient/$everything` or the Argonaut/EHI `$ehi-export` operation.
- **Planned change:**
  - Add a comparison/positioning section "Relationship to other export operations" in
    `api.md` covering: `$ehi-export` (EHI Export API — tested successfully at Connectathon),
    R5 `Patient/$everything`, and Bulk Data `$export`. State when each applies and how
    `$phr-export` parameters map onto them.
  - Decide: either (a) rename `$phr-export` to align with `$ehi-export`, or (b) keep
    `$phr-export` and define formal `OperationDefinition` resources for it
    (`input/fsh/operations/` — new folder) so the dangling canonicals resolve.
    **Recommendation: (b) + mapping table** — renaming to `$ehi-export` would collide with
    Epic's existing operation semantics; a mapping keeps us honest without collision.
    `[?]` Confirm direction with Abigail before implementing.
  - Reconcile parameter names with R5 `Patient/$everything` (`_since`, `_type`, `start`,
    `end`) so a server can front both with one implementation.
- **Draft JIRA ticket:**
  - **Summary:** Define $phr-export OperationDefinitions and document relationship to
    $ehi-export, Patient/$everything, and Bulk Data $export
  - **Type:** Change Request | **Page:** api.html + new OperationDefinition artifacts
  - **Description:** The CapabilityStatement example references
    `OperationDefinition/phr-export` and `phr-import` canonicals that the IG never defines.
    Sept 2026 Connectathon testing showed EHI Export working across systems while our
    bespoke operation remained conceptual. Add formal OperationDefinition resources,
    reconcile parameters with R5 Patient/$everything (`_since`, `_type`), and add a section
    positioning $phr-export against $ehi-export, Patient/$everything, and Bulk Data $export
    so implementers know which to use for which payload size and trust context.
- **Steps:**
  - [ ] Confirm rename-vs-mapping decision `[?]`
  - [ ] Create `input/fsh/operations/PHRExport.fsh` + `PHRImport.fsh` (OperationDefinition)
  - [ ] Add "Relationship to other export operations" section in api.md
  - [ ] Build (SUSHI + IG publisher must resolve the canonicals now), commit, JIRA, PR

### 3.4 Async $import with back pressure ($submit) `[ ]`

- **Source note:** "POST $import should maybe be async and support back pressure ($submit)"
- **Current state:** `api.md:52-74` — `$import` is synchronous POST with `?strategy=merge`
  and `?mode=validate`.
- **Planned change:** Add async pattern to the Import Operations section: server MAY respond
  `202 Accepted` + `Content-Location` polling URL (mirroring Bulk Data async pattern);
  document `429/Retry-After` for back pressure; note the `$submit` naming used by
  bulk-submit efforts and reference the Bulk Data Import/`$submit` work rather than
  inventing our own. Keep sync import valid for small Bundles.
- **Draft JIRA ticket:**
  - **Summary:** Document asynchronous $import pattern with back pressure (202 + polling, 429/Retry-After)
  - **Type:** Change Request | **Page:** api.html
  - **Description:** Importing a full PHR can be large; a synchronous POST $import risks
    timeouts and gives servers no flow control. Document the FHIR async request pattern for
    imports (202 Accepted + Content-Location polling), 429/Retry-After for back pressure,
    and alignment with the Bulk Data $submit/import work, while keeping synchronous import
    for small Bundles.
- **Steps:** [ ] edit api.md → [ ] build → [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

### 3.5 Chaining / dependent operations `[ ]`

- **Source note:** "Chaining/dependent operations"
- **Current state:** No content on operation ordering (e.g., export → validate → import →
  reconcile as a pipeline; or referential-integrity ordering during import).
- **Planned change:** Short subsection in api.md "Operation sequencing": imports MUST
  resolve internal Bundle references; recommended pipeline export → validate → import;
  note that NDJSON imports cannot rely on document ordering, so servers MUST handle
  forward references (two-pass or deferred resolution).
- **Draft JIRA ticket:**
  - **Summary:** Add guidance on chained/dependent operations and reference ordering during import
  - **Type:** Change Request | **Page:** api.html
  - **Description:** Connectathon testing surfaced questions about operation sequencing:
    what order do export/validate/import run in, and how do servers handle resources that
    reference each other when NDJSON provides no ordering guarantee? Add an "Operation
    sequencing" section covering the recommended pipeline and forward-reference handling.
- **Steps:** [ ] edit api.md → [ ] build → [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

### 3.6 Optional companion IGs section `[ ]`

- **Source note:** "optional IGs — BulkData, IHE Export, $everything, Others"
- **Current state:** Bulk Data mentioned inline in the streaming section of api.md; no
  consolidated list; `sushi-config.yaml` dependencies only include `hl7.fhir.uv.ips: 1.1.0`.
- **Planned change:** Add "Optional Companion Specifications" section to `conformance.md`
  (better home than api.md): table of Bulk Data Access IG, IHE mXDE/XDS document export,
  R5 Patient/$everything, EHI Export API, SMART Health Links — each marked OPTIONAL with a
  one-line "use when". No new package dependencies unless we cite specific profiles.
- **Draft JIRA ticket:**
  - **Summary:** Add "Optional Companion Specifications" table to Conformance page
  - **Type:** Change Request | **Page:** conformance.html
  - **Description:** Implementers ask which adjacent specifications (Bulk Data, IHE export
    profiles, Patient/$everything, EHI Export, SMART Health Links) are required. Add a
    conformance table marking each OPTIONAL with guidance on when to use it.
- **Steps:** [ ] edit conformance.md → [ ] build → [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

### 3.7 Validation guidance (multi-schema) `[ ]`

- **Source note:** "validation (on import/export, best practices, multi-schema support; PHR
  is inherently multi-schema over long timeframes)"
- **Current state:** Scattered — `api.md:65` (`?mode=validate`), `api.md:72` ("should be
  validated against FHIR profiles"), `recordkeeping.md:193-194` (JWS validation — being
  removed in Batch 2), tool references in `operating-systems.md:140,146`.
- **Planned change:** Add a "Validation" section (in `conformance.md`, or new page
  `validation.md` if >150 lines): validate on export (producer responsibility) AND import
  (never trust inbound data); a PHR accumulated over decades will contain resources
  conforming to R4, R4B, R5, US Core 3–8, IPS 1.x — validators MUST select schema/profile
  per-resource using `meta.profile` and `fhirVersion` context rather than assuming one IG
  version; validation failures on import SHOULD quarantine, not reject, historical records.
- **Draft JIRA ticket:**
  - **Summary:** Add validation best-practices section with multi-schema guidance
  - **Type:** Change Request | **Page:** conformance.html (or new validation page)
  - **Description:** A PHR is inherently multi-schema: records accumulate across FHIR
    versions and IG releases over decades. The guide currently mentions validation only in
    passing. Add a section covering export-side and import-side validation, per-resource
    schema/profile selection via meta.profile, and quarantine-not-reject handling for
    historical records that fail current-profile validation. Raised at Sept 2026
    Connectathon.
- **Steps:** [ ] write section → [ ] wire into sushi-config if new page → [ ] build →
  [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

---

# Batch 4 — Logical Models Disposition (WGM approved)

**Theme:** The experimental logical models get dispositioned: SocialMedia becomes guidance,
FinancialReceipt goes to DaVinci, Environmental goes to Personal Health Devices, and
whatever remains gets an explicit experimental banner. Also relates to open tickets
FHIR-50765 (why publish experimental models?) and FHIR-49258 (models' connection to IG).

**Branch:** `sept2026-logical-models`

### 4.1 Convert SocialMedia logical model to guidance `[ ]`

- **Source note:** "convert SocialMedia logical resource to guidance on using Media,
  RelatedPerson, ClinicalImpression, Composition, etc." *(the earlier "SocialMedia
  corporation" note is read as "SocialMedia incorporation" and folded in here `[?]`)*
- **Current state:** `input/fsh/profiles/experimental/social-media.fsh` — Logical model
  `SocialMedia` (platform, postDateTime, body, media, tags, visibility). Referenced from
  `logical-models.md:30`. Social media import was successfully tested at the Connectathon.
- **Planned change:**
  - Delete `social-media.fsh`.
  - Replace the logical-models.md entry with a "Social Media Data" guidance section (in
    `logical-models.md` or `pghd.md`): represent posts as `Media`/`DocumentReference`
    (content), `Communication` (the act of posting), `RelatedPerson` (other participants),
    `ClinicalImpression` (clinician interpretation of social-media-derived signals), and
    `Composition` sections for curated collections. Include one worked example (a post with
    an image attached, as `DocumentReference` + `Provenance`).
- **Draft JIRA ticket:**
  - **Summary:** Replace SocialMedia logical model with core-resource guidance (Media,
    Communication, RelatedPerson, ClinicalImpression, Composition)
  - **Type:** Change Request | **Pages:** logical-models.html, StructureDefinition-SocialMedia
  - **Description:** Per Sept 2026 WGM, net-new logical models don't belong in this IG
    (see FHIR-50765). Social media content — successfully round-tripped at the Sept 2026
    Connectathon — is representable with existing resources. Remove the SocialMedia logical
    model and add guidance mapping post content, participants, and clinical interpretation
    onto Media/DocumentReference, Communication, RelatedPerson, ClinicalImpression, and
    Composition, with a worked example.
- **Steps:**
  - [ ] Write guidance section + example instance (`input/fsh/pghd/examples/` or inline XML)
  - [ ] Delete `input/fsh/profiles/experimental/social-media.fsh`
  - [ ] Update `logical-models.md`; check for links to StructureDefinition-SocialMedia.html
  - [ ] Build, commit, JIRA (link FHIR-50765), `JIRA.md`, PR

### 4.2 Hand off FinancialReceipt to DaVinci / Price Transparency `[ ]` + `[E]`

- **Source notes:** "hand off FinancialReceipt to Vanessa/Corey to include in DaVinci and
  Price Transparency", "Fable: create a package for DaVinci Price Transparency IG"
- **Current state:** `input/fsh/profiles/experimental/financial-receipt.fsh` — Logical model
  `FinancialReceipt` (vendor, items, totals, paymentMethod, relatedClaim). Referenced from
  `logical-models.md:24`.
- **Planned change (IG side):**
  - Remove `financial-receipt.fsh` from the IG; replace the logical-models.md entry with a
    pointer: "financial receipt modeling has been contributed to the DaVinci Price
    Transparency work" (link once it exists).
  - **Sequencing:** do NOT remove until the handoff package exists — otherwise the model is lost.
- **Handoff package `[E]` (separate deliverable, not a PHR IG commit):** a standalone folder/
  zip for Vanessa/Corey containing: `FinancialReceipt.fsh`, a rendered StructureDefinition
  snapshot, the logical-models.md description text, rationale (OTC/out-of-pocket expenses
  that never generate a Claim), and suggested alignment points with PCT
  (`davinci-pct` ExplanationOfBenefit) — delivered as `handoff/financial-receipt-davinci/`
  in this repo or emailed.
- **Draft JIRA ticket:**
  - **Summary:** Remove FinancialReceipt logical model; contributed to DaVinci Price Transparency
  - **Type:** Change Request | **Page:** logical-models.html
  - **Description:** Per Sept 2026 WGM, consumer financial receipt modeling belongs with the
    DaVinci Price Transparency work rather than the PHR IG. The FinancialReceipt logical
    model has been packaged and handed off (Vanessa/Corey). Remove the model from this IG
    and leave a pointer to the DaVinci work.
- **Steps:**
  - [ ] Build handoff package under `handoff/financial-receipt-davinci/`
  - [ ] Email/hand off to Vanessa & Corey `[E]`
  - [ ] Remove FSH + update `logical-models.md`
  - [ ] Build, commit, JIRA, `JIRA.md`, PR

### 4.3 Hand off Environmental model to Personal Health Devices `[?]`

- **Source note:** "hand off environmental sensors to Personal Health Devices (?)" — the
  question mark is in the original notes, so treat the destination as unconfirmed.
- **Current state:** `input/fsh/profiles/experimental/environmental.fsh` — Logical model
  `Environmental` (temperature, humidity, AQI, UV, noise, pollen, substances, GPS).
  `input/pagecontent/environments.md` is entirely commented-out design prose. Environment
  data was successfully tested at the Connectathon.
- **Planned change:** Same pattern as 4.2 — build a handoff package for the Devices (PHD) WG,
  then remove the model and point to their work. Because destination is unconfirmed, only
  prepare the package now; removal waits for PHD WG acceptance.
- **Draft JIRA ticket (log after PHD confirms):**
  - **Summary:** Remove Environmental logical model; contributed to Personal Health Devices WG
  - **Type:** Change Request | **Page:** logical-models.html
  - **Description:** Environmental sensor data modeling (air quality, UV, noise, pollen) is
    device telemetry and belongs with the Devices WG / PHD work. The Environmental logical
    model has been packaged and handed off. Remove from this IG with a pointer.
- **Steps:**
  - [ ] Build handoff package under `handoff/environmental-phd/`
  - [ ] Confirm with Devices WG `[?]` `[E]`
  - [ ] Then: remove FSH, decide fate of dormant `environments.md` (propose deleting page),
        build, commit, JIRA, `JIRA.md`, PR

### 4.4 Experimental notice on Logical Models `[ ]`

- **Source note:** "add notice that Logical Models are experimental"
- **Current state:** `logical-models.md` says models are informational but has **no
  experimental banner**; models live in `input/fsh/profiles/experimental/` but the reader
  never sees that.
- **Planned change:** Add a prominent admonition at top of `logical-models.md`: these
  artifacts are **experimental** (maturity 0), published to gather feedback, not required
  for conformance, and expected to be removed or migrated (see 4.1–4.3). Also set
  `Extension: experimental = true` / `^experimental = true` caret on any FSH models that
  remain, so it renders on the StructureDefinition pages.
- **Draft JIRA ticket:**
  - **Summary:** Mark Logical Models page and artifacts as experimental
  - **Type:** Change Request | **Page:** logical-models.html
  - **Description:** Ballot feedback (FHIR-50765, FHIR-49258) asked why experimental logical
    models are published and how they connect to the IG. Add an explicit experimental
    notice to the Logical Models page and set ^experimental=true on remaining models,
    stating they are feedback-gathering artifacts not required for conformance.
- **Steps:** [ ] edit logical-models.md + FSH carets → [ ] build → [ ] commit →
  [ ] JIRA (link 50765/49258) → [ ] `JIRA.md` → [ ] PR

---

# Batch 5 — US Realm & Jurisdictional Guidance (WGM approved)

**Theme:** The IG is UV realm; make jurisdictional variation explicit instead of implicit,
and address the executive-order landscape without taking modeling positions.

**Branch:** `sept2026-jurisdiction`

### 5.1 Jurisdictional guidance & executive orders notice `[ ]`

- **Source notes:** "executive orders", "have legal obligations to maintain historic
  records", "integrate with external jurisdictions which may model differently", "this
  guide focuses on library science and does not provide guidance on how sex and gender
  should be modeled", "new data … should check their regional jurisdiction guidance on sex,
  race, ethnicity", "add executive orders notice in legal laws area"
- **Current state:** `index.md:17-39` "Relevant Law" — country-by-country table (NL, AU, JP,
  US, CA, UK, DE, FI, TW, IN). `datamodel.md:12-14` — Patient rows for Sex/Race/Ethnicity
  (US Core), Gender Identity (Gender Harmony), Sexual Orientation. Open ticket
  [FHIR-50738](https://jira.hl7.org/browse/FHIR-50738) is FEHRM's negative vote citing
  EO 14168 against the Gender Identity row.
- **Planned change:**
  - `index.md` (Relevant Law area): add a paragraph noting (a) executive orders and other
    sub-legislative instruments can change data requirements between ballot cycles;
    (b) record keepers may have **legal obligations to preserve historic records as
    written** even when current rules would prohibit creating such records today;
    (c) PHRs routinely integrate data from external jurisdictions that model demographics
    differently.
  - `datamodel.md` (near lines 12-14): add the library-science disclaimer verbatim in
    spirit: *"This guide concerns itself with record keeping (library science) — the
    faithful preservation and exchange of records as they were written. It does not provide
    guidance on how sex and gender should be modeled. Systems creating new records should
    consult their regional jurisdiction's current guidance on sex, race, and ethnicity."*
  - This paragraph is our disposition for FHIR-50738: preserve-as-written for historic
    data, defer-to-jurisdiction for new data.
- **Draft JIRA ticket:**
  - **Summary:** Add jurisdictional-variation and records-preservation notice (executive
    orders, sex/race/ethnicity modeling deferred to regional guidance)
  - **Type:** Change Request | **Pages:** index.html (Relevant Law), datamodel.html
  - **Description:** Per Sept 2026 WGM: the IG takes a library-science position — it
    specifies faithful preservation and exchange of records, not demographic modeling.
    Add notices that (1) executive orders and regulations may change requirements faster
    than ballot cycles, (2) record keepers may be legally obligated to maintain historic
    records as written, (3) data from external jurisdictions may model sex, race, and
    ethnicity differently and systems creating new records should consult current regional
    guidance. Provides the framework for resolving FHIR-50738.
- **Steps:**
  - [ ] Edit `index.md` + `datamodel.md`
  - [ ] Build, commit, log JIRA, add disposition comment on FHIR-50738
  - [ ] Update `JIRA.md`, PR

### 5.2 Department of Defense use cases `[ ]`

- **Source note:** "add Department of Defense/War use cases"
- **Current state:** `usecases.md` and persona pages; no military/DoD content. (Existing
  use-case tickets FHIR-53509/53514 used `index.md` Use Cases section.)
- **Planned change:** Add a "Military Service Members and Veterans" use case: service
  members transition between MHS GENESIS, VA, TRICARE network, and civilian providers;
  deployment health records; the PHR as continuity across DEERS enrollment changes; combat
  theater records with degraded connectivity (offline-first sync from `longitudinal.md`
  applies). Keep jurisdiction-neutral framing (armed forces exist everywhere) with US
  systems as the worked example.
- **Draft JIRA ticket:**
  - **Summary:** Add military service member / veteran use case
  - **Type:** Change Request | **Page:** usecases.html
  - **Description:** Service members are a canonical PHR population: frequent provider
    transitions (military treatment facilities, VA, civilian network), deployment health
    data captured offline, and lifelong benefit adjudication depending on complete records.
    Add a use case describing PHR usage across enlistment, deployment, separation, and
    veteran care, referencing the offline/merge capabilities on the Merging page.
- **Steps:** [ ] write use case in `usecases.md` → [ ] build → [ ] commit → [ ] JIRA →
  [ ] `JIRA.md` → [ ] PR

---

# Batch 6 — PGHD & Homepage (Connectathon)

**Branch:** `sept2026-pghd`

### 6.1 Bring PGHD mapping/reconciliation to homepage `[ ]`

- **Source note:** "bring PGHD mapping/reconciliation to homepage"
- **Current state:** `pghd-code-mapping.md` (400+ code mapping table, ConceptMap model) is
  buried under Supplemental → PGHD in the menu; not linked from `index.md`.
- **Planned change:** Add a short "Patient-Generated Health Data" subsection to `index.md`
  summarizing the PGHD code-mapping approach (canonical PHR-IG codes → LOINC/SNOMED via
  ConceptMap) with links to pghd.html and pghd-code-mapping.html; promote "PGHD" from the
  Supplemental submenu to a top-level menu entry in `sushi-config.yaml`.
- **Draft JIRA ticket:**
  - **Summary:** Surface PGHD code mapping and reconciliation on the home page and top-level menu
  - **Type:** Change Request | **Pages:** index.html, menu
  - **Description:** The PGHD code mapping work (the ConceptMap crosswalk of 400+ device/app
    codes to LOINC/SNOMED) is a core contribution of this IG but is buried three levels deep.
    Add a summary section with links on the home page and promote PGHD in the navigation.
- **Steps:** [ ] edit index.md + sushi-config.yaml menu → [ ] build → [ ] commit →
  [ ] JIRA → [ ] `JIRA.md` → [ ] PR

### 6.2 PGHD internal codes for records lacking demographics `[?]`

- **Source note:** "no demographics on one record — need PGHD internal codes"
  *(interpretation: one Connectathon system exported records with no Patient demographics;
  we need PGHD-internal codes — e.g., a data-absent / anonymous-patient pattern — so such
  records remain importable. Needs confirmation.)*
- **Current state:** `recordkeeping.md:26-30` requires "at minimum a Patient resource and a
  Composition resource"; no guidance for demographics-free exports (device dumps,
  de-identified feeds). PGHD code systems in `input/fsh/pghd/codesystems/`.
- **Planned change (pending confirmation):** Add guidance to `pghd.md` + `recordkeeping.md`:
  when a source cannot supply demographics, the export MUST still contain a Patient resource
  carrying at minimum an `identifier` (device/account scoped) and MAY use
  `data-absent-reason` extensions; define any needed PGHD internal codes in the existing
  PGHD code system for provenance/source typing.
- **Draft JIRA ticket:** hold until interpretation confirmed `[?]`.
- **Steps:** [ ] confirm intent with Abigail → [ ] scope codes → [ ] implement → [ ] JIRA → [ ] PR

### 6.3 BlueButton support for claims/financial `[ ]`

- **Source note:** "Add BlueButton support for claims/financial"
- **Current state:** `datamodel.md:24` maps Claim → CMS BlueButton 2.0; `functionality.md`
  references Claim/Coverage/ExplanationOfBenefit rows; no import guidance.
- **Planned change:** Add a "Claims and Financial Data" section (likely `datamodel.md` or
  `recordkeeping.md` import sources): importing CMS Blue Button 2.0 ExplanationOfBenefit,
  Coverage, and Patient resources into a PHR; note CARIN BB IG as the payer-agnostic
  equivalent; provenance tagging for payer-sourced data. No new profiles — guidance only.
- **Draft JIRA ticket:**
  - **Summary:** Add Blue Button 2.0 / CARIN BB claims import guidance
  - **Type:** Change Request | **Pages:** datamodel.html, recordkeeping.html
  - **Description:** Claims and coverage data round out a PHR's financial picture. Add
    guidance for importing CMS Blue Button 2.0 (Medicare) and CARIN BB (commercial payer)
    ExplanationOfBenefit/Coverage resources, including provenance tagging of payer-sourced
    records.
- **Steps:** [ ] write section → [ ] build → [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

---

# Batch 7 — Merging Page & Patient Linking (Connectathon)

**Branch:** `sept2026-merging`

### 7.1 Retitle Longitudinal page to "Merging and Versioning" `[ ]`

- **Source note:** "Update Longitudinal page to Merging and etc"
- **Current state:** Menu (`sushi-config.yaml`) already says "Merging and Versioning" but
  the page content in `longitudinal.md` still leads with "Record Lifecycle Operations".
  Ballot ticket [FHIR-50739](https://jira.hl7.org/browse/FHIR-50739) recommends removing
  record-lifecycle framing entirely (overlaps functional model).
- **Planned change:** Retitle page content to match menu ("Merging and Versioning");
  restructure the intro away from "record lifecycle" toward merge/reconciliation
  (addresses the FHIR-50739 objection by removing the lifecycle framing rather than the
  useful merge content); update `sushi-config.yaml` page title entry.
- **Draft JIRA ticket:**
  - **Summary:** Retitle Longitudinal Records page to "Merging and Versioning"; remove
    record-lifecycle framing
  - **Type:** Change Request | **Page:** longitudinal.html
  - **Description:** The page's menu label is already "Merging and Versioning" but content
    still presents as "Record Lifecycle Operations", which FHIR-50739 correctly notes
    overlaps the PHR-S FM and EHR WG lifecycle IG. Retitle and reframe the page around its
    real content — merge strategies, versioning, deduplication, conflict resolution —
    and drop lifecycle claims.
- **Steps:** [ ] edit longitudinal.md + sushi-config page title → [ ] build → [ ] commit →
  [ ] JIRA (+ disposition comment on FHIR-50739) → [ ] `JIRA.md` → [ ] PR

### 7.2 Flexpa patient linking `[ ]` (priority — four exclamation marks in notes)

- **Source note:** "Flexpa patient linking!!!!"
- **Current state:** No patient identity-linking content. Merging content in
  `longitudinal.md` assumes records already belong to one patient.
- **Planned change:** Add "Patient Identity and Linking" section to `longitudinal.md`
  (fits the merging theme): when aggregating from multiple sources (Flexpa-style payer
  aggregation, provider portals, devices), each source has its own Patient resource;
  guidance on `Patient.link` (`refer`/`replaced-by`), Person resource for cross-source
  identity, `$match` for probabilistic matching, and keeping source Patient resources with
  Provenance rather than destructively merging.
- **Draft JIRA ticket:**
  - **Summary:** Add patient identity linking guidance for multi-source aggregation
  - **Type:** Change Request | **Page:** longitudinal.html
  - **Description:** Sept 2026 Connectathon testing with Flexpa surfaced the core
    aggregation problem: every source system emits its own Patient resource. Add guidance
    on Patient.link, the Person resource, $match, and preserving source Patient resources
    with Provenance instead of destructive merges.
- **Steps:** [ ] write section → [ ] build → [ ] commit → [ ] JIRA → [ ] `JIRA.md` → [ ] PR

---

# External Tasks (not PHR IG commits)

- `[E]` **Email PHR track slides to Rachel Richesson** for WGM minutes. *(Gmail draft —
  can prepare on request.)*
- `[E]` **Record video for Kill The Clipboard.** Outreach/demo task; suggest scripting it
  around the six-system Connectathon transfer story.
- `[E]` **Access Control IG** (separate repo — `access-control-list` IG):
  1. Update to reference **Scalable Consent Management IG**; remove content Scalable
     Consent now covers.
  2. Add **R5 Permission resource** support.
  3. Evaluate general R5 upgrade (Permission is R5-only; an R4 IG can only reference it
     informatively — this likely forces the R5 decision).
  - *Plan: separate planning doc in that repo; same commit-first workflow.*
- `[E]` **DaVinci Price Transparency package** — covered by item 4.2 handoff package.
- `[E]` **Genome Computer / genome-spec: verify Chronicle Workstation is using latest PGHD
  data** — check Chronicle's PGHD code system/ConceptMap version against this IG's current
  `input/fsh/pghd/` artifacts. `[?]` Which repo hosts genome-spec?

---

# Suggested Execution Order

| Order | Batch | Rationale |
|-------|-------|-----------|
| 1 | Batch 1 (IPS realignment) | Resolves existing FHIR-53517; unblocks summary language used elsewhere |
| 2 | Batch 2 (.sphr security) | Resolves three open ballot tickets; other pages reference encryption |
| 3 | Batch 3 (API conformance) | Largest batch; 3.3 needs one `[?]` decision first |
| 4 | Batch 4 (logical models) | 4.2/4.3 gated on handoff packages/acks; 4.1 and 4.4 can go now |
| 5 | Batch 5 (US realm) | Self-contained page edits |
| 6 | Batch 6 (PGHD/homepage) | 6.2 gated on `[?]` confirmation |
| 7 | Batch 7 (merging/linking) | Builds on Batch 1 terminology |

**Open `[?]` questions to resolve before their items start:**
1. (3.3) Rename `$phr-export` → `$ehi-export`, or keep name + add mapping? (Recommend: keep + map.)
2. (4.1) Was "SocialMedia corporation" = "incorporation" (folded into the conversion item)?
3. (4.3) Confirm Personal Health Devices WG as destination for Environmental model.
4. (6.2) Confirm reading of "no demographics on one record → need PGHD internal codes".
5. (External) Where does genome-spec / Genome Computer work live?
