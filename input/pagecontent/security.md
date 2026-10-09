Personal Health Records spend most of their life *at rest* — on a phone, a laptop, a thumbdrive, or a CD in a shoebox — punctuated by occasional transfers between systems. The security model of this guide follows that reality: protect data at rest with the encryption facilities of the operating system and storage volume, and protect data in transit with the transport layer. This guide does **not** define its own file-level encryption or signing scheme.

### Files Are Not Self-Protecting

`.phr` files are plain text (NDJSON), and `.sphr` files are ordinary zip archives. **Neither format is self-protecting, and systems MUST NOT treat possession of a `.phr` or `.sphr` file as evidence of authorization.** Anyone who can read the file can read the record. Protection comes from the environment the file lives in, not from the file itself.

Earlier drafts of this guide specified passphrase- and public-key-based encryption of `.sphr` files. That approach was removed: bespoke file-level cryptography creates key-management burdens (key distribution, recovery, revocation) that consumer PHR applications have not implemented in practice, and it gives patients a false sense that an exported file is "safe" to leave anywhere. Connectathon testing across six systems (Sept 2026) exercised none of the file-level cryptography; all systems relied on transport and volume security.

### Protecting Data at Rest

Systems that store PHR data — and patients who keep exported files — SHOULD rely on volume-level or file-system-level encryption provided by the platform:

| Platform | Mechanism |
|----------|-----------|
| macOS | [FileVault](https://support.apple.com/guide/mac-help/protect-data-on-your-mac-with-filevault-mh11785/mac) full-disk encryption |
| Windows | [BitLocker](https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/bitlocker/) drive encryption |
| Linux | [LUKS/dm-crypt](https://gitlab.com/cryptsetup/cryptsetup) volume encryption |
| iOS | File-based [Data Protection](https://support.apple.com/guide/security/data-protection-overview-secf6276da8a/web) (enabled by default) |
| Android | [File-based encryption](https://source.android.com/docs/security/features/encryption/file-based) (enabled by default) |
| Removable media (USB, external drives) | Hardware-encrypted drives, or an encrypted volume (BitLocker To Go, FileVault-formatted volume, VeraCrypt) |

Guidance for implementers and for patient-facing documentation:

- PHR applications SHOULD store their data within the platform's encrypted storage areas (e.g., app-private storage on mobile platforms), and SHOULD NOT export unencrypted copies to shared locations without informing the user.
- When exporting `.phr`/`.sphr` files to removable media for physical exchange, the media itself SHOULD be encrypted, or the file SHOULD be placed in an encrypted container.
- Burned optical media (CD/DVD) generally cannot be volume-encrypted after the fact; records distributed this way SHOULD be treated as unprotected and handled accordingly (physical custody, prompt import, destruction when no longer needed).

### Protecting Data in Transit

- System-to-system transfers (APIs described on the [API Endpoints](./api.html) page) MUST use TLS (HTTPS).
- [SMART Health Links](https://docs.smarthealthit.org/smart-health-links/) carry their own encryption: the shared payload is encrypted (A256GCM) and the decryption key travels inside the link/QR code. SHL is the RECOMMENDED mechanism for patient-mediated sharing of records with third parties.
- Physical media exchange is a transfer too — see the removable-media guidance above.

### Integrity and Provenance

Data integrity and authorship questions are handled with FHIR's standard mechanisms rather than file-level signatures: [Provenance](https://www.hl7.org/fhir/R4/provenance.html) resources record who created and transformed each record, and [AuditEvent](https://www.hl7.org/fhir/R4/auditevent.html) records access. See the [Merging and Versioning](./longitudinal.html) page for how provenance supports reconciliation across sources.

### Functional Model Reference

The [PHR-S Functional Model](https://hl7.org/ehrs/uv/phrsfmr2/) defines the complete catalog of security, audit, and infrastructure conformance criteria for PHR *systems* (sections TI.1 Security and TI.2 Audit, including authentication, authorization, access control, non-repudiation, and audit triggers). PHR system implementers SHOULD consult the functional model directly; this guide does not restate those system-level requirements, since this guide's scope is the record format and its exchange rather than the system that hosts it.
