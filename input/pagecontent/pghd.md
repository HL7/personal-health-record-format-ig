### Information on Patient-generated health data(PGHD)
  
We have prepared profiles to handle PGHD information.  
This implementation guide deals with general PGHD information that can be collected on mobile devices, and does not deal with information related to data shared from medical institutions to individual patients.

We support iOS's HealthKit, Android's Health Connect, and Open mHealth. HealthKit and Health Connect are frameworks for storing healthcare data on devices and sharing it between apps.

### About Various Standards

#### Apple Healthkit

Apple HealthKit is a healthcare application framework, developed by Apple, that enables users to manage their health information centrally. HealthKit collects health data from the user's devices, such as the iPhone and Apple Watch, and consolidates it in one location.  
With HealthKit, users can monitor and manage a variety of health information, including exercise volume, sleep patterns, heart rate, and meal content.  
Additionally, HealthKit can integrate with other healthcare apps, providing users with a more comprehensive management of their health information. For instance, users can import data collected from a specific fitness app into HealthKit, thereby gaining a more detailed understanding of their health status.

#### Google Health Connect

Google Health Connect is a comprehensive platform designed to manage health and fitness data on Android-equipped smartphones.  
It automatically gathers data from various health and fitness apps, providing a central hub for managing this information. Users can easily access data such as step count, sleep duration, heart rate, blood pressure, and weight all in one place.  
Moreover, the collected data can be shared with other health and fitness apps. This cross-app utilization of data enables more effective health management, as it provides a broader and more detailed view of the user's health status.

#### Open mHealth

Open mHealth is a non-profit organization dedicated to standardizing mobile health (mHealth) data. The organization's primary goal is to eliminate the fragmentation of health data, thereby improving its compatibility and availability.  
Open mHealth offers an open architecture and a shared data format. This approach enables developers to integrate and analyze data from a variety of sources. As a result, patients, healthcare providers, and researchers can access more comprehensive and personalized health information.  
Specifically, the Open mHealth framework facilitates the central management and analysis of health data from diverse sources, including wearable devices and mobile apps.  

#### Finnish PHR

In Finland, a PHR service known as "Kanta" is provided to all citizens. This service is operated by the Finnish Social Security Institution, Kela.  
Through the Kanta service, patients can access their medical records online. Additionally, healthcare professionals such as doctors and pharmacists can also access this information. This shared access allows healthcare providers to gain a more detailed understanding of a patient's health status, enabling them to develop more effective treatment plans.  
Furthermore, the Kanta service allows patients to manage their health information and share it with healthcare providers as needed. This empowers patients with a better understanding of their health status, enabling them to make informed medical decisions.

#### Positioning of Each Standard

The positioning of each standard is as follows:

Standards like HealthKit and Health Connect are designed for smartphones and wearable devices that gather user health information.
Open mHealth is a standard aimed at collecting health information that can be sourced from HealthKit, Health Connect, wearable devices, and smartphone apps.
Finnish PHR and the PGHD outlined in this implementation guide are positioned to handle the integration of health data from smartphones, wearable devices, and other sources, with treatment information from electronic medical records.

![Positioning of Each Standard](pghd/standards-en.png)

<p style="clear:both;"></p>

#### About the Items Handled in This Implementation Guide

In this implementation guide, items are defined to encompass the health information utilized in each standard.

![Items Handled in This Implementation Guide](pghd/items-en.png)

<p style="clear:both;"></p>

### FHIR Specification

#### Elements of Profile

##### Mapping of Data Acquisition Time

The date and time of data acquisition are mapped to Observation.effectiveDatetime for instantaneous values, and to Observation.effectivePeriod for other cases.

- HealthKit
  - Map to effectiveDatetime if HKSample.startDate and HKSample.endDate are the same value.
  - Map to effectivePeriod if HKSample.startDate and HKSample.endDate are different values.

- Health Connect
  - Map to effectiveDatetime if the Record has a value in the time attribute.
  - Map to effectivePeriod if the Record has values in both startDate and endDate attributes.


##### Mapping of Data Values

Data values can be divided into three types


