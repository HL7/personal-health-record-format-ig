Instance: pghd-medicationadministration-insulin
InstanceOf: PGHDMedicationAdministrationInsulin
Description: "MedicationAdministration Insulin Example"
Usage: #example
* contained
  * resourceType = "Medication"
  * id = "medication"
  * status = #active
  * ingredient[0]
    * itemCodeableConcept
      * text = "insulin lispro"
      * coding
        * system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        * code = #1157460
        * display = "insulin lispro / insulin lispro protamine, human Injectable Product"
* id = "pghd-medicationadministration-insulin-1"
* status = #completed
* medicationReference
  * reference = "#medication"
* subject
  * reference = "Patient/1"
* effectiveDateTime = "2020-10-05T12:00:00-05:00"
