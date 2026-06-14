
The following algorithms are provided for implementors who wish to add advanced functionalities to their PHR implmentations.

#### Quality Control Checks  
This algorithm is intended as a high-level quality control check for longitudinal records assembled from multiple healthcare systems.  

1. Data Extraction and Integration: Collect and consolidate data from all relevant EHR sources into a unified repository.
2. Deduplicate Records - Identify and remove duplicate entries to ensure data uniqueness and accuracy.
3. Validate Resource Coherence: Ensure that all data entities and their relationships form a coherent and interconnected graph.
4. Standardize Units of Measure: Convert all observations to consistent units of measure to maintain uniformity across the PHR.
5. Ensure Terminology Consistency: Map and standardize medical terminologies to ensure semantic consistency throughout the record.
6. Validate and Update Formulas: Review and update any derived data or calculated fields to use current and accurate formulas.
7. Mitigate Social Determinate Bias: Analyze and adjust the data to align racial and sex/gender data.
8. Verify Correct Patient Mapping: Confirm that all records are accurately associated with the correct patient using unique identifiers.


#### Normalize Patient Identifiers
The algorithm for normalizing patient identifiers is intended to ensure consistency in patient data across different healthcare systems. This process simplifies the management of a health records, aiming to enhance the accuracy and accessibility of these records. 

1. Input Validation: Verify that the patient identifier is a valid, non-empty string containing only permitted characters (typically alphanumeric). 
2. Standardize Case: Convert the entire identifier to a consistent case (typically lowercase or uppercase) to eliminate variations caused by different capitalization.  
3. Remove Extraneous Spaces: Strip all leading, trailing, and unnecessary internal whitespaces from the identifier to ensure uniform formatting.  
4. Remove Special Characters: Eliminate any non-standard punctuation, symbols, or formatting characters that could create inconsistencies across different healthcare systems.  
5. Apply Standardization Rules: Implement a predefined set of rules to handle common identifier variations, such as:
6. Removing hyphens or other separators
-- Handling different identifier format conventions
-- Resolving potential alias or alternate identifier formats  
-- Validation Check: Confirm that the normalized identifier meets predefined length, format, and content requirements for the specific healthcare system.  
7. Generate Unique Internal Identifier: If necessary, create a consistent, internal unique identifier.
8. Output: Return the standardized, clean patient identifier ready for use in health record management systems.

#### Longitudinal Chronology (Sorting)
This algorithm is intended to organize patient records in chronological order. Its main function is to sort various entries, like doctor's notes and test results, by their dates. This makes it easier to view a patient's medical history over time. By putting the records in order, the algorithm helps doctors and healthcare providers track changes and patterns in a patient's health, supporting more informed medical decisions and analysis. This straightforward approach aims to improve patient care by providing a clearer picture of each patient's medical journey.

1. Data Collection: Gather all patient records from various sources, including doctor's notes, test results, medical procedures, and diagnostic reports.
2. Date Extraction: Parse and extract the date information from each medical record, ensuring consistent date format parsing across different document types and potential date representations.
3. Date Validation: Verify the integrity and validity of extracted dates, checking for:
-- Completeness of date information
-- Realistic date ranges
-- Handling of potential data entry errors or incomplete timestamps
4. Sorting Mechanism: Implement a stable sorting algorithm (such as merge sort or TimSort) to arrange records from earliest to latest chronological order, preserving the original metadata of each record.
5. Handle Ambiguous Timestamps: Develop a resolution strategy for records with:
-- Identical dates
-- Partial or imprecise date information
-- Potential conflicts in chronological placement
6. Create Ordered Sequence: Generate a new, sequentially ordered list of patient records that represents the patient's medical history in precise temporal progression.
7. Metadata Preservation: Ensure that each record maintains its original detailed information while being reordered, allowing for comprehensive review of medical history.
8. Output Preparation: Produce a chronologically sorted collection of patient records that can be easily reviewed by healthcare providers for comprehensive medical assessment.


