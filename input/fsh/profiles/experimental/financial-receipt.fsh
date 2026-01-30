Logical: FinancialReceipt
Id: FinancialReceipt
Title: "Financial Receipt"
Description: "A logical model for over-the-counter (OTC) health-related purchase receipts. Captures expenses for items such as pharmacy purchases, medical supplies, copays, and wellness products that may not generate a formal insurance Claim resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient or person that purchased the item"
* date 1..1 dateTime "The date of the transaction"
* vendor 0..1 string "Vendor or merchant name"
* category 0..1 CodeableConcept "Category of expense (e.g. pharmacy, medical supply, copay, wellness)"
* item 0..* BackboneElement "Line items on the receipt"
  * description 1..1 string "Item description"
  * quantity 0..1 SimpleQuantity "Quantity purchased"
  * unitPrice 0..1 Money "Price per unit"
  * amount 0..1 Money "Line item total"
* subtotal 0..1 Money "Subtotal before tax"
* taxAmount 0..1 Money "Tax amount"
* total 1..1 Money "Total amount paid"
* paymentMethod 0..1 CodeableConcept "Payment method (e.g. cash, credit, debit, HSA, FSA)"
* relatedClaim 0..1 Reference(Claim) "Related insurance claim, if any"