- Quantitative data
  - Data expressed in quantity and units, such as weight, height, and body temperature

- Qualitative data
  - Data expressed in categories, such as types and degrees of symptoms

- Sampling data
  - Data measured by sampling at a certain cycle, such as electrocardiograms


Depending on the type of data, select the appropriate element from value[x] and map it. The table below provides a guide for mapping:

|Data Type	|Mapped Element|
|--- | ---|
|Quantitative data	|Observation.valueQuantity|
|Qualitative data	|Observation.valueCodeableConcept|
|Sampling data	|Observation.valueSampledData|

#### Required Elements in PGHD

Elements that are crucial and indispensable for PGHD information are defined as required elements. These include:

- Elements indicating the subject of PGHD data, such as Observation.subject.
- The date and time when PGHD data was measured, such as Observation.effective[x].
- The measurement item of PGHD data, such as Observation.code.

#### Must Support Elements in PGHD

The elements that we aim to obtain as much as possible for PGHD information are defined as Must Support. These include:

- Required elements: Elements with a minimum cardinality of 1 or more need to be supported, hence they are considered Must Support.
- Measurement results of PGHD data, such as Observation.value[x].  
  However, results of data like low heart rate notification that only require the observation date and time and do not need result values, are not considered required.
- Device information, such as Observation.device.
- Information category, such as Observation.category.
- Elements that are closely related between resources, such as Observation.hasMember.

#### Standardization of PGHD Codes

In order to uniformly handle data from HealthKit, Health Connect, Open mHealth, and Finnish PHR, standardization is performed to assign the same code (referred to as Observation PGHD Codes) to data representing the same concept.
The codes that are subject to this standardization include:

- Observation.code, which represents the type of data.
- Observation.valueCodeableConcept, which represents the type of qualitative data.

If data corresponding to the same concept exists in both HealthKit and Health Connect, the code is defined to match the code and name of Apple HealthKit, which has a wider data coverage range.

#### Implementation of LOINC Codes in PGHD

To enhance the searchability of PGHD, the implementation guide is defined to incorporate the international standard code LOINC into Observation.code. The table below provides an example of how LOINC codes are implemented:

|Concept |Blood Sugar Level |Step Count|
|--- | --- | ---|
|Data Type Name (HealthKit/HealthConnect) |bloodGlucose /BloodGlucoseRecord |stepCount /StepsRecord|
|Observation PGHD Codes |bloodGlucose |stepCount|
|LOINC Code |15074-8 (Glucose [Moles/volume] in Blood) |N/A (Not set)|

#### Standardization of Units in PGHD

The units of quantity data in PGHD are standardized with reference to standard conventions:

- Units of examination and measurement are standardized according to LOINC.
- Units of nutrition are standardized according to the Japanese Food Standard Ingredient Table.

### Profiles

#### Activity

Activity is a data category related to physical activity.  
It includes the number of steps, the number of floors climbed, and energy consumed at rest.

##### Profile

- [PGHD Activity Profile](StructureDefinition-pghd-activity.html)

#### VitalSign

Vitalsign is a data category for the most basic information about life.  
It includes heart rate, blood pressure, respiratory rate, and blood oxygen saturation.

##### Profile

- [PGHD VitalSign Profile](StructureDefinition-pghd-vitalsigns.html)
- [PGHD OxygenSaturation Profile](StructureDefinition-pghd-oxygenSaturation.html)
- [PGHD RespiratoryRate Profile](StructureDefinition-pghd-respiratoryrate.html)
- [PGHD Heartrate Profile](StructureDefinition-pghd-heartrate.html)

#### Sleep

This data category is related to sleep and sleep symptoms.
It includes profiles of sleep duration (by stage), sleep episodes, and snoring index.

##### Profile

- [PGHD Sleep Profile](StructureDefinition-pghd-sleep.html)
- [PGHD Sleep Episode Profile](StructureDefinition-pghd-sleep-episode.html)
- [PGHD SnoreIndex Profile](StructureDefinition-pghd-snore-index.html)
- [PGHD SnoreEvent Profile](StructureDefinition-pghd-snore-event.html)