#### Reminders
This algorithm is intended to send out reminders based on a schedule. It uses a clock to keep track of time and automatically triggers alerts for tasks or events at predetermined times. This tool is designed to be straightforward and user-friendly, helping individuals stay organized and on top of their schedules without the need for manual reminders. By providing timely notifications, it assists in managing daily routines and appointments efficiently.

1. Reminder Input: Capture event details including precise timestamp, description, and notification preference.
2. Time Tracking: Continuously monitor system clock against stored reminder timestamps.
3. Trigger Check: Compare current time with scheduled reminders, identifying when an alert should be generated.
4. Notification Dispatch: When time matches, immediately send personalized reminder through preferred communication channel.
5. Recurrence Management: Update recurring reminders by automatically calculating and setting next trigger time after each notification.
6. User Control: Provide basic options to modify, snooze, or delete individual reminders as needed.


#### Summarize Document
This algorithm is intended to summarize patient records by converting them into a clinical text normal form. After this standardization, it then uses large language models to create a narrative text. This process simplifies complex medical data into a more readable format, making it easier for healthcare professionals to quickly understand a patient's history. The algorithm aims to enhance the efficiency of reviewing patient records by providing clear, concise summaries.

1. Ingest FHIR-formatted patient records.
2. Apply LLM-driven clinical text normalization to standardize medical terminology and structure.
3. Insert generated narrative summary into {Resource}.text.div field.
4. Gather all text.div narratives.
5. Apply a second round of LLM-driven analysis, and summarize into a coherent narrative summary.
6. Validate summary for clinical accuracy and patient privacy compliance.


#### Gaps in Care Reporting
This algorithm is intended to generate reports on gaps in healthcare, specifically focusing on routine procedures like annual physicals or breast/prostate cancer screenings for middle-aged individuals. This tool scans patient records to identify when these important health checks are due or overdue. By highlighting these gaps, the algorithm assists healthcare providers in ensuring that patients receive timely and necessary medical attention. This approach aims to promote preventive healthcare and early detection, contributing to better health outcomes.

1. Define Screening Criteria: Establish standard screening intervals for key health checks based on age, gender, and clinical guidelines.
2. Patient Record Analysis: Scan comprehensive patient records to identify most recent screening dates for each recommended procedure.
3. Gap Identification: Compare patient's last screening date against recommended interval, flagging procedures that are due or overdue.
4. Risk Stratification: Prioritize gaps based on patient age, medical history, and potential health risks.
5. Report Generation: Create a clear, actionable summary highlighting missed or upcoming preventive screenings.
6. Notification Preparation: Generate patient and provider alerts for recommended health interventions.

#### Smart Agents (SCUBA, etc)
This algorithm is intended to act as a software agent that monitors a resource, such as Oxygen usage by a SCUBA diver. This tool mimics a SCUBA diver's dive computer which monitors the amount of air remaining, but applies this concept to other resources that need tracking. The algorithm provides a utilization metric, alerting users as the resource depletes over time. This functionality is particularly useful in scenarios where managing the usage of a limited resource is critical (i.e. remaining medication reserves), ensuring users are aware of the remaining quantity and can plan accordingly.  

1. Initialize Resource Parameters: Define total resource quantity, critical threshold, and measurement interval.
2. Continuous Monitoring: Track real-time resource consumption and calculate remaining quantity.
3. Consumption Rate Calculation: Compute utilization velocity and projected depletion time.
4. Alert Generation: Create graduated warning levels as resource approaches critical thresholds.
5. Predictive Projection: Forecast estimated time remaining based on current consumption pattern.
6. User Notification: Dispatch alerts indicating resource status and recommended actions.

---

### Advanced Algorithms for PHR Systems

#### Record Deduplication

Deduplication identifies and merges duplicate resources imported from multiple healthcare systems.

**Algorithm Definition:**

Given sets R₁, R₂, ..., Rₙ of FHIR resources from n different sources, find all pairs (rᵢ, rⱼ) where rᵢ ∈ Rₖ, rⱼ ∈ Rₘ, k ≠ m, and similarity(rᵢ, rⱼ) > θ (threshold).

**Similarity Function:**

