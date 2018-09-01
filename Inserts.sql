--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg16.04+1)

-- Started on 2018-08-29 19:26:42 EEST

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
-- TOC entry 2924 (class 0 OID 24824)
-- Dependencies: 196
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Category" (id, name_category) VALUES (1, 'Food');
INSERT INTO public."Category" (id, name_category) VALUES (3, 'Cosmetics');


--
-- TOC entry 2926 (class 0 OID 24830)
-- Dependencies: 198
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

INSERT INTO public."Country" (id, name_country) VALUES (61, 'Canada');
INSERT INTO public."Country" (id, name_country) VALUES (62, 'Mexico');
INSERT INTO public."Country" (id, name_country) VALUES (63, 'USA');


--
-- TOC entry 2925 (class 0 OID 24827)
-- Dependencies: 197
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
-- TOC entry 2927 (class 0 OID 24833)
-- Dependencies: 199
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

--
-- TOC entry 2928 (class 0 OID 24836)
-- Dependencies: 200
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (41, 'Seth', 'Cejka', '1978-07-15', '2018-02-14', NULL, 'Valentyna', 'Burbon Street, House #41', 41);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (42, 'Barrett', 'Moland', '1978-01-31', '2017-12-13', NULL, 'Valentyna', 'Burbon Street, House #42', 42);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (43, 'Siusan', 'Macro', '1978-06-27', '2017-08-28', NULL, 'Valentyna', 'Burbon Street, House #43', 43);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (44, 'Brigham', 'Bugge', '1978-03-27', '2018-06-17', 42, 'Valentyna', 'Burbon Street, House #44', 44);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (46, 'Stephani', 'Undrell', '1977-10-16', '2018-05-22', 42, 'Valentyna', 'Burbon Street, House #46', 46);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (47, 'Harcourt', 'Baudet', '1978-03-19', '2018-01-06', 42, 'Valentyna', 'Burbon Street, House #47', 47);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (48, 'Skippy', 'Hanmer', '1977-10-15', '2018-05-23', 42, 'Valentyna', 'Burbon Street, House #48', 48);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (49, 'Arte', 'Tuckwood', '1978-05-03', '2017-12-27', 42, 'Valentyna', 'Burbon Street, House #49', 49);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (50, 'Francesca', 'Doel', '1978-03-14', '2018-03-21', 42, 'Valentyna', 'Burbon Street, House #50', 50);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (51, 'Deeann', 'Genthner', '1978-03-19', '2018-03-12', 42, 'Valentyna', 'Burbon Street, House #51', 51);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (52, 'Sherie', 'Tibbits', '1978-02-08', '2018-05-06', 42, 'Valentyna', 'Burbon Street, House #52', 52);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (53, 'Salvatore', 'Gepheart', '1978-05-20', '2017-08-19', 42, 'Valentyna', 'Burbon Street, House #53', 53);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (54, 'Lindsey', 'Claworth', '1977-12-28', '2017-12-10', 42, 'Valentyna', 'Burbon Street, House #54', 54);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (56, 'Flo', 'Royden', '1977-09-10', '2018-01-26', 42, 'Valentyna', 'Burbon Street, House #56', 56);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (57, 'Biron', 'Decroix', '1978-03-24', '2018-06-23', 42, 'Valentyna', 'Burbon Street, House #57', 57);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (58, 'Darb', 'Kaser', '1978-04-12', '2018-02-05', 42, 'Valentyna', 'Burbon Street, House #58', 58);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (59, 'Ahmad', 'Paunton', '1978-07-20', '2018-02-02', 42, 'Valentyna', 'Burbon Street, House #59', 59);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (60, 'Clyde', 'Fonte', '1977-11-10', '2018-08-03', 42, 'Valentyna', 'Burbon Street, House #60', 60);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (55, 'Bryn', 'Copestick', '1977-12-28', '2018-02-05', 42, 'Valentyna', 'Burbon Street, House #55', 55);
INSERT INTO public."Employee" (id, first_name, last_name, birth_date, hire_date, id_chief, notes, address, id_city) VALUES (45, 'Abigail', 'Flannigan', '1977-09-10', '2017-10-03', 43, 'Valentyna', 'Burbon Street, House #45', 45);

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

-- Mykytiuk inserts data into "Employee"
INSERT INTO "Employee"(
            id, first_name, last_name, birth_date, hire_date, id_chief, notes, 
            address, id_city)
    VALUES (11, 'Taya', 'Vasilinchuk', '21/03/1988', '22/05/2018', 1, 'Ivan Mykytiuk', 
            'Holovna Street 29', 20);
            INSERT INTO "Employee"(
            id, first_name, last_name, birth_date, hire_date, id_chief, notes, 
            address, id_city)
    VALUES (12, 'Sonya', 'Baraban', '09/06/1987', '17/12/2017', 1, 'Ivan Mykytiuk', 
            'Bohuna Street 106', 15);
            INSERT INTO "Employee"(
            id, first_name, last_name, birth_date, hire_date, id_chief, notes, 
            address, id_city)
    VALUES (13, 'Petya', 'Lunik', '03/09/1986', '04/08/2017', 1, 'Ivan Mykytiuk', 
            'Kobylyanska Street 45', 8);
            INSERT INTO "Employee"(
            id, first_name, last_name, birth_date, hire_date, id_chief, notes, 
            address, id_city)
    VALUES (14, 'Toto', 'Cutunio', '09/10/1987', '08/08/2016', 1, 'Ivan Mykytiuk', 
            'Ruska Street 12', 3);
            INSERT INTO "Employee"(
            id, first_name, last_name, birth_date, hire_date, id_chief, notes, 
            address, id_city)
    VALUES (15, 'Kostya', 'Dzyu', '29/12/1989', '02/01/2017', 1, 'Ivan Mykytiuk', 
            'Haharina Street 162', 10); 
--
-- TOC entry 2929 (class 0 OID 24839)
-- Dependencies: 201
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
-- TOC entry 2931 (class 0 OID 24845)
-- Dependencies: 203
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

--
-- TOC entry 2932 (class 0 OID 24848)
-- Dependencies: 204
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (55, 'Іausages', 55, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (41, 'Chocolate', 41, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (47, 'Tofu', 47, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (59, 'Fish', 59, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (60, 'Tofu', 60, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (45, 'White Beer', 45, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (50, 'Orange', 50, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (43, 'Black Chocolate', 43, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (42, 'Pasta', 42, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (51, 'Tea', 51, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (56, 'Oil', 56, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (49, 'Coffe', 49, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (44, 'Fish', 44, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (54, 'Oil', 54, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (53, 'Vine', 53, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (57, 'Vine', 57, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (52, 'cookies', 51, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (58, 'Cheese', 58, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (46, 'Brot', 46, 1);
INSERT INTO public."Product" (id, name_product, id_producer, id_category) VALUES (48, 'Milk', 48, 1);

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

--
-- TOC entry 2930 (class 0 OID 24842)
-- Dependencies: 202
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


-- Completed on 2018-08-29 19:26:42 EEST

--
-- PostgreSQL database dump complete
--

