# PHR IG Ballot Staging - 47 Unresolved JIRA Tickets

> Working Group Week 2026 - Preliminary plans for every unresolved ballot ticket.
> Each `.md` file contains the ticket summary, proposed resolution, affected files, and action plan.

## Quick Reference

| Category | Count | Location |
|----------|------:|----------|
| Block Vote - Internationalization | 4 | `block-vote/internationalization/` |
| Block Vote - Record Lifecycle | 3 | `block-vote/record-lifecycle/` |
| Block Vote - Security Section | 2 | `block-vote/security-section/` |
| Block Vote - Data Model Scope | 2 | `block-vote/data-model-scope/` |
| Individual - Straightforward | 8 | `./ (root)` |
| Individual - Medium Complexity | 8 | `./ (root)` |
| Individual - Blocked/Discussion | 4 | `./ (root)` |
| Individual - Stretch/Last | 2 | `./ (root)` |
| Already Handled | 14 | `already-handled/` |
| **Total** | **47** | |

## All 47 Tickets

| # | Ticket | Summary | Proposed Resolution | Location |
|---|--------|---------|--------------------:|----------|
| 1 | FHIR-50394 | UV-realm profile very US-specific | Persuasive w/ Mod | block-vote/internationalization/ |
| 2 | FHIR-50632 | Remove relevant laws section | Persuasive w/ Mod | block-vote/internationalization/ |
| 3 | FHIR-50740 | Universal realm but US law + US Core | Persuasive w/ Mod | block-vote/internationalization/ |
| 4 | FHIR-50749 | Consider resolving US slant | Persuasive w/ Mod | block-vote/internationalization/ |
| 5 | FHIR-50739 | Recommend removing record lifecycle | Persuasive w/ Mod | block-vote/record-lifecycle/ |
| 6 | FHIR-50756 | Clarify and clean record lifecycle | Persuasive w/ Mod | block-vote/record-lifecycle/ |
| 7 | FHIR-50759 | Statements appear incorrect | Persuasive w/ Mod | block-vote/record-lifecycle/ |
| 8 | FHIR-49072 | Security section is incomplete | Persuasive w/ Mod | block-vote/security-section/ |
| 9 | FHIR-50750 | Security is a shell - remove until ready | Persuasive w/ Mod | block-vote/security-section/ |
| 10 | FHIR-50736 | Clarify data model is for FHIR IG | Persuasive | block-vote/data-model-scope/ |
| 11 | FHIR-50737 | Clarify purpose of phr format | Persuasive | block-vote/data-model-scope/ |
| 12 | FHIR-50629 | Remove expectations section | Persuasive | ./ |
| 13 | FHIR-50735 | Reference PHR functional model | Persuasive | ./ |
| 14 | FHIR-50761 | Clarity suggestion - endpoints | Persuasive | ./ |
| 15 | FHIR-50763 | Word "record" confusing | Persuasive | ./ |
| 16 | FHIR-53514 | Add Healthy Living use case | Persuasive | ./ |
| 17 | FHIR-53521 | Add acknowledgements | Persuasive | ./ |
| 18 | FHIR-49244 | Make scope of IG more clear | Persuasive | ./ |
| 19 | FHIR-53519 | Expanded filtering options | Persuasive | ./ |
| 20 | FHIR-50764 | Medical jargon / AI table | Persuasive w/ Mod | ./ |
| 21 | FHIR-50766 | Remove profiles with no differential | Persuasive | ./ |
| 22 | FHIR-50765 | Experimental Logical Models | Persuasive w/ Mod | ./ |
| 23 | FHIR-49258 | Logical Models connection to IG | Persuasive w/ Mod | ./ |
| 24 | FHIR-50738 | Gender Identity in Data Model | Needs Discussion | ./ |
| 25 | FHIR-53520 | Algorithm examples | Persuasive | ./ |
| 26 | FHIR-53517 | IPS harmonization | Persuasive | ./ |
| 27 | FHIR-53583 | Metadata (DocumentManifest gone) | Persuasive w/ Mod | ./ |
| 28 | FHIR-49345 | Device identification | Deferred (blocked) | ./ |
| 29 | FHIR-49619 | DocumentReference vs Composition | Deferred (blocked) | ./ |
| 30 | FHIR-53518 | mHealth harmonization | Needs Discussion | ./ |
| 31 | FHIR-53515 | Document adverse events (Vulcan) | Needs Vulcan Input | ./ |
| 32 | FHIR-53516 | RWD harmonization (Vulcan) | Deferred | ./ |
| 33 | FHIR-49075 | Final IG reorganization | Do Last | ./ |
| 34 | FHIR-53509 | Add lifelog use case | Persuasive (done) | already-handled/ |
| 35 | FHIR-53511 | Minimum Viable PHR File | Persuasive (PR #98) | already-handled/ |
| 36 | FHIR-53512 | QR code example | Persuasive (PR #99) | already-handled/ |
| 37 | FHIR-53513 | NDJSON over the wire | Persuasive (in-progress) | already-handled/ |
| 38 | FHIR-49263 | Table 4.1 clarity | Persuasive (done) | already-handled/ |
| 39 | FHIR-49264 | Why US Core in UV IG | Persuasive (done) | already-handled/ |
| 40 | FHIR-49268 | Table 5.1.1 definitions | Persuasive (done) | already-handled/ |
| 41 | FHIR-49271 | Table 5.1.1 suggestions | Persuasive (done) | already-handled/ |
| 42 | FHIR-49272 | Record Lifecycle Events usage | Persuasive (done) | already-handled/ |
| 43 | FHIR-53510 | Add FAQ page | Not Persuasive (dup) | already-handled/ |
| 44 | FHIR-49262 | Operating Systems page relevance | Not Persuasive | already-handled/ |
| 45 | FHIR-49070 | Clarify use of FHIR data schemes | Deferred | already-handled/ |
| 46 | FHIR-49071 | Clarify FHIR format storage req | Deferred | already-handled/ |
| 47 | FHIR-49074 | Overlap in persona pages | Deferred | already-handled/ |

## Block Vote Summary

**Block A - Internationalization:** 4 tickets all requesting the UV-realm IG be less US-centric. Proposed solution: restructure Relevant Law section with international columns, add EHDS/GDPR/Japan references, update conformance table with IPS/IPA alongside Argonaut.

**Block B - Record Lifecycle:** 3 tickets about the stub `recordlifecycle.md` page. Proposed: rewrite with FHIR operation mappings, or remove if workgroup prefers.

**Block C - Security Section:** 2 tickets about the "Work in Progress" `security.md` page. Proposed: add brief narrative linking to PHR-S FM and security IGs, or remove.

**Block D - Data Model Scope:** 2 tickets clarifying the IG specifies communication format, not PHR implementation. Proposed: update language in datamodel.md, functionality.md, datastorage.md.