```
similarity(r₁, r₂) = w₁·δ(code₁, code₂) + w₂·τ(date₁, date₂) + w₃·ν(value₁, value₂)
```

Where:
- δ = code similarity (1 if exact match, 0 otherwise)
- τ = temporal proximity (1 - |date₁ - date₂|/tolerance)
- ν = value similarity (varies by resource type)
- w₁ + w₂ + w₃ = 1 (weights)

**Resource-Specific Rules:**

| Resource | Key Fields | Date Tolerance | Threshold θ |
|----------|-----------|----------------|------------|
| Condition | code, onsetDateTime | ±30 days | 0.85 |
| MedicationStatement | medication.code, effectivePeriod | ±7 days | 0.90 |
| Observation (vitals) | code, effectiveDateTime | ±1 hour | 0.95 |
| Observation (labs) | code, effectiveDateTime | ±1 day | 0.90 |

**Academic Pseudocode:**

```
ALGORITHM DeduplicateResources(R: Set of Resources) → Set of ResourcePairs
BEGIN
    candidates ← ∅

    FOR each r₁ ∈ R DO
        FOR each r₂ ∈ R WHERE r₂ ≠ r₁ AND source(r₁) ≠ source(r₂) DO
            // Exact identifier match
            IF ∃ id ∈ identifiers(r₁) ∩ identifiers(r₂) THEN
                candidates ← candidates ∪ {(r₁, r₂, 1.0)}
                CONTINUE
            END IF

            // Fuzzy matching
            s ← CalculateSimilarity(r₁, r₂)
            IF s > θ THEN
                candidates ← candidates ∪ {(r₁, r₂, s)}
            END IF
        END FOR
    END FOR

    RETURN SortBySimilarity(candidates)
END

FUNCTION CalculateSimilarity(r₁, r₂: Resource) → ℝ
BEGIN
    score ← 0
    IF SameCode(r₁, r₂) THEN score ← score + 0.4
    IF DateWithinTolerance(r₁, r₂) THEN score ← score + 0.3
    IF SameValue(r₁, r₂) THEN score ← score + 0.2
    IF SameContext(r₁, r₂) THEN score ← score + 0.1
    RETURN score
END
```

**JavaScript + MongoDB Implementation:**

```javascript
async function findDuplicates(db, resourceType, threshold = 0.85) {
    const pipeline = [
        {
            $match: { resourceType: resourceType }
        },
        {
            $lookup: {
                from: 'resources',
                let: {
                    code: '$code.coding.code',
                    date: '$effectiveDateTime',
                    source: '$meta.source'
                },
                pipeline: [
                    {
                        $match: {
                            $expr: {
                                $and: [
                                    { $eq: ['$resourceType', resourceType] },
                                    { $ne: ['$meta.source', '$$source'] },
                                    { $in: ['$$code', '$code.coding.code'] }
                                ]
                            }
                        }
                    },
                    {
                        $addFields: {
                            dateDiff: {
                                $abs: {
                                    $subtract: [
                                        { $toDate: '$effectiveDateTime' },
                                        { $toDate: '$$date' }
                                    ]
                                }
                            }
                        }
                    },
                    {
                        $match: {
                            dateDiff: { $lt: 3600000 } // 1 hour in ms
                        }
                    }
                ],
                as: 'candidates'
            }
        },
        {
            $unwind: '$candidates'
        },
        {
            $project: {
                _id: 1,
                resourceType: 1,
                candidate: '$candidates',
                similarity: {
                    $add: [
                        0.4, // code match
                        { $multiply: [0.3,
                            { $subtract: [1,
                                { $divide: ['$candidates.dateDiff', 86400000] }
                            ]}
                        ]}
                    ]
                }
            }
        },
        {
            $match: {
                similarity: { $gte: threshold }
            }
        },
        {
            $sort: { similarity: -1 }
        }
    ];

    return await db.collection('resources').aggregate(pipeline).toArray();
}
```

---

#### Trend Detection

Identify clinically significant trends in time-series observations.

**Mathematical Model:**

For observations {(tᵢ, vᵢ)} where i = 1..n, fit linear regression:

```
v(t) = α + βt + ε
```

