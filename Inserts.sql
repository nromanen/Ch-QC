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


-- Completed on 2018-08-29 19:26:42 EEST

--
-- PostgreSQL database dump complete
--

