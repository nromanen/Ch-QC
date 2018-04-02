--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2018-04-02 17:22:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 580 (class 1247 OID 64154)
-- Name: categories; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE categories AS ENUM (
    'phone',
    'laptop',
    'tv'
);


ALTER TYPE categories OWNER TO postgres;

--
-- TOC entry 511 (class 1247 OID 64162)
-- Name: roles; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE roles AS ENUM (
    'employee',
    'customer'
);


ALTER TYPE roles OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 64167)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    id integer NOT NULL,
    name categories
);


ALTER TABLE category OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 64170)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id integer NOT NULL,
    name character varying,
    country character varying
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 64176)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders (
    id integer NOT NULL,
    orders_date date,
    id_employee integer,
    id_customer integer,
    shipping_date date
);


ALTER TABLE orders OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 64179)
-- Name: orders_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders_products (
    id_order integer,
    id_product integer,
    price integer,
    count integer
);


ALTER TABLE orders_products OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 64182)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE person (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    birthday_date date,
    id_city integer,
    address character varying,
    hire_date date,
    id_chief integer,
    role roles
);


ALTER TABLE person OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 64188)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product (
    id integer NOT NULL,
    name character varying,
    price integer,
    id_city integer,
    id_category integer
);


ALTER TABLE product OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 64167)
-- Dependencies: 185
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO category (id, name) VALUES (1, 'phone');
INSERT INTO category (id, name) VALUES (2, 'laptop');
INSERT INTO category (id, name) VALUES (3, 'tv');


--
-- TOC entry 2164 (class 0 OID 64170)
-- Dependencies: 186
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO city (id, name, country) VALUES (2, 'Manchester', 'Great Britain');
INSERT INTO city (id, name, country) VALUES (3, 'Liverpool', 'Great Britain');
INSERT INTO city (id, name, country) VALUES (4, 'Oxford', 'Great Britain');
INSERT INTO city (id, name, country) VALUES (5, 'Cambridge', 'Great Britain');
INSERT INTO city (id, name, country) VALUES (6, 'Paris', 'France');
INSERT INTO city (id, name, country) VALUES (7, 'Lyon', 'France');
INSERT INTO city (id, name, country) VALUES (8, 'Tours', 'France');
INSERT INTO city (id, name, country) VALUES (9, 'Nantes', 'France');
INSERT INTO city (id, name, country) VALUES (10, 'Rennes', 'France');
INSERT INTO city (id, name, country) VALUES (11, 'Madrid', 'Spain');
INSERT INTO city (id, name, country) VALUES (12, 'Bilbo', 'Spain');
INSERT INTO city (id, name, country) VALUES (13, 'Sevilla', 'Spain');
INSERT INTO city (id, name, country) VALUES (14, 'Almeria', 'Spain');
INSERT INTO city (id, name, country) VALUES (15, 'Vigo', 'Spain');
INSERT INTO city (id, name, country) VALUES (16, 'Roma', 'Italy');
INSERT INTO city (id, name, country) VALUES (17, 'Napoli', 'Italy');
INSERT INTO city (id, name, country) VALUES (18, 'Pompei', 'Italy');
INSERT INTO city (id, name, country) VALUES (19, 'Bari', 'Italy');
INSERT INTO city (id, name, country) VALUES (20, 'Pisa', 'Italy');
INSERT INTO city (id, name, country) VALUES (1, 'London', 'Great Britain');


--
-- TOC entry 2165 (class 0 OID 64176)
-- Dependencies: 187
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (201, '1997-01-12', 207, 210, '1997-01-15');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (202, '1998-05-06', 204, 210, '1998-05-09');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (203, '2004-11-24', 206, 213, '2004-11-26');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (204, '1997-05-17', 207, 211, '1997-05-19');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (205, '1997-07-15', 209, 214, '1997-07-19');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (206, '1997-04-30', 208, 211, '1997-05-02');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (207, '1996-11-29', 212, 213, '1996-12-02');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (208, '1996-12-30', 208, 214, '1997-01-03');

INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (402, '2017-02-24', 403, 406, '2017-02-27');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (401, '2018-01-10', 402, 405, '2018-01-13');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (404, '2015-04-22', 402, 406, '2015-04-27');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (403, '2016-03-15', 402, 407, '2016-03-18');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (405, '2013-04-27', 404, 410, '2013-04-30');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (406, '2012-10-20', 404, 411, '2012-10-23');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (407, '2010-11-01', 402, 410, '2010-11-03');
INSERT INTO orders (id, orders_date, id_employee, id_customer, shipping_date) VALUES (408, '2010-07-10', 402, 410, '2010-07-13');


--
-- TOC entry 2166 (class 0 OID 64179)
-- Dependencies: 188
-- Data for Name: orders_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders_products (id_order, id_product, price, count) VALUES (201, 204, 450, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (204, 204, 415, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (205, 206, 170, 2);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (206, 205, 400, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (208, 203, 200, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (201, 202, 120, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (202, 209, 350, 2);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (207, 210, 400, 2);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (405, 401, 900, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (405, 403, 120, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (406, 404, 200, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (406, 405, 255, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (406, 407, 275, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (407, 408, 280, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (407, 409, 685, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (407, 410, 500, 1);
INSERT INTO orders_products (id_order, id_product, price, count) VALUES (408, 401, 840, 2);


--
-- TOC entry 2167 (class 0 OID 64182)
-- Dependencies: 189
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (201, 'Jonas', 'Jenkins', '1975-10-14', 1, 'Baker st. 97', '2012-11-06', NULL, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (202, 'Sibyl', 'Perkins', '1948-06-30', 18, 'Viale Treno, 184', '1999-03-28', NULL, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (203, 'Emily', 'Stevenson', '1967-07-12', 7, 'Rue des Vignes, 24', '2004-04-19', NULL, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (204, 'Ethan', 'Singleton', '1984-03-27', 12, 'Calle Dinero, 41', '2007-05-17', 202, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (207, 'Beatrice', 'Sullivan', '1987-11-19', 9, 'Rue du Nord, 34', '2008-08-02', 203, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (209, 'Edwin', 'Townsend', '1994-10-17', 2, 'North St., 102', '2001-10-31', 201, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (210, 'Antony', 'Roberts', '1949-08-04', 10, 'Rue Robert, 95', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (211, 'Sarah', 'Pierce', '1974-06-19', 1, 'Sandwich St., 19', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (212, 'Christopher', 'Fletcher', '1967-05-17', 1, 'Burton St., 12', '2006-06-07', 202, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (208, 'Susan', 'Harvey', '1984-06-04', 10, 'Calle Montamarta, 271', '2003-12-04', 203, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (205, 'Jacob', 'Reed', '1991-02-18', 18, 'Via E.Jasonni, 127', '2014-09-30', 201, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (206, 'Sharyl', 'Ford', '1989-06-24', 1, 'Lizard St., 3', '2006-04-24', 202, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (213, 'Aleesha', 'Denis', '1984-03-05', 17, 'Via Temenide,43', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (214, 'Horatio', 'Summers', '1994-06-19', 9, 'Calle Monasterio de Siresa, 196', NULL, NULL, 'customer');

INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (401, 'Ira', 'Ivanova', '1983-05-22', 1, 'fdfgfvdgf', '2010-03-15', NULL, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (402, 'Anna', 'Petrova', '1980-03-14', 1, 'hdfhbdfthdfth', '2011-01-01', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (404, 'Oksana', 'Sidorova', '1960-08-21', 1, ' x vcbxbxc', '2015-06-13', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (403, 'Alina', 'Gorbatova', '1978-07-30', 1, 'fdhtrthfggggdh', '2009-02-16', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (405, 'Roman', 'Shelohov', '1980-12-12', 11, 'Golovna, 148', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (406, 'Oleg', 'Bornev', '1975-01-15', 11, 'Belova, 25', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (407, 'Petro', 'Murovuch', '1982-08-10', 12, 'Lalalaal,256', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (410, 'Dima', 'Krasnov', '1954-06-12', 7, 'dgsdgfvsdgvfs', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (411, 'Tanya', 'Bidulko', '1952-07-13', 8, 'dfdsgsgfds', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (412, 'Mukola', 'Dudko', '1950-10-07', 6, 'dfgsgvszdgv', NULL, NULL, 'customer');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (409, 'Vova', 'Pervin', '1956-05-25', 2, 'sdgsdg', '2012-12-05', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (408, 'Ivan', 'Gora', '1948-01-02', 2, 'hfgsdjfhs', '2012-10-10', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (413, 'Tolik', 'Truhanov', '1952-02-06', 9, 'hfkjhgdkxjdxjf', '2013-07-05', 401, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (414, 'Mariya', 'Kutuzova', '1960-03-10', 3, 'fgvsdrfgdsgf', '2005-01-01', NULL, 'employee');
INSERT INTO person (id, first_name, last_name, birthday_date, id_city, address, hire_date, id_chief, role) VALUES (415, 'Olga', 'Bruno', '1954-05-06', 3, 'dfgdfgbdfg', '2006-03-04', 414, 'employee');
--
-- TOC entry 2168 (class 0 OID 64188)
-- Dependencies: 190
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product (id, name, price, id_city, id_category) VALUES (201, 'Meizu m5', 150, 1, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (202, 'Meizu m3 mini', 120, 18, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (203, 'Ipad mini', 200, 10, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (205, 'Acer', 400, 3, 3);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (206, 'Xiaomi', 175, 12, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (207, 'Nexus 7', 215, 7, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (208, 'Motorolla', 165, 13, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (204, 'Samsung TV', 450, 1, 3);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (209, 'Samsung Galaxy S8', 350, 7, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (210, 'Samsung Galaxy Tab', 400, 12, 2);

INSERT INTO product (id, name, price, id_city, id_category) VALUES (401, 'SamsungS8', 840, 1, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (402, 'HuaweiP', 305, 6, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (403, 'LenovoK6', 120, 11, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (404, 'XiaomiRD4', 200, 16, 1);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (405, 'AcerEX2519', 255, 2, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (406, 'Lenovo IdeaPad 320', 610, 7, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (407, 'Asus VivoBook', 275, 12, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (408, 'HP 255 G6', 280, 17, 2);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (409, 'LG 43UJ630V', 685, 3, 3);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (410, 'Panasonic TX', 500, 8, 3);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (411, 'Akai UA32DF2110', 155, 13, 3);
INSERT INTO product (id, name, price, id_city, id_category) VALUES (412, 'Sony KD-55XE7005', 1525, 18, 3);


--
-- TOC entry 2029 (class 2606 OID 64195)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2031 (class 2606 OID 64197)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2033 (class 2606 OID 64199)
-- Name: orders order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2035 (class 2606 OID 64201)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 2037 (class 2606 OID 64203)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 2606 OID 64204)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES category(id);


--
-- TOC entry 2042 (class 2606 OID 64209)
-- Name: person id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES person(id);


--
-- TOC entry 2043 (class 2606 OID 64214)
-- Name: person id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id);


--
-- TOC entry 2045 (class 2606 OID 64219)
-- Name: product id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id);


--
-- TOC entry 2038 (class 2606 OID 64224)
-- Name: orders id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES person(id);


--
-- TOC entry 2039 (class 2606 OID 64229)
-- Name: orders id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES person(id);


--
-- TOC entry 2040 (class 2606 OID 64234)
-- Name: orders_products id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES orders(id);


--
-- TOC entry 2041 (class 2606 OID 64239)
-- Name: orders_products id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES product(id);


-- Completed on 2018-04-02 17:22:18

--
-- PostgreSQL database dump complete
--