Where β (slope) indicates trend direction and magnitude.

**Statistical Significance:**

Trend is significant if:
1. p-value < 0.05 (null hypothesis: β = 0)
2. |β| > clinical threshold
3. R² > 0.5 (goodness of fit)

**Academic Pseudocode:**

```
ALGORITHM DetectTrend(observations: Array, windowDays: Integer) → TrendResult
BEGIN
    // Filter to time window
    recent ← FILTER(observations, o.date > now() - windowDays)

    // Remove outliers (>3σ)
    μ ← MEAN(recent.values)
    σ ← STDDEV(recent.values)
    cleaned ← FILTER(recent, |o.value - μ| ≤ 3σ)

    // Linear regression
    n ← LENGTH(cleaned)
    x ← [t₁, t₂, ..., tₙ]  // timestamps as days
    y ← [v₁, v₂, ..., vₙ]  // values

    x̄ ← MEAN(x)
    ȳ ← MEAN(y)

    // Calculate slope β
    Σxy ← Σᵢ(xᵢ - x̄)(yᵢ - ȳ)
    Σx² ← Σᵢ(xᵢ - x̄)²

    β ← Σxy / Σx²
    α ← ȳ - β·x̄

    // Calculate R² and p-value
    SSR ← Σᵢ(α + β·xᵢ - ȳ)²
    SST ← Σᵢ(yᵢ - ȳ)²
    R² ← SSR / SST

    SE_β ← √(Σᵢ(yᵢ - α - β·xᵢ)² / ((n-2)·Σx²))
    t_stat ← β / SE_β
    p_value ← 2·(1 - T_CDF(|t_stat|, n-2))

    // Assess clinical significance
    IF p_value < 0.05 AND |β| > THRESHOLD AND R² > 0.5 THEN
        RETURN TrendResult(
            significant: TRUE,
            direction: SIGN(β),
            rate: β,
            confidence: R²,
            p_value: p_value
        )
    ELSE
        RETURN TrendResult(significant: FALSE)
    END IF
END
```

**JavaScript Implementation:**

```javascript
function analyzeTrend(observations, windowDays = 30, clinicalThreshold = 2) {
    // Filter to time window
    const cutoff = Date.now() - (windowDays * 86400000);
    let recent = observations.filter(o =>
        new Date(o.effectiveDateTime).getTime() > cutoff
    );

    // Remove outliers
    const values = recent.map(o => o.valueQuantity.value);
    const mean = values.reduce((a,b) => a+b) / values.length;
    const stdDev = Math.sqrt(
        values.reduce((sq, v) => sq + Math.pow(v - mean, 2), 0) / values.length
    );

    recent = recent.filter(o =>
        Math.abs(o.valueQuantity.value - mean) <= 3 * stdDev
    );

    // Prepare data for regression
    const n = recent.length;
    const baseTime = new Date(recent[0].effectiveDateTime).getTime();
    const x = recent.map(o =>
        (new Date(o.effectiveDateTime).getTime() - baseTime) / 86400000
    );
    const y = recent.map(o => o.valueQuantity.value);

    // Calculate regression
    const xMean = x.reduce((a,b) => a+b) / n;
    const yMean = y.reduce((a,b) => a+b) / n;

    let sumXY = 0, sumX2 = 0;
    for (let i = 0; i < n; i++) {
        sumXY += (x[i] - xMean) * (y[i] - yMean);
        sumX2 += Math.pow(x[i] - xMean, 2);
    }

    const slope = sumXY / sumX2;
    const intercept = yMean - slope * xMean;

    // Calculate R²
    let SSR = 0, SST = 0;
    for (let i = 0; i < n; i++) {
        const predicted = intercept + slope * x[i];
        SSR += Math.pow(predicted - yMean, 2);
        SST += Math.pow(y[i] - yMean, 2);
    }
    const rSquared = SSR / SST;

    // Simplified p-value (t-distribution)
    let SSE = 0;
    for (let i = 0; i < n; i++) {
        SSE += Math.pow(y[i] - intercept - slope * x[i], 2);
    }
    const seBeta = Math.sqrt(SSE / ((n - 2) * sumX2));
    const tStat = slope / seBeta;
    const pValue = 2 * (1 - tCDF(Math.abs(tStat), n - 2));

    return {
        significant: pValue < 0.05 && Math.abs(slope) > clinicalThreshold && rSquared > 0.5,
        direction: slope > 0 ? 'increasing' : 'decreasing',
        rate: slope,
        confidence: rSquared,
        pValue: pValue
    };
}
```

