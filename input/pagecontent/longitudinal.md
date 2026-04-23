#### Record Lifecycle Operations

When a Personal Health Record (PHR) obtains data from external systems, the initial longitudinal record exchange may be performed using an Electronic Health Information (EHI) export capability, such as the HL7 International EHI Export API / Bulk FHIR export pattern, which provides a patient-scoped mechanism to retrieve a comprehensive snapshot of longitudinal clinical data from an originating EHR. The HL7 International Bulk Data Access specification defines asynchronous export semantics suitable for transferring complete patient records or large clinical histories.

After an initial export has been imported into a PHR, subsequent exchanges should avoid requiring full re-export whenever possible. Instead, incremental updates may be conveyed as atomic changes using mechanisms such as SMART Health Links, Patient Data Receipts, or event-driven notifications. These patterns allow a receiving PHR to determine what has changed since the prior import and apply only the newly available content, preserving provenance and reducing duplication.

Where event synchronization is needed, HL7 International FHIRCast can provide session- or event-based notification that relevant clinical context has changed, allowing a PHR or downstream system to request only newly available resources rather than repeating a full export. In this model, FHIRCast acts as a trigger, while Smart Health Links or similar exchange artifacts provide retrievable payload references.

Taken together, these mechanisms create a lifecycle comparable to distributed source-control workflows:

Clone: initial longitudinal record acquisition through EHI export / bulk patient export
Pull: retrieval of incremental changes from external systems
Commit: application of atomic updates into the local longitudinal record
Merge: reconciliation of overlapping data received from multiple EHR sources

This pattern is especially important when a PHR imports multiple exports over time, including repeated exports from the same EHR and exports from different organizations. The PHR SHOULD preserve source provenance, compare resource identity and version metadata, and reconcile overlapping records using stable identifiers, timestamps, and provenance references so that newer representations supplement rather than overwrite clinically significant prior information.

A practical merge strategy is to treat the imported export as a source branch: resources already present in the PHR may be matched using logical identifiers, version metadata, or Provenance relationships, while newly received resources are appended and conflicting updates are retained with explicit provenance until reconciliation rules are applied.

![git-like-operations](git-like-operations.png){:width="100%"}


#### Consolidation of Distributed Records 

This is a key aspect of the PHR approach, as it allows for both patient-initiated data sharing and provider-initiated data retrieval.

![GitFlowForPhrs](GitFlowForPhrs.png){:width="100%"}

Key aspects of the above diagram include:  

- The EHR system serves as an authoritative source of truth for the patient's health data at that organization or healthcare system. Updates and changes originate from the EHR.  
- Ancillary services like labs and radiology systems have synchronized their records with the EHR, sending new data and receiving updates.  
- The PHR system, which the patient has access to, also synchronizes with the EHR, allowing the patient to view, contribute to, and manage their health information.  
- The patient's own health apps and personal devices can connect to the PHR system, pulling data and sending new health metrics or self-reported information to be incorporated into the patient's comprehensive record.  
- The diagram depicts a branching model, with the EHR acting as the "main" branch, and various "feature" branches representing the different connected systems and devices. Merging changes between these branches, similar to a Git workflow, ensures data integrity and consistency.  

This approach offers several benefits: it empowers patients to be active participants in their healthcare, enables real-time data sharing between providers and ancillary services, and creates a comprehensive, longitudinal view of the patient's health history. The use of standardized data formats and versioning principles helps address challenges around data silos, fragmentation, and lack of interoperability that often plague traditional healthcare IT systems.

## Architecture Features

A directed acyclic graph (DAG) interpretation of Personal Health Records supports several architectural features that implementers are encouraged to consider.

### Authoritative Repository Management

Both EHR and PHR systems may function as legally recognized repositories of patient medical information, depending on jurisdiction and operational context. In provider-operated environments, clinicians and healthcare organizations are responsible for maintaining records that are complete, current, and clinically reliable to the fullest extent possible. These repositories are increasingly accessible to patients through regulatory frameworks such as the 21st Century Cures Act.

A PHR does not replace the originating EHR as the authoritative source for provider-entered data, but may maintain patient-curated longitudinal copies that combine data from multiple authoritative systems.

### Branching and Merging

Each connected system (for example laboratories, radiology systems, specialist EHRs, PHRs, or patient applications) maintains its own representation of patient information and may be viewed conceptually as a branch derived from one or more upstream repositories.

When synchronization is required, a system retrieves patient data using standard FHIR interactions such as `GET`, search, or export operations. The receiving system then incorporates that information into its own local repository according to internal storage and reconciliation rules.

When updates are returned to another system, resources are submitted using FHIR `POST`, `PUT`, or `PATCH` interactions, depending on whether new resources are created or existing resources are updated. The receiving repository applies its own merge policies, identifier matching rules, and conflict handling to determine whether incoming content creates a new version, updates an existing resource, or coexists as an alternate representation.

For PHR implementations, this merge process is especially important because repeated imports may originate from:

- newer exports from the same EHR  
- exports from additional EHR systems  
- patient-entered observations or documents  
- linked records delivered through SMART Health Links or similar exchange patterns  

A practical merge strategy is to compare resource identifiers, business identifiers, timestamps, and provenance relationships before deciding whether resources represent replacement, supplementation, or coexistence.

### Versioning and Change Tracking

FHIR resource versioning provides native support for longitudinal change tracking through `meta.versionId`, `meta.lastUpdated`, and server-maintained history interactions.

Each accepted update to a resource may create a new server version that can later be retrieved using:

- `vread` to access a specific historical version of a resource  
- `history-instance` to retrieve the version history for an individual resource  
- `history-type` to review change activity across a resource type  

For example:

- `GET [base]/Patient/[id]/_history` retrieves the sequence of prior versions  
- `GET [base]/Patient/[id]/_history/[versionId]` retrieves a specific version (`vread`)  

These capabilities allow implementers to treat resource evolution similarly to a versioned filesystem: each accepted change becomes an addressable historical state rather than replacing prior content without traceability.

Where available, `Provenance` resources should accompany updates so that systems can preserve author, timestamp, source system, and reason for change.

In this sense, resource history functions as a version-addressable clinical object store, while provenance functions as the commit metadata associated with each accepted change.

### Replication and Synchronization

When a new PHR or downstream system connects, it may obtain an initial longitudinal copy of patient data through EHI Export, Bulk FHIR export, or patient-scoped retrieval APIs.

Subsequent synchronization may use incremental retrieval patterns rather than repeating full export operations. Systems may combine:

- bulk export for initial acquisition  
- SMART Health Links for incremental payload exchange  
- Patient Data Receipts for atomic update references  
- FHIRCast event notifications to signal that new data is available  

This supports a clone-and-pull lifecycle in which only newly available content is transferred after the initial exchange.

### Rollback and Recovery

FHIR does not define Git-style rollback commands directly; instead, prior resource versions remain accessible through history interactions when supported by the server.

If an incorrect update is identified, a system may:

- retrieve a prior version using `vread`  
- resubmit that prior state as a new update  
- preserve the corrective action through a new version entry  

This creates an auditable correction chain rather than deleting historical states.

### Offline Operation and Conflict Resolution

PHRs and other intermittently connected systems may maintain local copies of patient data and synchronize periodically.

Because offline systems may update data independently, reconciliation should consider:

- resource identity  
- version identifiers  
- business identifiers  
- provenance  
- timestamp ordering  

Where conflicts cannot be safely resolved automatically, systems should preserve both representations until human or policy-based reconciliation occurs.