\ir ./index.sql

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: covid_criteria; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.covid_criteria (id, observation_name, score, threshold_low, threshold_high, observation_match) FROM stdin;
1	chief_complaint	5	\N	\N	%cough%
2	wbc_count	10	4	11	\N
3	chief_complaint	5	\N	\N	%shortness of breath%
4	chief_complaint	5	\N	\N	%dyspnea%
5	chief_complaint	5	\N	\N	%sob%
6	chief_complaint	3	\N	\N	%diarrhea%
7	chief_complaint	7	\N	\N	%fever%
8	temperature	10	37.9	50	\N
16	bnp	5	0	150	\N
14	lymphocyte_count	10	0	3	\N
15	respiratory_viral_panel	20	\N	\N	%negative%
11	platelet_count	10	0	150	\N
9	respiratory_rate	10	20	80	\N
10	procalcitonin	10	0	0.4	\N
20	d-dimer	5	0	250	\N
21	esr	3	25	1000	\N
22	c_reactive_protein	3	3	1000	\N
23	blood_culture	5	\N	\N	%negative%
24	sars_cov_2	50	\N	\N	%positive%
\.


-- --
-- -- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: -
-- --

COPY public.patient_base (id, first_name, last_name, mrn, hospital_id, dob, sex, created_at, updated_at) FROM stdin;
13	Rabia	Ochoa	 383 29 9129	demo	1972-03-14 22:47:25.867+00	F	2020-03-14 22:47:25.867+00	2020-03-14 22:47:25.867+00
15	Tillie	Sherman	 323 11 9520	demo	1962-10-10 22:47:25.867+00	F	2020-03-14 22:47:25.867+00	2020-03-14 22:47:25.867+00
16	Adnan	Zamora	 321 22 1212	demo	1981-12-10 22:47:25.867+00	F	2020-03-14 22:47:25.867+00	2020-03-14 22:47:25.867+00
17	Janet	Peacock	391 18 1888	demo	1943-12-10 22:47:25.867+00	F	2020-03-14 22:47:25.867+00	2020-03-14 22:47:25.867+00
14	George	Yeh	323 11 9520	demo	1967-09-14 22:47:25.867+00	M	2020-03-14 22:47:25.867+00	2020-03-14 22:47:25.867+00
6	Sammy	Hertz	193 12 0002	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
4	John	Doe	233 11 8419	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
3	Angel	Rodriguez	312 39 0933	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
1	Ali	Sanbar	192 10 1102	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
8	George	Foremans	841 21 2294	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
9	Matthew	Oberton	983 38 2210	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
11	Franko	Francisco	584 33 1930	demo	\N	M	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
5	Jane	Smith	122 12 2233	demo	\N	F	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
2	Betty	Cook	323 11 9520	demo	\N	F	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
7	Jane	Manning	839 29 2011	demo	\N	F	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
10	Athena	Markos	922 11 7434	demo	\N	F	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
12	Jerry	Smith	343 32 3901	demo	\N	F	2020-03-14 21:58:59.981982+00	2020-03-14 22:10:50.187331+00
\.


--
-- Data for Name: hospitalstay; Type: TABLE DATA; Schema: public; Owner: -
-- --

COPY public.hospitalstay_base (id, hospital_id, admission_date_time, discharge_date_time, account, age, current_location, current_service, patient_id, created_at, updated_at) FROM stdin;
12	demo	2019-12-29 18:00:12+00	\N	5844332933	38	2N	Medicine	11	2020-03-14 21:58:38.477374+00	2020-03-14 22:10:49.996155+00
13	demo	2020-01-02 23:59:58+00	\N	12922882772	41	2N	Medicine	5	2020-03-14 21:58:38.477374+00	2020-03-14 22:10:49.996155+00
14	demo	2020-03-11 12:23:45.332+00	\N	98337165173	\N	2W	medicine	13	2020-03-14 12:23:45.332+00	2020-03-14 12:23:45.332+00
15	demo	2020-03-10 02:23:45.332+00	\N	22931029393	\N	2W	medicine	14	2020-03-14 12:23:45.332+00	2020-03-14 12:23:45.332+00
16	demo	2020-03-09 02:23:45.332+00	\N	5423212221	\N	2W	medicine	15	2020-03-14 12:23:45.332+00	2020-03-14 12:23:45.332+00
17	demo	2020-03-09 02:23:45.332+00	\N	21291212181	\N	2W	medicine	16	2020-03-14 12:23:45.332+00	2020-03-14 12:23:45.332+00
18	demo	2020-03-13 14:23:45.332+00	\N	93883192281	\N	2W	medicine	17	2020-03-14 12:23:45.332+00	2020-03-14 12:23:45.332+00
\.