**Clinical Thresholds:**

| Measurement | Concerning Trend |
|-------------|-----------------|
| Weight | >2 kg/week |
| Systolic BP | >10 mmHg/month |
| Resting HR | >10 bpm/month |
| Fasting glucose | >20 mg/dL/month |

---

#### Medication Interaction Checker

**Set Theory Formulation:**

Given active medications M = {m₁, m₂, ..., mₙ} and interaction database D: M × M → {severity, mechanism}, find all pairs (mᵢ, mⱼ) where D(mᵢ, mⱼ) exists.

**Academic Pseudocode:**

```
ALGORITHM CheckInteractions(medications: Set) → Array of Interactions
BEGIN
    active ← FILTER(medications, m.status = 'active')
    normalized ← MAP(active, m → NormalizeToRxNorm(m))

    interactions ← ∅

    FOR i ← 1 TO |normalized| - 1 DO
        FOR j ← i + 1 TO |normalized| DO
            result ← QueryInteractionDB(normalized[i], normalized[j])
            IF result ≠ NULL THEN
                interactions ← interactions ∪ {result}
            END IF
        END FOR
    END FOR

    RETURN SORT(interactions, BY severity DESC)
END
```

**JavaScript + External API:**

```javascript
async function checkMedicationInteractions(medicationStatements) {
    const active = medicationStatements.filter(m => m.status === 'active');

    // Extract RxNorm codes
    const rxnormCodes = active.map(m => {
        const coding = m.medicationCodeableConcept?.coding?.find(
            c => c.system === 'http://www.nlm.nih.gov/research/umls/rxnorm'
        );
        return coding?.code;
    }).filter(Boolean);

    const interactions = [];

    // Check all pairs
    for (let i = 0; i < rxnormCodes.length - 1; i++) {
        for (let j = i + 1; j < rxnormCodes.length; j++) {
            const response = await fetch(
                `https://rxnav.nlm.nih.gov/REST/interaction/interaction.json?` +
                `rxcui=${rxnormCodes[i]}&rxcui=${rxnormCodes[j]}`
            );

            const data = await response.json();

            if (data.interactionTypeGroup) {
                data.interactionTypeGroup.forEach(group => {
                    group.interactionType.forEach(type => {
                        type.interactionPair.forEach(pair => {
                            interactions.push({
                                medication1: pair.interactionConcept[0].minConceptItem.name,
                                medication2: pair.interactionConcept[1].minConceptItem.name,
                                severity: pair.severity,
                                description: pair.description
                            });
                        });
                    });
                });
            }
        }
    }

    return interactions.sort((a, b) =>
        severityRank(b.severity) - severityRank(a.severity)
    );
}

function severityRank(severity) {
    const ranks = { 'high': 3, 'moderate': 2, 'low': 1 };
    return ranks[severity?.toLowerCase()] || 0;
}
```

---

#### Care Gap Detection

**Set-Based Definition:**

Let G be guidelines, P be patient data. For each guideline g ∈ G:
- If g.applies(P) AND (last(P, g.procedure) = ∅ OR overdue(last(P, g.procedure), g.interval))
- Then gap(g) = TRUE

**Academic Pseudocode:**

```
ALGORITHM FindCareGaps(patient: Patient, guidelines: Set) → Set of CareGaps
BEGIN
    gaps ← ∅

    FOR EACH g ∈ guidelines DO
        IF NOT AppliesTo(g, patient) THEN CONTINUE

        lastOccurrence ← FindLastOccurrence(patient, g.procedureCodes)

        IF lastOccurrence = NULL THEN
            gaps ← gaps ∪ {CareGap(
                guideline: g,
                status: 'never_performed',
                priority: 'high'
            )}
        ELSE IF IsOverdue(lastOccurrence.date, g.interval) THEN
            gaps ← gaps ∪ {CareGap(
                guideline: g,
                status: 'overdue',
                lastDate: lastOccurrence.date,
                daysOverdue: DaysSince(lastOccurrence.date) - g.interval,
                priority: CalculatePriority(daysOverdue)
            )}
        END IF
    END FOR

    RETURN SORT(gaps, BY priority DESC, daysOverdue DESC)
