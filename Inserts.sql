--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.19
-- Dumped by pg_dump version 9.4.19
-- Started on 2018-09-03 17:20:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2074 (class 0 OID 24709)
-- Dependencies: 174
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Category" (id, name_category) VALUES (1, 'Food');
INSERT INTO public."Category" (id, name_category) VALUES (6, 'Sport');
INSERT INTO public."Category" (id, name_category) VALUES (3, 'Cosmetics');
INSERT INTO public."Category" (id, name_category) VALUES (2, 'Clothes');


--
-- TOC entry 2096 (class 0 OID 0)
-- Dependencies: 175
-- Name: Category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_id_category_seq"', 1, false);


--
-- TOC entry 2078 (class 0 OID 24719)
-- Dependencies: 178
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Country" (id, name_country) VALUES (41, 'Austria');
INSERT INTO public."Country" (id, name_country) VALUES (42, 'Italy');
INSERT INTO public."Country" (id, name_country) VALUES (43, 'Belgium');
INSERT INTO public."Country" (id, name_country) VALUES (44, 'Latvia');
INSERT INTO public."Country" (id, name_country) VALUES (45, 'Czech Republic');
INSERT INTO public."Country" (id, name_country) VALUES (46, 'Netherlands');
INSERT INTO public."Country" (id, name_country) VALUES (47, 'Denmark');
INSERT INTO public."Country" (id, name_country) VALUES (48, 'Poland');
INSERT INTO public."Country" (id, name_country) VALUES (49, 'Estonia');
INSERT INTO public."Country" (id, name_country) VALUES (50, 'Portugal');
INSERT INTO public."Country" (id, name_country) VALUES (51, 'Finland');
INSERT INTO public."Country" (id, name_country) VALUES (52, 'Romania');
INSERT INTO public."Country" (id, name_country) VALUES (53, 'France');
INSERT INTO public."Country" (id, name_country) VALUES (54, 'Slovakia');
INSERT INTO public."Country" (id, name_country) VALUES (55, 'Germany');
INSERT INTO public."Country" (id, name_country) VALUES (56, 'Greece');
INSERT INTO public."Country" (id, name_country) VALUES (57, 'Spain');
INSERT INTO public."Country" (id, name_country) VALUES (58, 'Hungary');
INSERT INTO public."Country" (id, name_country) VALUES (59, 'Sweden');
INSERT INTO public."Country" (id, name_country) VALUES (60, 'United Kingdom');
INSERT INTO public."Country" (id, name_country) VALUES (6, 'Australia');
INSERT INTO public."Country" (id, name_country) VALUES (81, 'Argentina');
INSERT INTO public."Country" (id, name_country) VALUES (82, 'Bolivia');
INSERT INTO public."Country" (id, name_country) VALUES (83, 'Brazil');
INSERT INTO public."Country" (id, name_country) VALUES (84, 'Venezuela');
INSERT INTO public."Country" (id, name_country) VALUES (85, 'Guyana');
INSERT INTO public."Country" (id, name_country) VALUES (86, 'Colombia');
INSERT INTO public."Country" (id, name_country) VALUES (87, 'Paraguay');
INSERT INTO public."Country" (id, name_country) VALUES (88, 'Peru');
INSERT INTO public."Country" (id, name_country) VALUES (89, 'Suriname');
INSERT INTO public."Country" (id, name_country) VALUES (90, 'Uruguay');
INSERT INTO public."Country" (id, name_country) VALUES (91, 'Falkland');
INSERT INTO public."Country" (id, name_country) VALUES (92, 'Chile');
INSERT INTO public."Country" (id, name_country) VALUES (93, 'Ecuador');
INSERT INTO public."Country" (id, name_country) VALUES (61, 'Canada');
INSERT INTO public."Country" (id, name_country) VALUES (62, 'Mexico');
INSERT INTO public."Country" (id, name_country) VALUES (63, 'USA');


