# Algorithms - Personal Health Records v1.0.0-ballot2

## Algorithms

The following algorithms are provided for implementors who wish to add advanced functionalities to their PHR implmentations.

#### Quality Control Checks

This algorithm is intended as a high-level quality control check for longitudinal records assembled from multiple healthcare systems.

1. Data Extraction and Integration: Collect and consolidate data from all relevant EHR sources into a unified repository.
1. Deduplicate Records - Identify and remove duplicate entries to ensure data uniqueness and accuracy.
1. Validate Resource Coherence: Ensure that all data entities and their relationships form a coherent and interconnected graph.
1. Standardize Units of Measure: Convert all observations to consistent units of measure to maintain uniformity across the PHR.
1. Ensure Terminology Consistency: Map and standardize medical terminologies to ensure semantic consistency throughout the record.
1. Validate and Update Formulas: Review and update any derived data or calculated fields to use current and accurate formulas.
1. Mitigate Social Determinate Bias: Analyze and adjust the data to align racial and sex/gender data.
1. Verify Correct Patient Mapping: Confirm that all records are accurately associated with the correct patient using unique identifiers.

#### Normalize Patient Identifiers

The algorithm for normalizing patient identifiers is intended to ensure consistency in patient data across different healthcare systems. This process simplifies the management of a health records, aiming to enhance the accuracy and accessibility of these records.

1. Input Validation: Verify that the patient identifier is a valid, non-empty string containing only permitted characters (typically alphanumeric).
1. Standardize Case: Convert the entire identifier to a consistent case (typically lowercase or uppercase) to eliminate variations caused by different capitalization.
1. Remove Extraneous Spaces: Strip all leading, trailing, and unnecessary internal whitespaces from the identifier to ensure uniform formatting.
1. Remove Special Characters: Eliminate any non-standard punctuation, symbols, or formatting characters that could create inconsistencies across different healthcare systems.
1. Apply Standardization Rules: Implement a predefined set of rules to handle common identifier variations, such as:
1. Removing hyphens or other separators – Handling different identifier format conventions – Resolving potential alias or alternate identifier formats
– Validation Check: Confirm that the normalized identifier meets predefined length, format, and content requirements for the specific healthcare system.
1. Generate Unique Internal Identifier: If necessary, create a consistent, internal unique identifier.
1. Output: Return the standardized, clean patient identifier ready for use in health record management systems.

#### Longitudinal Chronology (Sorting)

This algorithm is intended to organize patient records in chronological order. Its main function is to sort various entries, like doctor's notes and test results, by their dates. This makes it easier to view a patient's medical history over time. By putting the records in order, the algorithm helps doctors and healthcare providers track changes and patterns in a patient's health, supporting more informed medical decisions and analysis. This straightforward approach aims to improve patient care by providing a clearer picture of each patient's medical journey.

1. Data Collection: Gather all patient records from various sources, including doctor's notes, test results, medical procedures, and diagnostic reports.
1. Date Extraction: Parse and extract the date information from each medical record, ensuring consistent date format parsing across different document types and potential date representations.
1. Date Validation: Verify the integrity and validity of extracted dates, checking for: – Completeness of date information – Realistic date ranges – Handling of potential data entry errors or incomplete timestamps
1. Sorting Mechanism: Implement a stable sorting algorithm (such as merge sort or TimSort) to arrange records from earliest to latest chronological order, preserving the original metadata of each record.
1. Handle Ambiguous Timestamps: Develop a resolution strategy for records with: – Identical dates – Partial or imprecise date information – Potential conflicts in chronological placement
1. Create Ordered Sequence: Generate a new, sequentially ordered list of patient records that represents the patient's medical history in precise temporal progression.
1. Metadata Preservation: Ensure that each record maintains its original detailed information while being reordered, allowing for comprehensive review of medical history.
1. Output Preparation: Produce a chronologically sorted collection of patient records that can be easily reviewed by healthcare providers for comprehensive medical assessment.

#### Reminders

This algorithm is intended to send out reminders based on a schedule. It uses a clock to keep track of time and automatically triggers alerts for tasks or events at predetermined times. This tool is designed to be straightforward and user-friendly, helping individuals stay organized and on top of their schedules without the need for manual reminders. By providing timely notifications, it assists in managing daily routines and appointments efficiently.

1. Reminder Input: Capture event details including precise timestamp, description, and notification preference.
1. Time Tracking: Continuously monitor system clock against stored reminder timestamps.
1. Trigger Check: Compare current time with scheduled reminders, identifying when an alert should be generated.
1. Notification Dispatch: When time matches, immediately send personalized reminder through preferred communication channel.
1. Recurrence Management: Update recurring reminders by automatically calculating and setting next trigger time after each notification.
1. User Control: Provide basic options to modify, snooze, or delete individual reminders as needed.

#### Summarize Document

This algorithm is intended to summarize patient records by converting them into a clinical text normal form. After this standardization, it then uses large language models to create a narrative text. This process simplifies complex medical data into a more readable format, making it easier for healthcare professionals to quickly understand a patient's history. The algorithm aims to enhance the efficiency of reviewing patient records by providing clear, concise summaries.

1. Ingest FHIR-formatted patient records.
1. Apply LLM-driven clinical text normalization to standardize medical terminology and structure.
1. Insert generated narrative summary into {Resource}.text.div field.
1. Gather all text.div narratives.
1. Apply a second round of LLM-driven analysis, and summarize into a coherent narrative summary.
1. Validate summary for clinical accuracy and patient privacy compliance.

#### Gaps in Care Reporting

This algorithm is intended to generate reports on gaps in healthcare, specifically focusing on routine procedures like annual physicals or breast/prostate cancer screenings for middle-aged individuals. This tool scans patient records to identify when these important health checks are due or overdue. By highlighting these gaps, the algorithm assists healthcare providers in ensuring that patients receive timely and necessary medical attention. This approach aims to promote preventive healthcare and early detection, contributing to better health outcomes.

1. Define Screening Criteria: Establish standard screening intervals for key health checks based on age, gender, and clinical guidelines.
1. Patient Record Analysis: Scan comprehensive patient records to identify most recent screening dates for each recommended procedure.
1. Gap Identification: Compare patient's last screening date against recommended interval, flagging procedures that are due or overdue.
1. Risk Stratification: Prioritize gaps based on patient age, medical history, and potential health risks.
1. Report Generation: Create a clear, actionable summary highlighting missed or upcoming preventive screenings.
1. Notification Preparation: Generate patient and provider alerts for recommended health interventions.

#### Smart Agents (SCUBA, etc)

This algorithm is intended to act as a software agent that monitors a resource, such as Oxygen usage by a SCUBA diver. This tool mimics a SCUBA diver's dive computer which monitors the amount of air remaining, but applies this concept to other resources that need tracking. The algorithm provides a utilization metric, alerting users as the resource depletes over time. This functionality is particularly useful in scenarios where managing the usage of a limited resource is critical (i.e. remaining medication reserves), ensuring users are aware of the remaining quantity and can plan accordingly.

1. Initialize Resource Parameters: Define total resource quantity, critical threshold, and measurement interval.
1. Continuous Monitoring: Track real-time resource consumption and calculate remaining quantity.
1. Consumption Rate Calculation: Compute utilization velocity and projected depletion time.
1. Alert Generation: Create graduated warning levels as resource approaches critical thresholds.
1. Predictive Projection: Forecast estimated time remaining based on current consumption pattern.
1. User Notification: Dispatch alerts indicating resource status and recommended actions.