--
-- Data for Name: observation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.observation_base (id, name, date, value, numeric_value, hospitalstay_id) FROM stdin;
665	a1c	2019-07-01 20:38:00+00	6.8	6.80	13
477	BMI	2019-08-02 20:19:00+00	40.3	40.30	13
478	BMI	2019-08-03 15:32:00+00	40.1	40.10	13
479	BMI	2019-08-02 20:19:00+00	40	40.00	13
490	UA Sediment	2019-08-03 09:23:00+00	Casts	\N	13
499	eGFR	2019-08-03 11:12:00+00	19	19.00	13
500	eGFR	2019-08-04 14:43:00+00	20	20.00	13
501	eGFR	2019-08-05 16:01:00+00	20	20.00	13
502	eGFR	2019-08-06 14:12:00+00	25	25.00	13
424	a1c	2019-08-01 20:38:00+00	7.1	7.10	13
425	Glucose	2019-08-01 20:38:00+00	156	156.00	13
426	Glucose	2019-08-02 04:12:00+00	193	193.00	13
427	Glucose	2019-08-02 13:03:00+00	121	121.00	13
428	Glucose	2019-08-02 19:52:00+00	352	352.00	13
429	Glucose	2019-08-03 01:12:00+00	311	311.00	13
430	Glucose	2019-08-03 15:43:00+00	287	287.00	13
641	heart_rate	2019-08-03 05:33:00+00	87	87.00	13
642	heart_rate	2019-08-03 05:45:00+00	81	81.00	13
643	heart_rate	2019-08-03 11:01:00+00	67	67.00	13
644	heart_rate	2019-08-03 15:15:00+00	71	71.00	13
645	heart_rate	2019-08-03 18:32:00+00	78	78.00	13
646	heart_rate	2019-08-03 21:41:00+00	71	71.00	13
647	heart_rate	2019-08-04 02:11:00+00	75	75.00	13
648	heart_rate	2019-08-04 04:08:00+00	81	81.00	13
474	nasal_cannula_flow_rate	2019-08-03 21:41:00+00	6	6.00	13
475	nasal_cannula_flow_rate	2019-08-04 02:11:00+00	4	4.00	13
476	nasal_cannula_flow_rate	2019-08-04 04:08:00+00	4	4.00	13
469	oxygen_device	2019-08-03 05:33:00+00	NIV	\N	13
470	oxygen_device	2019-08-03 05:45:00+00	NIV	\N	13
471	oxygen_device	2019-08-03 11:01:00+00	NIV	\N	13
472	oxygen_device	2019-08-03 15:15:00+00	NIV	\N	13
633	creatinine	2019-08-09 13:39:00+00	0.78	0.78	13
668	d-dimer	2020-03-14 16:58:47.828309+00	180	180.00	14
671	c_reactive_protein	2020-03-14 13:58:47.828309+00	5.7	5.70	14
679	c_reactive_protein	2020-03-14 21:58:47.828309+00	1.4	1.40	15
696	c_reactive_protein	2020-03-14 21:58:47.828309+00	12.3	12.30	17
527	heart_rate	2019-08-04 19:21:00+00	79	79.00	13
531	heart_rate	2019-08-04 23:16:00+00	93	93.00	13
534	heart_rate	2019-08-05 00:00:00+00	69	69.00	13
537	heart_rate	2019-08-05 05:37:00+00	79	79.00	13
540	heart_rate	2019-08-05 09:41:00+00	118	118.00	13
543	heart_rate	2019-08-05 13:49:00+00	96	96.00	13
546	heart_rate	2019-08-05 17:01:00+00	78	78.00	13
549	heart_rate	2019-08-05 21:40:00+00	81	81.00	13
553	heart_rate	2019-08-06 01:18:00+00	88	88.00	13
556	heart_rate	2019-08-06 06:02:00+00	69	69.00	13
473	oxygen_device	2019-08-03 18:32:00+00	NIV	\N	13
435	hemoglobin	2019-07-29 00:39:00+00	10.1	10.10	13
438	hemoglobin	2019-07-30 21:21:00+00	10.1	10.10	13
441	hemoglobin	2019-08-01 14:41:00+00	10.2	10.20	13
444	hemoglobin	2019-08-02 20:25:00+00	6.8	6.80	13
706	chief_complaint	2020-03-14 21:58:47.828309+00	cough sob	18.00	18
431	Glucose	2019-08-03 20:17:00+00	155	155.00	13
432	Glucose	2019-08-04 04:43:00+00	234	234.00	13
433	Glucose	2019-08-04 14:12:00+00	218	218.00	13
434	Glucose	2019-08-04 20:01:00+00	168	168.00	13
486	Quetiapine PO	2019-08-04 09:12:00+00	12.5mg	12.50	13
480	NPO	2019-08-03 04:31:00+00	NPO Except Meds	\N	13
483	NPO	2019-08-03 22:22:00+00	NPO	\N	13
488	NPO	2019-08-04 22:40:00+00	Dysphagia 2 diet	2.00	13
481	1:1 Observation	2019-08-03 10:43:00+00	Clinical Obsevation	\N	13
482	1:1 Observation	2019-08-03 22:12:00+00	Clinical Obsevation	\N	13
514	heart_rate	2019-08-04 00:21:00+00	123	123.00	13
518	heart_rate	2019-08-04 04:31:00+00	104	104.00	13
521	heart_rate	2019-08-04 08:05:00+00	84	84.00	13
524	heart_rate	2019-08-04 13:34:00+00	74	74.00	13
575	potassium	2019-08-03 08:54:00+00	4.2	4.20	13
576	potassium	2019-08-03 16:34:00+00	3.9	3.90	13
577	potassium	2019-08-04 15:51:00+00	4.5	4.50	13
578	potassium	2019-08-05 13:12:00+00	3.9	3.90	13
495	sodium	2019-08-03 08:54:00+00	154	154.00	13
496	sodium	2019-08-03 16:34:00+00	151	151.00	13
497	sodium	2019-08-04 15:51:00+00	148	148.00	13
498	sodium	2019-08-05 13:12:00+00	144	144.00	13
559	sodium	2019-08-03 13:41:00+00	141	141.00	13
560	sodium	2019-08-04 15:11:00+00	131	131.00	13
561	sodium	2019-08-05 14:43:00+00	128	128.00	13
562	sodium	2019-08-06 11:32:00+00	129	129.00	13
563	sodium	2019-08-07 16:18:00+00	131	131.00	13
447	hemoglobin	2019-08-03 14:31:00+00	5.4	5.40	13
450	hemoglobin	2019-08-04 00:01:00+00	7.1	7.10	13
453	hemoglobin	2019-08-04 13:43:00+00	8.2	8.20	13
565	hemoglobin	2019-08-01 14:21:00+00	15.2	15.20	13
566	hemoglobin	2019-08-02 13:51:00+00	15.1	15.10	13
567	hemoglobin	2019-08-03 16:21:00+00	14.8	14.80	13
568	hemoglobin	2019-08-04 14:44:00+00	14.9	14.90	13
569	hemoglobin	2019-08-05 13:54:00+00	15.0	15.00	13
436	platelets	2019-07-29 00:39:00+00	201	201.00	13
439	platelets	2019-07-30 21:21:00+00	201	201.00	13
442	platelets	2019-08-01 14:41:00+00	243	243.00	13
445	platelets	2019-08-02 20:25:00+00	110	110.00	13
448	platelets	2019-08-03 14:31:00+00	88	88.00	13
451	platelets	2019-08-04 00:01:00+00	121	121.00	13
454	platelets	2019-08-04 13:43:00+00	136	136.00	13
456	platelets	2019-08-01 14:21:00+00	121	121.00	13
457	platelets	2019-08-02 13:51:00+00	132	132.00	13
458	platelets	2019-08-03 16:21:00+00	156	156.00	13
459	platelets	2019-08-04 14:44:00+00	181	181.00	13
460	platelets	2019-08-05 13:54:00+00	201	201.00	13
461	oxygen_saturation	2019-08-03 05:33:00+00	78%	78.00	13
462	oxygen_saturation	2019-08-03 05:45:00+00	82%	82.00	13
463	oxygen_saturation	2019-08-03 11:01:00+00	96%	96.00	13
464	oxygen_saturation	2019-08-03 15:15:00+00	94%	94.00	13
465	oxygen_saturation	2019-08-03 18:32:00+00	95%	95.00	13
466	oxygen_saturation	2019-08-03 21:41:00+00	98%	98.00	13
467	oxygen_saturation	2019-08-04 02:11:00+00	94%	94.00	13
707	chief_complaint	2020-03-14 21:58:47.828309+00	Cough, fever	\N	12
708	procalcitonin	2020-03-14 21:58:47.828309+00	0.4	0.40	12
709	wbc_count	2020-03-14 21:58:47.828309+00	8.2	8.20	12
710	respiratory_viral_panel	2020-03-14 21:58:47.828309+00	negative	\N	12
711	c_reactive_protein	2020-03-14 21:58:47.828309+00	12.3	12.30	12
712	temperature	2020-03-14 21:58:47.828309+00	39.4	39.40	12
713	respiratory_rate	2020-03-14 21:58:47.828309+00	36	36.00	12
714	oxygen_saturation	2020-03-14 21:58:47.828309+00	78%	78.00	12
715	sputum_culture	2020-03-14 21:58:47.828309+00	negative	\N	12
484	1:1 Observation	2019-08-04 09:12:00+00	Clinical Obsevation	\N	13
487	1:1 Observation	2019-08-04 20:54:00+00	Clinical Obsevation	\N	13
485	2-point restraints	2019-08-04 09:12:00+00	restraints	\N	13
692	chief_complaint	2020-03-14 21:58:47.828309+00	Cough, fever	\N	17
489	creatinine	2019-08-03 09:12:00+00	3.6	3.60	13
491	creatinine	2019-08-04 14:23:00+00	2.8	2.80	13
492	creatinine	2019-08-04 23:01:00+00	1.9	1.90	13
493	creatinine	2019-08-05 15:12:00+00	1.6	1.60	13
494	creatinine	2019-08-06 14:43:00+00	1.4	1.40	13
503	creatinine	2019-08-03 11:12:00+00	3.6	3.60	13
504	creatinine	2019-08-04 14:43:00+00	3.5	3.50	13
505	creatinine	2019-08-05 16:01:00+00	3.5	3.50	13
506	creatinine	2019-08-06 14:12:00+00	3.2	3.20	13
591	creatinine	2019-08-03 08:54:00+00	1.02	1.02	13
592	creatinine	2019-08-03 16:34:00+00	0.96	0.96	13
593	creatinine	2019-08-04 15:51:00+00	0.93	0.93	13
594	creatinine	2019-08-05 13:12:00+00	0.91	0.91	13
627	creatinine	2019-08-03 17:12:00+00	0.71	0.71	13
628	creatinine	2019-08-04 15:02:00+00	0.82	0.82	13
629	creatinine	2019-08-05 16:31:00+00	0.84	0.84	13
630	creatinine	2019-08-06 11:59:00+00	0.78	0.78	13
631	creatinine	2019-08-07 13:12:00+00	0.74	0.74	13
632	creatinine	2019-08-08 13:43:00+00	0.72	0.72	13
672	esr	2020-03-14 16:58:47.828309+00	16	16.00	14
680	esr	2020-03-14 21:58:47.828309+00	14	14.00	15
674	nasal_cannula_flow_rate	2020-03-14 16:58:47.828309+00	6L	6.00	14
690	nasal_cannula_flow_rate	2020-03-14 21:58:47.828309+00	2L	2.00	16
666	procalcitonin	2020-03-14 14:12:00+00	3.2	3.20	14
675	procalcitonin	2020-03-14 21:58:47.828309+00	0.1	0.10	15
683	procalcitonin	2020-03-14 21:58:47.828309+00	0.9	0.90	16
693	procalcitonin	2020-03-14 21:58:47.828309+00	0.4	0.40	17
669	respiratory_viral_panel	2020-03-14 16:58:47.828309+00	Influenza	\N	14
677	respiratory_viral_panel	2020-03-14 21:58:47.828309+00	negative	\N	15
686	respiratory_viral_panel	2020-03-14 21:58:47.828309+00	negative	\N	16
695	respiratory_viral_panel	2020-03-14 21:58:47.828309+00	negative	\N	17
468	oxygen_saturation	2019-08-04 04:08:00+00	98%	98.00	13
685	oxygen_saturation	2020-03-14 21:58:47.828309+00	82%	82.00	16
699	oxygen_saturation	2020-03-14 21:58:47.828309+00	78%	78.00	17
599	potassium	2019-08-03 17:12:00+00	4.3	4.30	13
600	potassium	2019-08-04 15:02:00+00	4.0	4.00	13
601	potassium	2019-08-05 16:31:00+00	4.0	4.00	13
602	potassium	2019-08-06 11:59:00+00	4.0	4.00	13
717	primary_diagnosis	2020-03-22 16:10:14.261032+00	DKA	\N	12
718	primary_diagnosis	2020-03-22 16:10:14.261032+00	Hypertensive Emergency	\N	13
728	primary_diagnosis	2020-03-22 16:10:14.261032+00	Influenza A	\N	14
729	primary_diagnosis	2020-03-22 16:10:14.261032+00	Appendicitis	\N	15
730	primary_diagnosis	2020-03-22 16:10:14.261032+00	Bacterial Pneumonia	\N	16
731	primary_diagnosis	2020-03-22 16:10:14.261032+00	Viral Pneumonia	\N	17
732	primary_diagnosis	2020-03-22 16:10:14.261032+00	Hip Fracture	\N	18
603	potassium	2019-08-07 13:12:00+00	3.8	3.80	13
604	potassium	2019-08-08 13:43:00+00	4.1	4.10	13
605	potassium	2019-08-09 13:39:00+00	4.1	4.10	13
691	sputum_culture	2020-03-14 21:58:47.828309+00	Mixed Commensals	\N	16
701	sputum_culture	2020-03-14 21:58:47.828309+00	negative	\N	17
564	sodium	2019-08-08 13:41:00+00	136	136.00	13
507	sodium	2019-08-03 17:12:00+00	132	132.00	13
508	sodium	2019-08-04 15:02:00+00	133	133.00	13
509	sodium	2019-08-05 16:31:00+00	131	131.00	13
510	sodium	2019-08-06 11:59:00+00	135	135.00	13
511	sodium	2019-08-07 13:12:00+00	136	136.00	13
512	sodium	2019-08-08 13:43:00+00	138	138.00	13
513	sodium	2019-08-09 13:39:00+00	138	138.00	13
700	high_flow_nasal_cannula	2020-03-14 21:58:47.828309+00	60L	60.00	17
670	lymphocyte_count	2020-03-14 15:58:47.828309+00	1.1	1.10	14
678	lymphocyte_count	2020-03-14 21:58:47.828309+00	2.1	2.10	15
687	lymphocyte_count	2020-03-14 21:58:47.828309+00	1.7	1.70	16
703	lymphocyte_count	2020-03-14 21:58:47.828309+00	2.1	2.10	18
437	wbc_count	2019-07-29 00:39:00+00	5.4	5.40	13
440	wbc_count	2019-07-30 21:21:00+00	5.4	5.40	13
443	wbc_count	2019-08-01 14:41:00+00	7.1	7.10	13
446	wbc_count	2019-08-02 20:25:00+00	2.1	2.10	13
449	wbc_count	2019-08-03 14:31:00+00	1.2	1.20	13
452	wbc_count	2019-08-04 00:01:00+00	3.2	3.20	13
455	wbc_count	2019-08-04 13:43:00+00	4.1	4.10	13
570	wbc_count	2019-08-01 14:21:00+00	6.8	6.80	13
571	wbc_count	2019-08-02 13:51:00+00	7.5	7.50	13
572	wbc_count	2019-08-03 16:21:00+00	5.1	5.10	13
574	wbc_count	2019-08-05 13:54:00+00	7.1	7.10	13
516	wbc_count	2019-08-04 00:57:00+00	16.1	16.10	13
529	wbc_count	2019-08-04 16:32:00+00	10.1	10.10	13
551	wbc_count	2019-08-05 21:01:00+00	8.2	8.20	13
667	wbc_count	2020-03-14 14:58:47.828309+00	6.5	6.50	14
676	wbc_count	2020-03-14 21:58:47.828309+00	13.5	13.50	15
684	wbc_count	2020-03-14 21:58:47.828309+00	14.2	14.20	16
694	wbc_count	2020-03-14 21:58:47.828309+00	8.2	8.20	17
702	wbc_count	2020-03-14 21:58:47.828309+00	7.9	7.90	18
649	respiratory_rate	2019-08-03 05:33:00+00	28	28.00	13
650	respiratory_rate	2019-08-03 05:45:00+00	24	24.00	13
651	respiratory_rate	2019-08-03 11:01:00+00	16	16.00	13
652	respiratory_rate	2019-08-03 15:15:00+00	16	16.00	13
653	respiratory_rate	2019-08-03 18:32:00+00	16	16.00	13
654	respiratory_rate	2019-08-03 21:41:00+00	16	16.00	13
655	respiratory_rate	2019-08-04 02:11:00+00	16	16.00	13
656	respiratory_rate	2019-08-04 04:08:00+00	16	16.00	13
517	respiratory_rate	2019-08-04 00:21:00+00	21	21.00	13
520	respiratory_rate	2019-08-04 04:31:00+00	18	18.00	13
523	respiratory_rate	2019-08-04 08:05:00+00	16	16.00	13
526	respiratory_rate	2019-08-04 13:34:00+00	16	16.00	13
530	respiratory_rate	2019-08-04 19:21:00+00	16	16.00	13
533	respiratory_rate	2019-08-04 23:16:00+00	16	16.00	13
536	respiratory_rate	2019-08-05 00:00:00+00	18	18.00	13
539	respiratory_rate	2019-08-05 05:37:00+00	18	18.00	13
542	respiratory_rate	2019-08-05 09:41:00+00	18	18.00	13
545	respiratory_rate	2019-08-05 13:49:00+00	16	16.00	13
548	respiratory_rate	2019-08-05 17:01:00+00	22	22.00	13
552	respiratory_rate	2019-08-05 21:40:00+00	16	16.00	13
555	respiratory_rate	2019-08-06 01:18:00+00	16	16.00	13
558	respiratory_rate	2019-08-06 06:02:00+00	18	18.00	13
682	respiratory_rate	2020-03-14 21:58:47.828309+00	18	18.00	15
689	respiratory_rate	2020-03-14 21:58:47.828309+00	22	22.00	16
698	respiratory_rate	2020-03-14 21:58:47.828309+00	36	36.00	17
705	respiratory_rate	2020-03-14 21:58:47.828309+00	18	18.00	18
657	temperature	2019-08-03 05:33:00+00	36.8	36.80	13
658	temperature	2019-08-03 05:45:00+00	37.1	37.10	13
659	temperature	2019-08-03 11:01:00+00	37.3	37.30	13
660	temperature	2019-08-03 15:15:00+00	36.9	36.90	13
661	temperature	2019-08-03 18:32:00+00	37.0	37.00	13
662	temperature	2019-08-03 21:41:00+00	36.9	36.90	13
663	temperature	2019-08-04 02:11:00+00	36.8	36.80	13
664	temperature	2019-08-04 04:08:00+00	37.0	37.00	13
515	temperature	2019-08-04 00:21:00+00	38.6	38.60	13
519	temperature	2019-08-04 04:31:00+00	36.8	36.80	13
522	temperature	2019-08-04 08:05:00+00	36.5	36.50	13
525	temperature	2019-08-04 13:34:00+00	36.9	36.90	13
528	temperature	2019-08-04 19:21:00+00	37.1	37.10	13
532	temperature	2019-08-04 23:16:00+00	36.8	36.80	13
535	temperature	2019-08-05 00:00:00+00	37	37.00	13
538	temperature	2019-08-05 05:37:00+00	38.2	38.20	13
541	temperature	2019-08-05 09:41:00+00	36.8	36.80	13
544	temperature	2019-08-05 13:49:00+00	36.6	36.60	13
547	temperature	2019-08-05 17:01:00+00	37.4	37.40	13
550	temperature	2019-08-05 21:40:00+00	37.1	37.10	13
554	temperature	2019-08-06 01:18:00+00	36.7	36.70	13
557	temperature	2019-08-06 06:02:00+00	36.1	36.10	13
673	temperature	2020-03-14 16:58:47.828309+00	38.9	38.90	14
681	temperature	2020-03-14 21:58:47.828309+00	37.1	37.10	15
688	temperature	2020-03-14 21:58:47.828309+00	38.4	38.40	16
697	temperature	2020-03-14 21:58:47.828309+00	39.4	39.40	17
704	temperature	2020-03-14 21:58:47.828309+00	37.4	37.40	18
573	white blood cell	2019-08-04 14:44:00+00	8.1	8.10	13
\.


