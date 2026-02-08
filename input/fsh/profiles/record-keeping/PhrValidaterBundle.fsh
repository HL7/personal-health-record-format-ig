Profile: PhrValidaterBundle
Parent: Bundle
Description: """
A Bundle designed to package the contents of index.phr into a Bundle for efficient validation.
"""

* type = #collection

// --- slicing ---
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    PhrCompositionSlice        1..1 and
    PhrDocumentManifestSlice  1..1 and
    PhrDocumentReferenceSlice 1..*

// --- slice constraints (これがキモ) ---
* entry[PhrCompositionSlice].resource only PhrComposition
* entry[PhrDocumentManifestSlice].resource only PhrDocumentManifest
* entry[PhrDocumentReferenceSlice].resource only PhrDocumentReference
