Logical: SocialMedia
Id: SocialMedia
Title: "Social Media Post"
Description: "A logical model representing a social media post from platforms such as Facebook, Instagram, Twitter/X, Tumblr, etc. Captures the post content, media attachments, and metadata. Relevant for patient-reported outcomes, behavioral health context, and longitudinal health narratives."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* subject 1..1 Reference(Patient) "The patient who authored or owns the post"
* platform 0..1 CodeableConcept "Social media platform (e.g. Facebook, Instagram, Twitter/X, Tumblr)"
* postDateTime 0..1 dateTime "Date and time the post was published"
* title 0..1 string "Title or headline of the post, if applicable"
* body 0..1 markdown "Text body or description of the post"
* url 0..1 url "URL link to the original post"
* media 0..* BackboneElement "Media attachments on the post"
  * type 0..1 CodeableConcept "Type of media (e.g. image, video, audio, link)"
  * url 0..1 url "URL of the media resource"
  * description 0..1 string "Alt text or description of the media"
* tag 0..* string "Tags or hashtags associated with the post"
* visibility 0..1 CodeableConcept "Visibility or privacy setting (e.g. public, friends-only, private)"