END
```

**JavaScript + MongoDB:**

```javascript
const GUIDELINES = [
    {
        name: 'Colonoscopy',
        appliesTo: p => p.age >= 45,
        procedureCodes: ['73761001'], // SNOMED
        intervalYears: 10
    },
    {
        name: 'Mammogram',
        appliesTo: p => p.sex === 'female' && p.age >= 40,
        procedureCodes: ['71651007'],
        intervalYears: 2
    },
    {
        name: 'Flu Vaccine',
        appliesTo: p => true,
        procedureCodes: ['86198006'],
        intervalYears: 1
    },
    {
        name: 'Lipid Panel',
        appliesTo: p => p.age >= 35,
        procedureCodes: ['24331-1'], // LOINC
        intervalYears: 5
    }
];

async function findCareGaps(db, patientId) {
    const patient = await db.collection('Patient').findOne({ id: patientId });
    const age = calculateAge(patient.birthDate);
    patient.age = age;
    patient.sex = patient.gender;

    const gaps = [];

    for (const guideline of GUIDELINES) {
        if (!guideline.appliesTo(patient)) continue;

        // Find last occurrence
        const lastProcedure = await db.collection('Procedure').findOne({
            'subject.reference': `Patient/${patientId}`,
            'code.coding.code': { $in: guideline.procedureCodes }
        }, {
            sort: { 'performedDateTime': -1 }
        });

        if (!lastProcedure) {
            gaps.push({
                guideline: guideline.name,
                status: 'never_performed',
                priority: 'high'
            });
        } else {
            const lastDate = new Date(lastProcedure.performedDateTime);
            const daysSince = (Date.now() - lastDate.getTime()) / 86400000;
            const intervalDays = guideline.intervalYears * 365;

            if (daysSince > intervalDays) {
                gaps.push({
                    guideline: guideline.name,
                    status: 'overdue',
                    lastDate: lastDate,
                    daysOverdue: Math.floor(daysSince - intervalDays),
                    priority: daysSince > intervalDays * 1.5 ? 'high' : 'medium'
                });
            }
        }
    }

    return gaps.sort((a, b) => {
        if (a.priority !== b.priority) {
            return a.priority === 'high' ? -1 : 1;
        }
        return (b.daysOverdue || 0) - (a.daysOverdue || 0);
    });
}

function calculateAge(birthDate) {
    const today = new Date();
    const birth = new Date(birthDate);
    let age = today.getFullYear() - birth.getFullYear();
    const m = today.getMonth() - birth.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birth.getDate())) {
        age--;
    }
    return age;
}
```

---

#### LLM-Based Data Summarization

**Information Theory Foundation:**

Maximize information preservation while minimizing text length:

```
argmax_S I(R; S) subject to |S| ≤ L
```

Where:
- R = original resources
- S = summary text
- I(R; S) = mutual information
- L = maximum summary length

**Academic Pseudocode:**

```
ALGORITHM GenerateSummary(bundle: Bundle, summaryType: String) → String
BEGIN
    // Extract key resources
    conditions ← ExtractActiveConditions(bundle)
    medications ← ExtractActiveMedications(bundle)
    vitals ← ExtractRecentVitals(bundle, days: 30)

    // Convert to text normal form
    conditionsText ← FormatConditions(conditions)
    medsText ← FormatMedications(medications)
    vitalsText ← FormatVitals(vitals)

    // Construct prompt with constraints
    prompt ← CONSTRUCT_PROMPT(
        type: summaryType,
        conditions: conditionsText,
        medications: medsText,
        vitals: vitalsText,
        constraints: [
            "Use plain language",
            "Highlight concerning trends",
            "Do not fabricate",
            "Format as 2-3 paragraphs"
        ]
    )

    // Generate with safety parameters
    response ← LLM_API.generate(
        prompt: prompt,
        maxTokens: 500,
        temperature: 0.3  // Low for factual content
    )

    // Validate against source
    IF ContainsFabrication(response, bundle) THEN
        RAISE ValidationError("Summary contains fabricated information")
    END IF

    RETURN response