#### Exercise

Exercise is a data category related to the exercise for maintaining health and strengthening the body.  
It includes the types of workouts.

##### Profile

- [PGHD Workout Profile](StructureDefinition-pghd-workout.html)

#### BodyMesurement

BodyMesurement is a data category related to measurements used to assess physical development and health.  
It includes height, weight, BMI, body fat percentage, body temperature, etc.

##### Profile

- [PGHD BMI Profile](StructureDefinition-pghd-bmi.html)
- [PGHD BodyTemperature Profile](StructureDefinition-pghd-bodytemperature.html)
- [PGHD BodyHeight Profile](StructureDefinition-pghd-bodyheight.html)
- [PGHD BodyMesurement Profile](StructureDefinition-pghd-bodymeasurement.html)

#### Nutrition

Nutrition is a data category for nutrients consumed.  
It includes caffeine, vitamins, and energy intake.

##### Profile

- [PGHD Nutrition Profile](StructureDefinition-pghd-nutrition.html)

#### Symptom

Symptom is a data category for distress caused by physical or mental illness.  
They include cough, dizziness, mood changes, fever, and headache.

##### Profile

- [PGHD Symptom Profile](StructureDefinition-pghd-symptom.html)

#### Walking

Walking is a data category related to walking speed and walking time.  
It includes walking stability, walking speed, and stair climbing and descending speed.

##### Profile

- [PGHD Mobility Profile](StructureDefinition-pghd-mobility.html)

#### Hearing

Hearing is a data category for measurement data related to hearing.  
These include hearing, environmental sound exposure, and environmental sound exposure events.

##### Profile

- [PGHD Hearing Profile](StructureDefinition-pghd-hearing.html)

#### AlcholConsumption

AlcholConsumption is a data category for measured data on alcohol consumed.  
It includes blood alcohol concentration and number of alcoholic beverages consumed.

##### Profile

- [PGHD AlcholConsumption Profile](StructureDefinition-pghd-alchol-consumption.html)

#### ReproductiveHealth

ReproductiveHealth is a category of data related to menstrual cycles.

##### Profile

- [PGHD ReproductiveHealth Profile](StructureDefinition-pghd-reproductive-health.html)

#### Inspection

Inspecton is a data category related to measured data used to determine the cause of a health condition or abnormality.  
It includes blood glucose levels and test results such as skin potential activity, forced lung capacity, and number of times insulin is used.

##### Profile

- [PGHD BloodGlucose Profile](StructureDefinition-pghd-blood-glucose.html)
- [PGHD TestResult Profile](StructureDefinition-pghd-testresult.html)

#### UVExposure

UVExposure is a data category for ultraviolet measurement data.

##### Profile

- [PGHD UVExposure Profile](StructureDefinition-pghd-uvexposure.html)

#### SelfCare

SelfCare is a data category about the care you take to maintain health and prevent disease.  
It includes hand washing and tooth brushing.

##### Profile

- [PGHD SelfCare Profile](StructureDefinition-pghd-selfcare.html)

#### Medication

This data category is used to check the status of medications and medications being taken.
It includes profiles for medication adherence, dispensing at pharmacies, and insulin administration.

##### Profile

- [PGHD MedicationAdherence Profile](StructureDefinition-pghd-medication-adherence.html)
- [PGHD MedicationDispense Profile](StructureDefinition-pghd-medicationdispense.html)
- [PGHD MedicationAdministration Insulin Profile](StructureDefinition-pghd-medicationadministration-insulin.html)

#### Questionnaire

This is a data category of questions intended to solicit information from patients and their responses.
It contains profiles of the questionnaire and the responses.

##### Profile

- [PGHD Questionnaire Profile](StructureDefinition-pghd-questionnaire.html)
- [PGHD QuestionnaireResponse Profile](StructureDefinition-pghd-questionnaire-response.html)

#### Self-Care Plan

This data category deals with self-care plans proposed by decision support.
It contains profiles of self-care plans.

##### Profile

- [PGHD SelfCare Plan Profile](StructureDefinition-pghd-careplan-selfcare.html)