--
-- TOC entry 2076 (class 0 OID 24714)
-- Dependencies: 176
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."City" (id, name_city, id_country) VALUES (41, 'Vienna', 41);
INSERT INTO public."City" (id, name_city, id_country) VALUES (42, 'Rome', 42);
INSERT INTO public."City" (id, name_city, id_country) VALUES (43, 'Brussels', 43);
INSERT INTO public."City" (id, name_city, id_country) VALUES (44, 'Riga', 44);
INSERT INTO public."City" (id, name_city, id_country) VALUES (45, 'Prague', 45);
INSERT INTO public."City" (id, name_city, id_country) VALUES (46, 'Amsterdam', 46);
INSERT INTO public."City" (id, name_city, id_country) VALUES (47, 'Copenhagen', 47);
INSERT INTO public."City" (id, name_city, id_country) VALUES (48, 'Warsaw', 48);
INSERT INTO public."City" (id, name_city, id_country) VALUES (49, 'Tallinn', 49);
INSERT INTO public."City" (id, name_city, id_country) VALUES (50, 'Lisbon', 50);
INSERT INTO public."City" (id, name_city, id_country) VALUES (51, 'Helsinki', 51);
INSERT INTO public."City" (id, name_city, id_country) VALUES (52, 'Bucharest', 52);
INSERT INTO public."City" (id, name_city, id_country) VALUES (53, 'Paris', 53);
INSERT INTO public."City" (id, name_city, id_country) VALUES (54, 'Bratislava', 54);
INSERT INTO public."City" (id, name_city, id_country) VALUES (55, 'Berlin', 55);
INSERT INTO public."City" (id, name_city, id_country) VALUES (56, 'Athens', 56);
INSERT INTO public."City" (id, name_city, id_country) VALUES (57, 'Madrid', 57);
INSERT INTO public."City" (id, name_city, id_country) VALUES (58, 'Budapest', 58);
INSERT INTO public."City" (id, name_city, id_country) VALUES (59, 'Stockholm', 59);
INSERT INTO public."City" (id, name_city, id_country) VALUES (60, 'London', 60);
INSERT INTO public."City" (id, name_city, id_country) VALUES (21, 'Canberra', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (22, 'Sydney', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (23, 'Darwin', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (24, 'Palmerstone', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (25, 'Brisbane', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (26, 'Adelaide', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (27, 'Whyalla', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (28, 'Hobart', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (29, 'Melbourne', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (30, 'Perth', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (31, 'Cairns', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (32, 'Newcastle', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (33, 'Wollongong', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (34, 'Townville', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (35, 'Bendigo', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (36, 'Geelong', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (37, 'Ballarat', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (38, 'Albury', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (39, 'Wodonga', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (40, 'Mackay', 6);
INSERT INTO public."City" (id, name_city, id_country) VALUES (81, 'Buenos Aires', 81);
INSERT INTO public."City" (id, name_city, id_country) VALUES (82, ' Catamarca', 81);
INSERT INTO public."City" (id, name_city, id_country) VALUES (83, 'Chaco', 81);
INSERT INTO public."City" (id, name_city, id_country) VALUES (84, 'La Paz', 82);
INSERT INTO public."City" (id, name_city, id_country) VALUES (85, 'El Alto', 82);
INSERT INTO public."City" (id, name_city, id_country) VALUES (86, 'Cochabamba', 82);
INSERT INTO public."City" (id, name_city, id_country) VALUES (87, 'Brasilia', 83);
INSERT INTO public."City" (id, name_city, id_country) VALUES (88, 'São Paulo', 83);
INSERT INTO public."City" (id, name_city, id_country) VALUES (89, 'Rio de Janeiro', 83);
INSERT INTO public."City" (id, name_city, id_country) VALUES (90, 'Caracas', 84);
INSERT INTO public."City" (id, name_city, id_country) VALUES (91, 'Georgetown', 85);
INSERT INTO public."City" (id, name_city, id_country) VALUES (92, 'Santa de Bogotá', 86);
INSERT INTO public."City" (id, name_city, id_country) VALUES (93, 'Asuncion', 87);
INSERT INTO public."City" (id, name_city, id_country) VALUES (94, 'Lima', 88);
INSERT INTO public."City" (id, name_city, id_country) VALUES (95, 'Paramaribo', 89);
INSERT INTO public."City" (id, name_city, id_country) VALUES (96, 'Montevideo', 90);
INSERT INTO public."City" (id, name_city, id_country) VALUES (97, 'Barcelona', 90);
INSERT INTO public."City" (id, name_city, id_country) VALUES (98, 'Port Stanley', 91);
INSERT INTO public."City" (id, name_city, id_country) VALUES (99, 'Santiago', 92);
INSERT INTO public."City" (id, name_city, id_country) VALUES (100, 'Quito', 93);
INSERT INTO public."City" (id, name_city, id_country) VALUES (61, 'Toronto', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (62, 'Vancouver', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (63, 'Ottawa', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (64, 'Edmonton', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (65, 'Regina', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (66, 'Winnipeg', 61);
INSERT INTO public."City" (id, name_city, id_country) VALUES (67, 'Guadalajara', 62);
INSERT INTO public."City" (id, name_city, id_country) VALUES (68, 'Mexico', 62);
INSERT INTO public."City" (id, name_city, id_country) VALUES (69, 'Colima', 62);
INSERT INTO public."City" (id, name_city, id_country) VALUES (70, 'Morelia', 62);
INSERT INTO public."City" (id, name_city, id_country) VALUES (71, 'Pachuca', 62);
INSERT INTO public."City" (id, name_city, id_country) VALUES (72, 'Chicago', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (73, 'Los Angeles', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (74, 'New York', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (75, 'Dallas', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (76, 'San Francisco', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (77, 'Boston', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (78, 'Las Vegas', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (79, 'Miami', 63);
INSERT INTO public."City" (id, name_city, id_country) VALUES (80, 'New Orleans', 63);


--
-- TOC entry 2097 (class 0 OID 0)
-- Dependencies: 177
-- Name: City_id_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_id_city_seq"', 1, false);


--
-- TOC entry 2098 (class 0 OID 0)
-- Dependencies: 179
-- Name: Country_id_country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Country_id_country_seq"', 1, false);


--
-- TOC entry 2080 (class 0 OID 24724)
-- Dependencies: 180
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (41, 'Peter', 'North', 41);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (42, 'Franchesco', 'Filini', 42);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (43, 'Mark', 'Buss', 43);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (44, 'Nata', 'Shprot', 44);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (45, 'Beer', 'Cozel', 45);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (46, 'Mari', 'Huana', 46);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (47, 'Very', 'Expensive', 47);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (48, 'Mrowka', 'Truskavka', 48);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (49, 'Very', 'Slow', 49);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (50, 'Orange', 'Juice', 50);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (51, 'Nice', 'Fiord', 51);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (52, 'Buna', 'Sara', 52);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (53, 'Frog', 'Legs', 53);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (54, 'Where', 'Itis', 54);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (55, 'Ramm', 'Stein', 55);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (56, 'Ser', 'Taki', 56);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (57, 'Man', 'Darin', 57);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (58, 'Got', 'Smack', 58);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (59, 'Stock', 'Holm', 59);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (60, 'John', 'Smith', 60);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (21, 'Anthony', 'Callea', 26);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (22, 'Brody', 'Dalle', 21);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (23, 'Jim', 'Jefferies', 30);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (24, 'Charle', 'Dalle', 35);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (25, 'Susan', 'Powter', 37);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (26, 'Claudia', 'Black', 23);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (27, 'Donald', 'Bradman', 27);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (28, 'Kate', 'Leon', 28);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (29, 'Jim', 'Black', 22);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (30, 'Samara', 'Simmons', 25);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (31, 'Rob', 'Black', 34);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (32, 'Matt', 'Hinkler', 30);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (33, 'Sam', 'Sparro', 32);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (34, 'Anthony', 'Leon', 29);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (35, 'Claudia', 'Wakelin', 24);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (36, 'Susan', 'Callea', 38);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (37, 'Matt', 'Slipper', 36);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (38, 'James', 'Bright', 39);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (39, 'Israel', 'Sparro', 33);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (40, 'Peter', 'Kepu', 31);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (61, 'Adam', 'Mitch', 72);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (62, 'Iva', 'Mackenzi', 73);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (63, 'Jennifer', 'Lopes', 74);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (64, 'Amanda', 'Selfard', 75);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (65, 'Aleksander', 'Chaned', 76);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (66, 'Kate', 'Radison', 77);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (67, 'Alison', 'Nice', 78);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (68, 'Hose', 'Amomio', 71);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (69, 'Alehandro', 'Jose', 67);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (70, 'Miguel', 'Angelo', 69);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (71, 'Juan', 'Luis', 68);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (72, 'Maria', 'Carmen', 70);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (73, 'Tom', 'Hardy', 79);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (74, 'Jastin', 'Biber', 80);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (75, 'Logan', 'Bruno', 66);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (76, 'Jacob ', 'Smith', 65);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (77, 'Thomas', 'Brodie', 64);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (78, 'Olivia', 'Noah', 63);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (79, 'Isabella ', 'James', 62);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (80, 'Mia', 'Mason', 61);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (81, 'Nancy', 'Davolio', 81);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (82, 'Andrew', 'Fuller', 82);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (83, 'Janet', 'Leverling', 83);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (84, 'Maria', 'Anders', 84);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (85, 'Ana', 'Trujillo', 85);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (86, 'Antonio', 'Moreno', 86);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (87, 'Thomas', 'Hardy', 87);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (88, 'Christina', 'Berglund', 88);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (89, 'Hanna', 'Moos', 89);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (90, 'Frederique', 'Citeaux', 90);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (91, 'Martin', 'Sommer', 91);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (92, 'Laurence', 'Lebihans', 92);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (93, 'Elizabeth', 'Lincoln', 93);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (94, 'Victoria', 'Ashworth', 94);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (95, 'Patricio', 'Simpson', 95);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (96, 'Francisco', 'Chang', 96);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (97, 'Pedro', 'Afonso', 97);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (98, 'Elizabeth', 'Brown', 98);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (99, 'Sven', 'Ottlieb', 99);
INSERT INTO public."Customer" (id, f_name_customer, l_name_customer, id_city) VALUES (100, 'Janine', 'Labrune', 100);


--
-- TOC entry 2099 (class 0 OID 0)
-- Dependencies: 181
-- Name: Customer_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_id_customer_seq"', 1, false);


--
-- TOC entry 2082 (class 0 OID 24729)
-- Dependencies: 182
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (22, 'Adam', 'Cooper', '1985-09-21', '2006-06-21', '12-18 Hall St, NSW 2302', 21, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (23, 'Rose', 'Byrney', '1973-01-09', '1994-08-05', '16-20 Ravenshaw St, NSW 2300', 35, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (24, 'Kurtley', 'Beale', '1990-02-23', '2012-09-03', '27-29 Gan Gan Rd, NSW 2316', 26, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (25, 'Berrick', 'Barnes', '1985-07-06', '2005-08-03', '15-98 Angas St, NSW 2120', 31, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (26, 'Abbie', 'Cornish', '1980-09-06', '2003-09-04', '13-29 Churchill Road, NSW 2532', 30, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (27, 'Scott', 'Higginbotham', '1992-07-12', '2014-09-01', '78-96 Rundle St, NSW 2125', 22, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (28, 'Jessica', 'Gomes', '1980-09-05', '2001-10-13', '89-16 Regency Road, NSW 2113', 38, 25, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (29, 'Ben', 'Alexander', '1971-05-25', '1990-03-09', '15-15 East Terrace, NSW 2301', 40, 21, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (30, 'David', 'Koch', '1960-01-08', '1979-07-11', '78-23 Grenfell St, NSW 2132', 29, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (31, 'Errol', 'Flynn', '1967-03-07', '1988-01-09', '12-10  Sturt St, NSW 2133', 39, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (32, 'Maia', 'Mitchell', '1993-07-02', '2015-09-14', '5-8 Franklin St, NSW 2134', 36, 23, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (34, 'Cody', 'Simpson', '1994-09-18', '2013-07-25', '235-96 Victoria Road, NSW 2136', 23, 30, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (35, 'Torah', 'Bright', '1980-06-28', '2000-12-03', '789-23 Gawler Place, NSW 2137', 25, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (36, 'Indiana', 'Evans', '1991-05-16', '2012-08-19', '1-1 King William St, NSW 2138', 24, 31, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (38, 'David', 'Cooper', '1990-04-15', '2009-08-17', '9-6 Halifax St, NSW 2142', 37, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (39, 'Jessica', 'Tozzi', '1990-06-05', '2011-06-09', '89-35 Grote St, NSW 2115', 34, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (40, 'Cooper', 'Simmons', '1993-02-03', '2012-07-16', '73-20 The Parade, NSW 2021', 33, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (21, 'Nathan', 'Sharpe', '1956-07-05', '1978-07-23', '105-107 Union St, NSW 2300', 28, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (33, 'Paul', 'Hogan', '1954-04-23', '1977-05-19', '19-14 Pirie St, NSW 2135', 32, NULL, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (37, 'Peter', 'Allen', '1953-03-17', '1975-09-04', '2-15 Hindley St, NSW 2139', 27, 33, 'YuliiaBorova');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (11, 'Taya', 'Vasilinchuk', '1988-03-21', '2018-05-22', 'Holovna Street 29', 41, 11, 'Ivan Mykytiuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (12, 'Sonya', 'Baraban', '1987-06-09', '2017-12-17', 'Bohuna Street 106', 42, 12, 'Ivan Mykytiuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (13, 'Petya', 'Lunik', '1986-09-03', '2017-08-04', 'Kobylyanska Street 45', 43, 12, 'Ivan Mykytiuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (14, 'Toto', 'Cutunio', '1987-10-09', '2016-08-08', 'Ruska Street 12', 44, 12, 'Ivan Mykytiuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (15, 'Kostya', 'Dzyu', '1989-12-29', '2017-01-02', 'Haharina Street 162', 45, 12, 'Ivan Mykytiuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (41, 'Seth', 'Cejka', '1978-07-15', '2018-02-14', 'Burbon Street, House #41', 41, NULL, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (42, 'Barrett', 'Moland', '1978-01-31', '2017-12-13', 'Burbon Street, House #42', 42, NULL, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (43, 'Siusan', 'Macro', '1978-06-27', '2017-08-28', 'Burbon Street, House #43', 43, NULL, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (44, 'Brigham', 'Bugge', '1978-03-27', '2018-06-17', 'Burbon Street, House #44', 44, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (46, 'Stephani', 'Undrell', '1977-10-16', '2018-05-22', 'Burbon Street, House #46', 46, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (47, 'Harcourt', 'Baudet', '1978-03-19', '2018-01-06', 'Burbon Street, House #47', 47, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (48, 'Skippy', 'Hanmer', '1977-10-15', '2018-05-23', 'Burbon Street, House #48', 48, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (49, 'Arte', 'Tuckwood', '1978-05-03', '2017-12-27', 'Burbon Street, House #49', 49, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (50, 'Francesca', 'Doel', '1978-03-14', '2018-03-21', 'Burbon Street, House #50', 50, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (51, 'Deeann', 'Genthner', '1978-03-19', '2018-03-12', 'Burbon Street, House #51', 51, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (52, 'Sherie', 'Tibbits', '1978-02-08', '2018-05-06', 'Burbon Street, House #52', 52, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (53, 'Salvatore', 'Gepheart', '1978-05-20', '2017-08-19', 'Burbon Street, House #53', 53, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (54, 'Lindsey', 'Claworth', '1977-12-28', '2017-12-10', 'Burbon Street, House #54', 54, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (56, 'Flo', 'Royden', '1977-09-10', '2018-01-26', 'Burbon Street, House #56', 56, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (57, 'Biron', 'Decroix', '1978-03-24', '2018-06-23', 'Burbon Street, House #57', 57, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (58, 'Darb', 'Kaser', '1978-04-12', '2018-02-05', 'Burbon Street, House #58', 58, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (59, 'Ahmad', 'Paunton', '1978-07-20', '2018-02-02', 'Burbon Street, House #59', 59, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (60, 'Clyde', 'Fonte', '1977-11-10', '2018-08-03', 'Burbon Street, House #60', 60, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (55, 'Bryn', 'Copestick', '1977-12-28', '2018-02-05', 'Burbon Street, House #55', 55, 42, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (45, 'Abigail', 'Flannigan', '1977-09-10', '2017-10-03', 'Burbon Street, House #45', 45, 43, 'Valentyna');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (81, 'Catherine', 'Dewey', '1965-03-02', '1996-06-05', 'Obere Str. 57 ', 81, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (82, 'Jean', 'Fresniere', '1970-11-25', '1997-09-11', 'Avda. de la Constitucion 2222', 82, 81, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (83, 'Alexander', 'Feuer', '1950-09-30', '1995-10-19', 'Mataderos 2312', 83, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (84, 'Simon', 'Crowther', '1969-12-06', '1999-11-12', '120 Hanover Sq.', 84, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (85, 'Yvonne', 'Moncada', '1985-12-22', '2007-03-05', 'Forsterstr. 57', 85, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (86, 'Rene', 'Phillips', '1986-09-18', '2008-09-09', 'C/ Araquil, 67', 86, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (87, 'Henriette', 'Pfalzheim', '1970-01-26', '2000-07-09', '12, rue des Bouchers', 87, 82, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (88, 'Marie', 'Bertrand', '1980-09-26', '2000-10-24', '23 Tsawassen Blvd.', 88, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (89, 'Guillermo', 'Fernandez', '2000-01-01', '2018-05-01', 'Cerrito 333', 89, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (90, 'Georg', 'Pipps', '1984-12-09', '2006-09-29', 'Sierras de Granada 9993', 90, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (91, 'Isabel', 'de Castro', '1978-02-27', '2001-10-02', 'Av. dos Lusiadas, 23', 91, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (92, 'Bernardo', 'Batista', '1989-03-03', '2010-05-04', 'Walserweg 21', 92, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (93, 'Lucia', 'Carvalho', '1990-12-09', '2011-08-08', '67, rue des Cinquante Otages', 93, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (94, 'Horst', 'Kloss', '2000-01-13', '2018-08-09', 'Kirchgasse 6 ', 94, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (95, 'Sergio', 'Gutierrez', '1976-10-19', '2000-09-15', 'Rua Oros, 92', 95, 83, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (96, 'Paula', 'Wilson', '1983-10-27', '2005-04-12', 'C/ Moralzarzal, 86 ', 96, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (97, 'Maurizio', 'Moroni', '1988-12-31', '2010-09-19', '184, chaussee de Tournai', 97, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (98, 'Janete', 'Limeira', '1995-02-16', '2016-12-06', '54, rue Royale', 98, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (99, 'Michael', 'Holz', '1993-12-12', '2015-06-29', 'Via Monte Bianco 34', 99, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (100, 'Alejandra', 'Camino', '1991-04-02', '2014-09-09', 'Jardim das rosas n. 32', 100, NULL, 'VPetrashchuk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (61, 'Ryan', 'Golema', '1962-06-18', '1996-04-13', 'Gloucester Drive 57a', 63, NULL, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (62, 'Thomas', 'Lema', '1963-01-10', '1997-08-08', 'Pinewood Crescent 343', 63, 61, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (63, 'Karine', 'Amber', '1987-07-28', '2011-04-13', 'Rue Dupuis 14', 63, 61, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (64, 'Alex', 'Briann', '1963-05-01', '1997-01-11', 'Gloucester Drive 5', 63, 61, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (65, 'Simon', 'William', '1977-08-18', '2013-04-23', 'Pin Crescent 141', 63, 61, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (66, 'George', 'Olen', '1978-10-28', '2013-08-25', 'Bathurst 880', 63, 61, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (67, 'Olivia', 'Golema', '1979-12-08', '2011-09-04', ' Broadway 1556', 72, NULL, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (68, 'Adam', 'Lem', '1963-08-18', '1997-09-01', 'Dominica Circle 271 ', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (69, 'Amanda', 'Sema', '1990-01-29', '2015-11-30', 'Fordham 5607', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (70, 'Mikle', 'Kors', '1963-02-28', '1996-03-28', 'Clayhall Avenue 8800', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (71, 'Tom', 'Devis', '1986-03-03', '2012-01-15', 'Pike Close 6', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (72, 'Thomas', 'Miller', '1962-05-15', '1996-07-24', 'Broadway 2556', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (73, 'Eva', 'Smith', '1978-12-18', '2018-02-02', 'Fordham 5708', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (74, 'Natali', 'Wilson', '1987-11-18', '2008-04-18', 'Dominica Circle 371', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (75, 'Emma', 'Hill', '1981-10-18', '2010-06-06', 'Bathurst 999', 72, 67, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (76, 'Diego', 'Fernando', '1963-09-18', '1997-02-25', 'Avenida Bucareli 111', 68, NULL, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (77, 'Alehandro', 'Gole', '1963-09-18', '1997-01-19', 'Paseo de la Reforma', 68, 76, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (78, 'John', 'Carlos', '1995-07-18', '2017-07-21', 'Madero Street 257', 68, 76, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (79, 'Miguel', 'Angelo', '1994-07-18', '2017-07-21', 'Madero Street 117', 68, 76, 'Yuliya Lapchyk');
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) VALUES (80, 'Jesus', 'Luis', '1962-04-18', '1996-08-20', 'Avenida Bucareli 200', 68, 76, 'Yuliya Lapchyk');


--
-- TOC entry 2100 (class 0 OID 0)
-- Dependencies: 183
-- Name: Employee_id_employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_id_employee_seq"', 1, false);


--
-- TOC entry 2084 (class 0 OID 24734)
-- Dependencies: 184
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (41, 59, 60, '2018-02-19');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (42, 42, 45, '2018-06-14');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (43, 56, 46, '2017-12-09');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (44, 48, 51, '2017-05-03');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (45, 48, 57, '2017-01-14');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (46, 59, 59, '2018-04-12');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (47, 44, 48, '2017-01-20');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (48, 49, 52, '2017-03-22');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (49, 46, 50, '2017-12-19');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (50, 47, 44, '2017-03-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (51, 43, 43, '2017-03-05');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (52, 57, 44, '2017-07-31');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (53, 55, 59, '2017-12-30');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (54, 47, 47, '2017-03-23');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (55, 51, 54, '2018-08-01');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (56, 51, 52, '2018-06-11');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (57, 47, 56, '2017-05-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (58, 48, 44, '2018-05-06');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (59, 50, 50, '2017-06-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (60, 42, 57, '2017-10-14');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (21, 29, 34, '1997-02-23');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (22, 21, 27, '1997-08-15');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (23, 24, 28, '2000-09-10');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (24, 25, 33, '2001-01-09');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (25, 27, 24, '2001-03-17');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (26, 30, 37, '2010-03-17');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (27, 32, 39, '2001-04-05');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (28, 37, 26, '2001-03-17');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (29, 40, 30, '2011-03-05');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (30, 33, 25, '2012-05-14');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (31, 39, 31, '2013-07-15');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (32, 34, 22, '2014-01-18');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (33, 35, 23, '2014-05-17');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (34, 36, 21, '2014-07-05');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (35, 31, 29, '2015-07-03');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (36, 38, 35, '2015-10-23');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (37, 27, 24, '2016-08-16');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (38, 28, 38, '2016-10-01');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (39, 26, 32, '2017-08-25');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (40, 23, 40, '2018-07-18');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (61, 80, 74, '2018-08-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (62, 79, 73, '2018-08-28');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (63, 78, 72, '1997-02-22');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (64, 77, 71, '2017-07-07');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (65, 76, 70, '1997-11-11');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (66, 75, 69, '2018-07-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (67, 74, 68, '1997-10-08');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (68, 73, 67, '2018-05-15');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (69, 72, 80, '1997-06-30');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (70, 71, 79, '2017-10-06');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (71, 70, 78, '2018-03-23');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (72, 69, 77, '1997-02-11');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (73, 68, 76, '1997-09-08');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (74, 67, 75, '2018-08-26');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (75, 66, 61, '1997-01-02');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (76, 65, 62, '1997-09-09');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (77, 64, 63, '2017-12-21');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (78, 63, 64, '1997-04-14');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (81, 61, 66, '1997-08-28');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (80, 61, 66, '1997-08-28');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (79, 62, 64, '1997-08-15');
INSERT INTO public."Order" (id, id_customer, id_employee, date) VALUES (82, 74, 66, '2018-02-02');


--
-- TOC entry 2101 (class 0 OID 0)
-- Dependencies: 185
-- Name: Order_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_id_order_seq"', 1, false);


--
-- TOC entry 2087 (class 0 OID 24745)
-- Dependencies: 187
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (41, 'Milka', 41);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (42, 'Barilla', 42);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (43, 'Darknight', 43);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (44, 'Goldshpr', 44);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (45, 'Kozel', 45);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (46, 'Ambel', 46);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (47, 'Krauz', 47);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (48, 'Mrowka', 48);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (49, 'Kosan', 49);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (50, 'Orangecity', 50);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (51, 'Gradus', 51);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (52, 'Bun', 51);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (53, 'La Rosh', 53);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (54, 'Fanore', 54);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (55, 'Munich', 55);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (56, 'GreenOlive', 56);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (57, 'Sangria', 57);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (58, 'Uredav', 58);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (59, 'Swich', 59);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (60, 'UKfood', 60);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (21, 'Adventure Equipment Aus', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (22, 'Kathmandu', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (23, 'Mountain Designs', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (24, 'One Planet', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (25, 'OZtrail', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (26, 'Sea to Summit', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (27, 'Ice Peak', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (28, 'Cactus', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (29, 'IceBreaker', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (30, 'Deuter', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (31, 'Fjord Nanssen', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (32, 'Salewa', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (33, 'Snow Peak', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (34, 'BioLite', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (35, 'ClimbTech', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (36, 'Orsey', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (37, 'Karrimor', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (38, 'Regatta', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (39, 'Tierra', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (40, 'Zamberlan', 6);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (61, 'Viktoria Secret', 63);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (62, 'Revlon', 63);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (63, 'L_Oreal', 63);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (64, 'Ulta', 63);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (65, 'Rimmel', 63);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (66, 'Nudestix', 61);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (67, 'RMS beauty', 61);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (68, 'Farsali', 61);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (69, 'Nuance Salma Hayek', 62);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (70, 'Circa Beauty', 62);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (81, 'I. & R. Morley', 81);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (82, 'Koton (company)', 82);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (83, 'Larusmiani', 83);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (84, 'Blanc & Eclare', 84);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (85, 'Lyle & Scott', 85);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (86, 'Mexx', 86);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (87, 'Caraceni', 87);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (88, 'C&A', 88);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (89, 'Le Château', 89);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (90, 'Dolfin Swimwear', 90);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (91, 'OGGI', 91);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (92, 'Pal Zileri', 92);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (93, 'Paule Ka', 93);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (94, 'Pepe Jeans', 92);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (95, 'H&M', 91);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (96, 'S.E.H Kelly', 91);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (97, 'Trands', 81);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (98, 'J-Wear', 93);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (99, 'Joykeep Jeans', 87);
INSERT INTO public."Producer" (id, name_producer, id_country) VALUES (100, 'Iron Heart', 86);


--
-- TOC entry 2089 (class 0 OID 24750)
-- Dependencies: 189
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (55, 'Іausages', 55, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (41, 'Chocolate', 41, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (47, 'Tofu', 47, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (59, 'Fish', 59, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (60, 'Tofu', 60, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (45, 'White Beer', 45, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (50, 'Orange', 50, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (43, 'Black Chocolate', 43, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (42, 'Pasta', 42, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (51, 'Tea', 51, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (56, 'Oil', 56, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (49, 'Coffe', 49, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (44, 'Fish', 44, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (54, 'Oil', 54, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (53, 'Vine', 53, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (57, 'Vine', 57, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (52, 'cookies', 51, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (58, 'Cheese', 58, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (46, 'Brot', 46, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (48, 'Milk', 48, 1, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (21, 'tent', 23, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (22, 'tent', 23, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (23, 'tent', 31, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (24, 'hiking boots', 33, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (25, 'hiking boots', 40, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (26, 'tent', 35, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (27, 'backpack', 21, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (28, 'backpack', 26, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (29, 'headlamp', 24, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (30, 'tent', 38, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (31, 'backpack', 39, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (32, 'flashlight', 36, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (33, 'sleeping bag', 37, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (34, 'hiking pole', 34, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (35, 'sleeping bag', 30, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (36, 'hiking pole', 28, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (37, 'tent', 22, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (38, 'backpack', 25, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (39, 'hiking boots', 27, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (40, 'tent', 29, 6, NULL);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (61, 'Casting Creme ', 63, 3, 130);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (62, 'Alliance Perfect', 63, 3, 10.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (63, 'Organique Dermo Cream', 62, 3, 74.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (64, 'Proffessional Primer', 62, 3, 36.29);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (65, 'Shine Lipgloss', 61, 3, 12.59);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (66, 'Garden Fragrance Lotion', 61, 3, 19.89);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (67, 'My Biggest Lashes', 64, 3, 10.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (68, 'Liquid Eyeliner', 64, 3, 7.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (69, 'Superstat Matte Lipgloss', 65, 3, 17.32);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (70, 'Powder Mineral', 65, 3, 7.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (71, 'Sunny Lipstick beach', 68, 3, 2.48);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (72, 'Truly Natural Lipstick', 68, 3, 12.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (73, 'Super Lustrous Lipstick', 66, 3, 6.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (74, 'TATTOO BROW', 66, 3, 15.14);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (75, 'Nudies All Over Face', 67, 3, 18.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (76, 'New Bite Lipstick Queen', 67, 3, 29.50);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (77, 'Addesse Tarte Girlactik', 70, 3, 28.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (78, 'Anti-Aging Cream', 69, 3, 17.98);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (79, 'Age Glycolic Cream', 69, 3, 15.99);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (80, 'Full Coverage Foundation', 70, 3, 12.08);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (81, 'blouse', 81, 2, 15.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (82, 'skirt', 82, 2, 11.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (83, 'dress', 83, 2, 12.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (84, 'shirt', 84, 2, 20.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (85, 'trousers', 85, 2, 21.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (86, 'swimsuit', 86, 2, 30.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (87, 'sweater', 87, 2, 45.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (88, 'suit', 88, 2, 15.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (89, 'jeans', 89, 2, 10.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (90, 'shorts', 90, 2, 8.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (91, 'T-shirt', 91, 2, 50.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (92, 'shoes', 92, 2, 5.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (93, 'boots', 93, 2, 25.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (94, 'sneakers', 94, 2, 15.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (95, 'slippers', 95, 2, 20.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (96, 'sandals', 96, 2, 9.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (97, 'coat', 97, 2, 22.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (98, 'scarf', 98, 2, 18.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (99, 'jeans', 99, 2, 13.00);
INSERT INTO public."Product" (id, name_product, id_producer, id_category, price) VALUES (100, 'jeans', 100, 2, 14.00);


--
-- TOC entry 2086 (class 0 OID 24739)
-- Dependencies: 186
-- Data for Name: Order_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 51, 23.60, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 59, 312.00, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (43, 42, 201.00, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (58, 58, 190.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 55, 2.60, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 41, 206.50, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (55, 45, 92.10, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 46, 19.50, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (58, 46, 19.50, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (59, 49, 94.10, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 54, 212.30, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (59, 50, 26.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 52, 119.90, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (54, 49, 94.10, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 59, 312.00, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (47, 51, 23.60, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (54, 45, 92.10, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 50, 26.30, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (53, 47, 125.60, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (53, 46, 19.50, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 57, 125.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 56, 119.00, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 60, 214.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 53, 293.00, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 50, 26.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (58, 57, 125.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 50, 26.30, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 58, 190.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 45, 92.10, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (44, 50, 26.30, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (41, 47, 125.60, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 42, 201.00, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 42, 201.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 55, 2.60, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (48, 44, 209.30, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 41, 206.50, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 50, 26.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (47, 49, 94.10, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 41, 206.50, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 45, 92.10, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (44, 45, 92.10, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 56, 119.00, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (43, 53, 293.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 49, 94.10, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (44, 56, 119.00, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 42, 201.00, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 52, 119.90, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (42, 59, 312.00, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 58, 190.00, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 54, 212.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 57, 125.00, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 54, 212.30, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (55, 47, 125.60, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 55, 2.60, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (55, 51, 23.60, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (59, 52, 119.90, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (49, 44, 209.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 42, 201.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (42, 60, 214.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (48, 53, 293.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 49, 94.10, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 41, 206.50, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (47, 56, 119.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 47, 125.60, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 50, 26.30, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 48, 19.20, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 58, 190.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (48, 59, 312.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 46, 19.50, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 43, 115.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 58, 190.00, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (48, 43, 115.00, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (54, 51, 23.60, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 60, 214.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (49, 41, 206.50, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 50, 26.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 58, 190.00, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (55, 57, 125.00, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (52, 43, 115.00, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (58, 52, 119.90, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (44, 59, 312.00, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 55, 2.60, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (41, 48, 19.20, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (60, 52, 119.90, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (46, 48, 19.20, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 53, 293.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (50, 59, 312.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (47, 43, 115.00, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (49, 49, 94.10, 6);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (43, 44, 209.30, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 47, 125.60, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 59, 312.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (56, 46, 19.50, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (51, 53, 293.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (59, 42, 201.00, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (48, 45, 92.10, 9);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (43, 48, 19.20, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (45, 49, 94.10, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (54, 41, 206.50, 8);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (57, 53, 293.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (21, 21, 300, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (22, 22, 150, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (23, 23, 260, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (24, 24, 99, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (25, 25, 140, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (26, 26, 300, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (27, 27, 120, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (28, 28, 70, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (29, 29, 45, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (30, 30, 210, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (31, 31, 130, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (32, 32, 15, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (33, 33, 100, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (34, 34, 35, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (35, 35, 89, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (36, 36, 40, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (37, 37, 320, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (38, 38, 70, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (39, 39, 155, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (40, 40, 315, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (62, 79, 15.99, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (63, 78, 17.98, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (64, 77, 28.00, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (65, 76, 29.50, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (66, 75, 18.00, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (67, 74, 15.14, 1);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (68, 73, 6.99, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (69, 72, 12.99, 2);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (70, 71, 2.48, 20);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (71, 70, 7.99, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (72, 69, 17.32, 4);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (73, 68, 7.99, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (74, 67, 10.99, 11);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (75, 66, 19.89, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (76, 65, 12.59, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (77, 64, 36.29, 7);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (78, 63, 74.99, 5);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (79, 62, 10.99, 10);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (80, 61, 130, 3);
INSERT INTO public."Order_product" (id_order, id_product, unit_price, amount) VALUES (61, 80, 12.08, 3);


--
-- TOC entry 2102 (class 0 OID 0)
-- Dependencies: 188
-- Name: Producer_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Producer_id_producer_seq"', 1, false);


--
-- TOC entry 2103 (class 0 OID 0)
-- Dependencies: 190
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 1, false);


-- Completed on 2018-09-03 17:20:41

--
-- PostgreSQL database dump complete
--