END
```

**JavaScript Implementation:**

```javascript
async function generatePatientSummary(bundle, summaryType = 'brief') {
    // Extract and normalize
    const conditions = bundle.entry
        .filter(e => e.resource.resourceType === 'Condition' &&
                     e.resource.clinicalStatus?.coding?.[0]?.code === 'active')
        .map(e => ({
            code: e.resource.code.coding[0].display,
            onset: e.resource.onsetDateTime
        }));

    const medications = bundle.entry
        .filter(e => e.resource.resourceType === 'MedicationStatement' &&
                     e.resource.status === 'active')
        .map(e => e.resource.medicationCodeableConcept.text);

    const recentVitals = bundle.entry
        .filter(e => {
            if (e.resource.resourceType !== 'Observation') return false;
            const date = new Date(e.resource.effectiveDateTime);
            return (Date.now() - date.getTime()) < 30 * 86400000;
        })
        .map(e => ({
            type: e.resource.code.coding[0].display,
            value: e.resource.valueQuantity.value,
            unit: e.resource.valueQuantity.unit,
            date: e.resource.effectiveDateTime
        }));

    // Build prompt
    const prompt = `
Generate a ${summaryType} clinical summary for this patient:

Active Conditions: ${conditions.map(c => c.code).join(', ') || 'None documented'}
Current Medications: ${medications.join(', ') || 'None'}
Recent Vitals (last 30 days): ${formatVitals(recentVitals)}

Guidelines:
- Use plain language suitable for patient understanding
- Highlight any concerning trends
- Do not fabricate information not present in the data
- Format as 2-3 paragraphs
- Include disclaimer about AI generation
`;

    // Call LLM API (example with OpenAI)
    const response = await fetch('https://api.openai.com/v1/chat/completions', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${process.env.OPENAI_API_KEY}`
        },
        body: JSON.stringify({
            model: 'gpt-4',
            messages: [
                { role: 'system', content: 'You are a medical summarization assistant.' },
                { role: 'user', content: prompt }
            ],
            max_tokens: 500,
            temperature: 0.3
        })
    });

    const data = await response.json();
    const summary = data.choices[0].message.content;

    // Validate (check for hallucinations)
    if (containsFabricatedInfo(summary, bundle)) {
        throw new Error('Summary contains information not in source data');
    }

    return summary + '\n\n*This summary was generated by AI and should be reviewed by a healthcare professional.*';
}

function formatVitals(vitals) {
    return vitals.map(v => `${v.type}: ${v.value} ${v.unit}`).join('; ');
}

function containsFabricatedInfo(summary, bundle) {
    // Simple check: verify mentioned conditions/meds exist in bundle
    const allText = JSON.stringify(bundle).toLowerCase();
    const summaryLower = summary.toLowerCase();

    // Extract medical terms from summary (simplified)
    const medicalTerms = summaryLower.match(/\b[a-z]{5,}\b/g) || [];

    // Check if unusual terms appear in summary but not in bundle
    const suspicious = medicalTerms.filter(term =>
        !allText.includes(term) && isMedicalTerm(term)
    );

    return suspicious.length > 3; // Threshold for concern
}

function isMedicalTerm(word) {
    // Simplified check - in production, use medical ontology
    const commonMedical = ['diabetes', 'hypertension', 'asthma', 'copd',
                           'medication', 'blood', 'pressure', 'glucose'];
    return commonMedical.includes(word);
}
```

**Safety Considerations:**
- Validate output against source data
- Include AI-generated disclaimers
- Log prompts and responses for audit
- Allow human review before sharing
- Never use for diagnostic decisions