# Social Media Post - Personal Health Records v1.0.0-ballot2

## Logical Model: Social Media Post 

 
A logical model representing a social media post from platforms such as Facebook, Instagram, Twitter/X, Tumblr, etc. Captures the post content, media attachments, and metadata. Relevant for patient-reported outcomes, behavioral health context, and longitudinal health narratives. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.phr|current/StructureDefinition/SocialMedia)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-SocialMedia.csv), [Excel](../StructureDefinition-SocialMedia.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SocialMedia",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pe"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/phr/ImplementationGuide/hl7.fhir.uv.phr"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/uv/phr/StructureDefinition/SocialMedia",
  "version" : "1.0.0-ballot2",
  "name" : "SocialMedia",
  "title" : "Social Media Post",
  "status" : "active",
  "date" : "2026-06-11T16:28:41-06:00",
  "publisher" : "HL7 International / Patient Empowerment",
  "contact" : [
    {
      "name" : "HL7 International / Patient Empowerment",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/patientempowerment"
        }
      ]
    }
  ],
  "description" : "A logical model representing a social media post from platforms such as Facebook, Instagram, Twitter/X, Tumblr, etc. Captures the post content, media attachments, and metadata. Relevant for patient-reported outcomes, behavioral health context, and longitudinal health narratives.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/fhir/uv/phr/StructureDefinition/SocialMedia",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SocialMedia",
        "path" : "SocialMedia",
        "short" : "Social Media Post",
        "definition" : "A logical model representing a social media post from platforms such as Facebook, Instagram, Twitter/X, Tumblr, etc. Captures the post content, media attachments, and metadata. Relevant for patient-reported outcomes, behavioral health context, and longitudinal health narratives."
      },
      {
        "id" : "SocialMedia.subject",
        "path" : "SocialMedia.subject",
        "short" : "The patient who authored or owns the post",
        "definition" : "The patient who authored or owns the post",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "SocialMedia.platform",
        "path" : "SocialMedia.platform",
        "short" : "Social media platform (e.g. Facebook, Instagram, Twitter/X, Tumblr)",
        "definition" : "Social media platform (e.g. Facebook, Instagram, Twitter/X, Tumblr)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "SocialMedia.postDateTime",
        "path" : "SocialMedia.postDateTime",
        "short" : "Date and time the post was published",
        "definition" : "Date and time the post was published",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "SocialMedia.title",
        "path" : "SocialMedia.title",
        "short" : "Title or headline of the post, if applicable",
        "definition" : "Title or headline of the post, if applicable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SocialMedia.body",
        "path" : "SocialMedia.body",
        "short" : "Text body or description of the post",
        "definition" : "Text body or description of the post",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "markdown"
          }
        ]
      },
      {
        "id" : "SocialMedia.url",
        "path" : "SocialMedia.url",
        "short" : "URL link to the original post",
        "definition" : "URL link to the original post",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "url"
          }
        ]
      },
      {
        "id" : "SocialMedia.media",
        "path" : "SocialMedia.media",
        "short" : "Media attachments on the post",
        "definition" : "Media attachments on the post",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SocialMedia.media.type",
        "path" : "SocialMedia.media.type",
        "short" : "Type of media (e.g. image, video, audio, link)",
        "definition" : "Type of media (e.g. image, video, audio, link)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "SocialMedia.media.url",
        "path" : "SocialMedia.media.url",
        "short" : "URL of the media resource",
        "definition" : "URL of the media resource",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "url"
          }
        ]
      },
      {
        "id" : "SocialMedia.media.description",
        "path" : "SocialMedia.media.description",
        "short" : "Alt text or description of the media",
        "definition" : "Alt text or description of the media",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SocialMedia.tag",
        "path" : "SocialMedia.tag",
        "short" : "Tags or hashtags associated with the post",
        "definition" : "Tags or hashtags associated with the post",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SocialMedia.visibility",
        "path" : "SocialMedia.visibility",
        "short" : "Visibility or privacy setting (e.g. public, friends-only, private)",
        "definition" : "Visibility or privacy setting (e.g. public, friends-only, private)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
