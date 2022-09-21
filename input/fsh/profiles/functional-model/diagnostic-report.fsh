// // This is a simple example of a FSH file.
// // This file can be renamed, and additional FSH files can be added.
// // SUSHI will look for definitions in any file using the .fsh ending.

// Profile: PhrDiagnosticReport
// Parent: DiagnosticReport
// Description: "Standard PHR profile of the DiagnosticReport resource."
// // Usage: #definition

// Instance: ExampleDiagnosticReport
// InstanceOf: PhrDiagnosticReport
// Description: "John Doe - DiagnosticReport"
// * status = #final
// * code = http://snomed.info/sct#184004 "Withdrawal arrhythmia"
// // * patient.display = "John Doe"
// // * patient.reference = "Patient/john-doe"