--
-- Data for Name: physician_base; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.physician_base (id, first_name, last_name, email, phone, degree, hospital_id, created_at, updated_at) FROM stdin;
1	Raf	Nada	raf@example.com	212-555-1011	MD	demo	2020-03-14 22:10:50.219489+00	2020-03-14 22:10:50.258188+00
2	Serena	Will	swill@example.com	212-555-4944	MD	demo	2020-03-14 22:10:50.219489+00	2020-03-14 22:10:50.258188+00
3	Roger	Fed	champ@example.com	819-555-1093	MD	demo	2020-03-14 22:10:50.219489+00	2020-03-14 22:10:50.258188+00
4	Kob	Bryan	kobe@example.com	123-132-1233	MD	demo	2020-03-21 18:41:25.926204+00	2020-03-21 18:41:25.926204+00
5	Martin	Scores	martin	321-312-1233	DO	demo	2020-03-21 18:42:03.164115+00	2020-03-21 18:42:03.164115+00
\.


--
-- Data for Name: treatment_team; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.treatment_team (id, hospitalstay_id, physician_id, start_time, end_time) FROM stdin;
13	12	2	\N	\N
14	13	3	\N	\N
15	14	1	\N	\N
16	15	2	\N	\N
17	16	3	\N	\N
19	18	2	\N	\N
20	17	4	\N	\N
21	18	5	\N	\N
18	17	1	\N	\N
\.

SELECT setval('patient_base_id_seq', (SELECT MAX(id) FROM public.patient_base));
SELECT setval('observation_base_id_seq', (SELECT MAX(id) FROM public.observation_base));
SELECT setval('physician_base_id_seq', (SELECT MAX(id) FROM public.physician_base));
SELECT setval('hospitalstay_base_id_seq', (SELECT MAX(id) FROM public.hospitalstay_base));
