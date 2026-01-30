Logical: SocialMedia
Id: SocialMedia
Title: "Social Media Usage"
Description: "A logical model representing social media and digital device usage patterns relevant to patient mental health and wellness. Captures screen time, engagement patterns, and self-reported sentiment. Relevant for behavioral health, digital wellness, and adolescent health monitoring."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient"
* effectivePeriod 0..1 Period "Time period of observation"
* platform 0..1 string "Social media platform or app name"
* screenTime 0..1 Duration "Total screen time during period"
* activeEngagementTime 0..1 Duration "Time actively posting, messaging, or interacting"
* passiveConsumptionTime 0..1 Duration "Time passively scrolling or viewing"
* interactionCount 0..1 integer "Number of social interactions (messages, comments, reactions)"
* notificationCount 0..1 integer "Number of notifications received"
* sentiment 0..1 CodeableConcept "Self-reported emotional sentiment after usage"
* contentCategory 0..* CodeableConcept "Categories of content consumed"
* device 0..1 Reference(Device) "Device used for access"
