Security and trust infrastructure for personal health records involves authentication, authorization, access control, audit logging, and secure data exchange. The [PHR-S Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88) defines a comprehensive Trust Infrastructure (TI) section covering these concerns. This page maps those requirements to relevant FHIR implementation guides and specifications.

### FHIR Security Implementation Guides

PHR systems conforming to this IG SHOULD implement the following security specifications:

| Security Concern | FHIR Implementation Guide | Usage |
|------------------|--------------------------|-------|
| App authorization | [SMART App Launch](https://hl7.org/fhir/smart-app-launch/) | OAuth 2.0-based authorization for apps accessing FHIR data |
| Identity verification | [UDAP Security](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/) | Unified Data Access Profiles for scalable identity trust |
| Audit logging | [FHIR AuditEvent](https://www.hl7.org/fhir/R4/auditevent.html) | Logging access, disclosure, and modification events |
| Consent management | [FHIR Consent](https://www.hl7.org/fhir/R4/consent.html) | Patient-directed access control and consent directives |
| Data integrity | [FHIR Provenance](https://www.hl7.org/fhir/R4/provenance.html) | Tracking data origin, authorship, and chain of custody |
| Transport security | [FHIR Security Module](https://www.hl7.org/fhir/security.html) | TLS, signatures, and general security guidance |

For file-based exchange using the `.sphr` format, see also the [Data Provenance and Security](recordkeeping.html#data-provenance-and-security) section in Record Keeping, which covers signing, encryption, and trust mechanisms for PHR files.

### PHR-S Functional Model: Trust Infrastructure

The following table lists the Trust Infrastructure (TI) section headings from the [PHR-S Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88). Implementors are encouraged to download the associated PDF for detailed requirements.

| Section |  Header Name |
| ---------- | :-------------------- |
| TI.1 | Security |
| TI.1.1 | Entity Authentication |
| TI.1.2 | Entity Authorization |
| TI.1.3 | Entity Access Control |
| TI.1.4 | Patient Access Management |
| TI.1.5 | Non-Repudiation |
| TI.1.6 | Secure Data Exchange |
| TI.1.7 | Secure Data Routing |
| TI.1.8 | Patient Privacy and Confidentiality |
| TI.1.9 | System Operation Measurements |
| TI.1.10 | Service Availability |
| TI.1.11 | Trusted Information Exchange Environment |
| TI.2 | Audit |
| TI.2.1 | Audit Triggers |
| TI.2.2 | Audit Log Management |
| TI.2.3 | Audit Notification and Review |
| TI.3 | Registry and Directory Services |
| TI.4 | Standard Terminology and Terminology Services |
| TI.5 | Standards-Based Interoperability |
| TI.6 | Business Rules Management |
| TI.7 | Workflow Management |
| TI.8 | Database Backup and Recovery |
| TI.9 | System Management Operations and Performance |
| TI.10 | Standard or Preferred Clinical Models and Clinical Model Services |

### References

- [PHR-S Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)
- [FHIR Security and Privacy Module](https://www.hl7.org/fhir/security.html)
- [SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/)
- [UDAP Security IG](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/)
