
### Ann
Moving and setting up a new patient-centered care team


| Patient ID | PatientName   | Primary Diagnosis  | .phr | .sphr |
| ------------- | :-------- | :-------- | :-------- | :-------- | 
| 6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf | Anne Goodwin | childhood asthma |[json](file:///Users/awatson/Code/implementation-guides/standard-patient-health-record-ig/output/Anne_Goodwin_6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf.json) | [phr](file:///Users/awatson/Code/implementation-guides/standard-patient-health-record-ig/output/AnneGoodwin-6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf.phr)

> **&#9432;** Contribute to this guide by helping translate the following patient journey into FHIR resources and refining the patient example!  This narrative is a work in progress, and we have added Dominga Goodwin as a temporary place holder to an asthmatic patient.  The .phr file needs updating to correspond to the following narrative.  Pull requests encouraged.

### Narrative History


Ann is a 63-year-old white woman who is employed as a writer for the local newspaper. She has received care or moderate persistent allergic asthma since childhood. Ann has recently moved across state lines and is looking to transfer her lengthy health history from the various providers she has seen over the years while identifying a new care team that will appreciate her PCD as much as her former team. 

When Ann’s illness was unmanaged both as a child and as an adult, she used to visit the emergency department (ED) about twice a year. Over time, she and her former care team relied on clinical guidelines alongside her PCD to guide their approach to treatment and figure out the best regimen that works to control Ann’s symptoms. Using the stepwise approach for management of asthma, they determined that step 4 treatment is optimal and have worked to avoid escalating to step 5, a key priority as she moves to a new city and experiences pollen season for the first time in her new home. Her current regimen includes: a daily and as-needed combination medium-dose inhaled corticosteroid plus formoterol in a single inhaler (SMART inhaler) used for both ongoing control and reliever therapy (rather than high dose inhaled corticosteroid plus short-acting beta-antagonist for quick-relief therapy), high-dose oral prednisone for acute episodes, and a multi-component allergen-specific mitigation strategy (e.g., air purifiers with HEPA filters, pillow and mattress covers, and antihistamines during pollen season). This effective personalized regimen was developed over time through medication trials where she experimented with dosing under the supervision of her doctor. During this period, Ann and her provider gained insights that suggested that a low-dose SMART inhaler was insufficient for controlling symptoms and insufficient prednisone doses made acute episodes last longer. She also learned substantial insights about her triggers and how to avoid them to prevent or mitigate most flare-ups, leading to significantly fewer ED visits annually. Understanding her symptoms and response to treatments and the environment led to insights that help support the overall objective of keeping Ann’s asthma well-controlled, with the potential to step down in treatment and avoid stepping up. 

While her care team appreciated her input and insights from PCD, it took time to reach an arrangement that worked for both Ann and her clinical care team. Initially, one of her previous providers felt overwhelmed by the amount of PCD she was tracking and was unsure how to incorporate the information into her care. During this period, because her data were not being used, Ann felt her personal knowledge was disregarded and her opinions on treatments that worked best for her were overlooked. Through discussions over time, Ann and her care team collaboratively worked out what was most useful to each clinician.

It has taken considerable effort on Ann’s part to establish a trusted care team and a care regimen that works for her, where her clinicians are receptive to her self-tracked data and willing to use it to fine-tune her care. She is worried that when she moves to a new healthcare system, her new doctors (or her insurer) will want to re-start the trial-and-error process of figuring out where she fits in the guidelines, agnostic to the patient’s particular circumstances, rather than an approach informed by the patient’s prior experience and tailored to what works for her. She is nervous that her new care team won’t trust her right away and won’t value her self-reports or PCD in the way that her former care team relied on her input, especially since other providers in the past have dismissed her PCD when they didn’t know how to use it to improve patient care. She is concerned about having her symptoms (and ideas about triggers) dismissed and worries that she will have to repeat previous medication trials, which could lead to longer episodes or symptom relapse. As a result, in setting up her new health home, she wants to find a doctor who is willing to work together and build trust in their collaborative partnership; however nothing in the patient record within the EHR allows her previous team to communicate about her active involvement and the value of her contributions to her care. 

Ann has noted the importance of PCD in providing effective and efficient care for her asthma and allergies. Full detail into the PCD used and shared with providers can be found in Table 6. A summary of the PCD she is currently using and plans to use when establishing a new health home in her new state is below.
