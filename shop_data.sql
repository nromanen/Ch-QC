--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-02-04 15:36:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2897 (class 0 OID 33007)
-- Dependencies: 205
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name) VALUES (1, 'Cheese');
INSERT INTO public.category (id, name) VALUES (2, 'Dairy products');
INSERT INTO public.category (id, name) VALUES (3, 'Meat products');
INSERT INTO public.category (id, name) VALUES (4, 'Seafood');
INSERT INTO public.category (id, name) VALUES (5, 'Coffee');
INSERT INTO public.category (id, name) VALUES (6, 'Oil');
INSERT INTO public.category (id, name) VALUES (7, 'Dries fruit');


--
-- TOC entry 2891 (class 0 OID 32974)
-- Dependencies: 199
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.city (id, name, country_id) VALUES (1, 'London', 1);
INSERT INTO public.city (id, name, country_id) VALUES (2, 'Paris', 2);
INSERT INTO public.city (id, name, country_id) VALUES (3, 'Madrid', 3);
INSERT INTO public.city (id, name, country_id) VALUES (4, 'Birmingham', 1);
INSERT INTO public.city (id, name, country_id) VALUES (5, ' Manchester', 1);
INSERT INTO public.city (id, name, country_id) VALUES (6, 'Glasgow', 1);
INSERT INTO public.city (id, name, country_id) VALUES (7, 'Sheffield', 1);
INSERT INTO public.city (id, name, country_id) VALUES (8, 'Marseille', 2);
INSERT INTO public.city (id, name, country_id) VALUES (9, 'Toulouse', 2);
INSERT INTO public.city (id, name, country_id) VALUES (10, 'Bordeaux', 2);
INSERT INTO public.city (id, name, country_id) VALUES (11, 'Barcelona', 3);
INSERT INTO public.city (id, name, country_id) VALUES (12, 'Valencia', 3);
INSERT INTO public.city (id, name, country_id) VALUES (13, 'Seville', 3);
INSERT INTO public.city (id, name, country_id) VALUES (14, 'Kyiv', 4);
INSERT INTO public.city (id, name, country_id) VALUES (15, 'Kharkiv', 4);
INSERT INTO public.city (id, name, country_id) VALUES (16, 'Dnipro', 4);
INSERT INTO public.city (id, name, country_id) VALUES (17, 'Berlin', 5);
INSERT INTO public.city (id, name, country_id) VALUES (18, 'Hamburg', 5);
INSERT INTO public.city (id, name, country_id) VALUES (19, 'Munich', 5);
INSERT INTO public.city (id, name, country_id) VALUES (20, 'Brussels', 6);
INSERT INTO public.city (id, name, country_id) VALUES (21, 'Antwerpen', 6);
INSERT INTO public.city (id, name, country_id) VALUES (22, 'New York City', 7);
INSERT INTO public.city (id, name, country_id) VALUES (23, 'Los Angeles', 7);
INSERT INTO public.city (id, name, country_id) VALUES (24, 'Chicago', 7);
INSERT INTO public.city (id, name, country_id) VALUES (25, 'Katowice', 8);
INSERT INTO public.city (id, name, country_id) VALUES (26, 'Lublin', 8);
INSERT INTO public.city (id, name, country_id) VALUES (27, 'Warsaw', 8);
INSERT INTO public.city (id, name, country_id) VALUES (28, 'Rome', 9);
INSERT INTO public.city (id, name, country_id) VALUES (29, 'Milan', 9);
INSERT INTO public.city (id, name, country_id) VALUES (30, 'Naples', 9);
INSERT INTO public.city (id, name, country_id) VALUES (31, 'Prague', 10);
INSERT INTO public.city (id, name, country_id) VALUES (32, 'Ostrava', 10);
INSERT INTO public.city (id, name, country_id) VALUES (33, 'Brno', 10);
INSERT INTO public.city (id, name, country_id) VALUES (34, 'Moscow', 11);
INSERT INTO public.city (id, name, country_id) VALUES (35, 'Saint Petersburg', 11);
INSERT INTO public.city (id, name, country_id) VALUES (36, 'Stockholm', 12);
INSERT INTO public.city (id, name, country_id) VALUES (37, 'Malmö', 12);
INSERT INTO public.city (id, name, country_id) VALUES (38, 'Göteborg', 12);
INSERT INTO public.city (id, name, country_id) VALUES (39, 'Oslo', 13);
INSERT INTO public.city (id, name, country_id) VALUES (40, 'Bergen', 13);
INSERT INTO public.city (id, name, country_id) VALUES (41, 'Trondheim', 13);
INSERT INTO public.city (id, name, country_id) VALUES (42, 'Helsinki', 14);
INSERT INTO public.city (id, name, country_id) VALUES (43, 'Tampere', 14);
INSERT INTO public.city (id, name, country_id) VALUES (44, 'Bucharest', 15);
INSERT INTO public.city (id, name, country_id) VALUES (45, 'Constanta', 15);
INSERT INTO public.city (id, name, country_id) VALUES (46, 'Cluj-Napoca', 15);
INSERT INTO public.city (id, name, country_id) VALUES (47, 'Budapest', 16);
INSERT INTO public.city (id, name, country_id) VALUES (48, 'Debrecen', 16);
INSERT INTO public.city (id, name, country_id) VALUES (49, 'Szeged', 16);
INSERT INTO public.city (id, name, country_id) VALUES (50, 'Samara', 11);


--
-- TOC entry 2889 (class 0 OID 32963)
-- Dependencies: 197
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country (id, name) VALUES (1, 'United Kingdom');
INSERT INTO public.country (id, name) VALUES (2, 'France');
INSERT INTO public.country (id, name) VALUES (3, 'Spain');
INSERT INTO public.country (id, name) VALUES (4, 'Ukraine');
INSERT INTO public.country (id, name) VALUES (5, 'Germany');
INSERT INTO public.country (id, name) VALUES (6, 'Belgium');
INSERT INTO public.country (id, name) VALUES (7, 'USA');
INSERT INTO public.country (id, name) VALUES (8, 'Poland');
INSERT INTO public.country (id, name) VALUES (9, 'Italy');
INSERT INTO public.country (id, name) VALUES (10, 'Czech Republic');
INSERT INTO public.country (id, name) VALUES (11, 'Russia');
INSERT INTO public.country (id, name) VALUES (12, 'Sweden');
INSERT INTO public.country (id, name) VALUES (13, 'Norway');
INSERT INTO public.country (id, name) VALUES (14, 'Finland');
INSERT INTO public.country (id, name) VALUES (15, 'Romania');
INSERT INTO public.country (id, name) VALUES (16, 'Hungary');


--
-- TOC entry 2893 (class 0 OID 32985)
-- Dependencies: 201
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2901 (class 0 OID 33029)
-- Dependencies: 209
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2903 (class 0 OID 33037)
-- Dependencies: 211
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2895 (class 0 OID 32996)
-- Dependencies: 203
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2899 (class 0 OID 33018)
-- Dependencies: 207
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 204
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 7, true);


--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 198
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 50, true);


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 196
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 20, true);


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 200
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, false);


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 208
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_id_seq', 1, false);


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 210
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 202
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 1, false);


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 206
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


-- Completed on 2019-02-04 15:36:44

--
-- PostgreSQL database dump complete
--

