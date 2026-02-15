

Systems MAY wish to implement standard APIs for generating a `.phr` or `.sphr` file.  Standard API queries that have been used in other systems are listed below.

```bash
# export everything from a single-user system as a FHIR Bundle
GET /Bundle/$phr-export

# export everything from a single-user system as an NDJSON Bulkd Data file
GET /Bundle/$phr-export?outputFormat=ndjson

# export everything from a single-user system as a PHR file
GET /Bundle/$phr-export?outputFormat=phr

# export everything from a single-user system as a SPHR file with security
GET /Bundle/$phr-export?outputFormat=sphr

# export everything from a specific date to current from a single-user system
GET /Bundle/$phr-export?start=2010

# export everything in a specific date range from a single-user system
GET /Bundle/$phr-export?start=2010&end=2020-06

# export everything for a specific patient in a multi-user system
GET /Bundle/$phr-export?patient=Patient/12345

# post a record to another system to be imported (NDJSON format)
POST /Bundle/$import
```

Systems MUST post the API endpoints they use in the system's CapabilityStatement.

### Query and Filter Parameters

PHR systems should support flexible filtering to allow patients and applications to retrieve specific subsets of data.

#### Standard FHIR Search Parameters

All standard FHIR search parameters apply. Common patterns for PHR queries:

```http
# Resources modified since a date
GET /Observation?_lastUpdated=gt2025-01-01

# Resources within a date range
GET /Observation?date=ge2024-01-01&date=le2024-12-31

# Specific resource types
GET /Condition?patient=Patient/123

# By category
GET /Observation?category=vital-signs
GET /Observation?category=laboratory
GET /Observation?category=activity
```

#### PHR-Specific Filters

##### By Data Source

Filter by originating system:

```http
GET /Observation?_source=urn:ehr:hospital-xyz
GET /Observation?_source=urn:device:fitbit
GET /Observation?_source=urn:phr:patient-entered
```

##### By Clinical Relevance

Filter for active/current data (suitable for IPS generation):

```http
GET /Condition?clinical-status=active
GET /MedicationStatement?status=active
GET /AllergyIntolerance?clinical-status=active
```

##### By Verification Status

Distinguish verified vs unverified data:

```http
GET /Condition?verification-status=confirmed
GET /Observation?_tag=clinician-verified
```

#### Bulk Export Filters

When using the $phr-export operation:

```http
# Export only specific resource types
GET /Patient/123/$phr-export?_type=Condition,MedicationStatement,AllergyIntolerance

# Export data from a specific time period
GET /Patient/123/$phr-export?_since=2024-01-01&_until=2024-12-31

# Export only clinical data (exclude device/activity data)
GET /Patient/123/$phr-export?_profile=clinical

# Export only for sharing (IPS-compatible subset)
GET /Patient/123/$phr-export?_profile=ips-compatible
```

#### Patient Sharing Preferences

PHRs may implement patient-controlled sharing filters using Consent resources:

```json
{
  "resourceType": "Consent",
  "id": "sharing-preferences",
  "status": "active",
  "scope": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/consentscope",
      "code": "patient-privacy"
    }]
  },
  "provision": {
    "type": "deny",
    "provision": [
      {
        "type": "permit",
        "class": [
          {"code": "Condition"},
          {"code": "MedicationStatement"},
          {"code": "AllergyIntolerance"}
        ]
      }
    ]
  }
}
```

#### Response Pagination

For large result sets:

```http
GET /Observation?_count=100&_offset=0
```

Response includes pagination links:

```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1250,
  "link": [
    {"relation": "self", "url": "...?_count=100&_offset=0"},
    {"relation": "next", "url": "...?_count=100&_offset=100"}
  ]
}
```

#### Selective Field Retrieval

Request only specific elements to reduce payload size:

```http
GET /Observation?_elements=code,valueQuantity,effectiveDateTime
```
