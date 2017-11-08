--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-11-08 16:13:57

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
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16592)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    id_category integer NOT NULL,
    name_of_category character varying NOT NULL
);


ALTER TABLE category OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16598)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id_city integer NOT NULL,
    name_of_city character varying NOT NULL,
    id_country integer NOT NULL
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16604)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE country (
    id_country integer NOT NULL,
    name_of_country character varying NOT NULL
);


ALTER TABLE country OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16610)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customer (
    id_customer integer NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying(15) NOT NULL,
    address character varying,
    id_city integer NOT NULL
);


ALTER TABLE customer OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16616)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE employee (
    id_employee integer NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying NOT NULL,
    date_of_birth date NOT NULL,
    date_of_hire date NOT NULL,
    address character varying,
    notes character varying,
    id_chief integer,
    id_city integer NOT NULL
);


ALTER TABLE employee OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16622)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "order" (
    id_order integer NOT NULL,
    date_of_creation date NOT NULL,
    id_customer integer NOT NULL,
    id_employee integer NOT NULL
);


ALTER TABLE "order" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16625)
-- Name: orders_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders_products (
    id_order integer NOT NULL,
    id_product integer NOT NULL,
    hprice integer,
    quantity integer NOT NULL
);


ALTER TABLE orders_products OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16628)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product (
    id_product integer NOT NULL,
    name_of_product character varying(30) NOT NULL,
    price integer NOT NULL,
    id_category integer NOT NULL,
    id_country integer NOT NULL
);


ALTER TABLE product OWNER TO postgres;

--
-- TOC entry 2173 (class 0 OID 16592)
-- Dependencies: 185
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO category (id_category, name_of_category) VALUES (2, 'meat');
INSERT INTO category (id_category, name_of_category) VALUES (1, 'dairy');
INSERT INTO category (id_category, name_of_category) VALUES (4, 'vegetable');
INSERT INTO category (id_category, name_of_category) VALUES (3, 'bakery');
INSERT INTO category (id_category, name_of_category) VALUES (6, 'furniture');
INSERT INTO category (id_category, name_of_category) VALUES (5, 'fruit');
INSERT INTO category (id_category, name_of_category) VALUES (7, 'office');
INSERT INTO category (id_category, name_of_category) VALUES (8, 'cheese');


--
-- TOC entry 2174 (class 0 OID 16598)
-- Dependencies: 186
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO city (id_city, name_of_city, id_country) VALUES (12, 'Athens', 10);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (11, 'Sydney', 9);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (14, 'Washington', 4);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (13, 'Milan', 3);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (15, 'Madrid', 11);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (2, 'Edinburgh', 1);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (1, 'London', 1);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (4, 'Paris', 2);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (3, 'Liverpool', 1);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (6, 'Kyiv', 5);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (5, 'Marseille', 2);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (8, 'Warsaw', 6);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (7, 'Chernivtsy', 5);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (10, 'Berlin', 8);
INSERT INTO city (id_city, name_of_city, id_country) VALUES (9, 'Toronto', 7);



--
-- TOC entry 2175 (class 0 OID 16604)
-- Dependencies: 187
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO country (id_country, name_of_country) VALUES (11, 'Spain');
INSERT INTO country (id_country, name_of_country) VALUES (2, 'France');
INSERT INTO country (id_country, name_of_country) VALUES (1, 'UK');
INSERT INTO country (id_country, name_of_country) VALUES (4, 'USA');
INSERT INTO country (id_country, name_of_country) VALUES (3, 'Italy');
INSERT INTO country (id_country, name_of_country) VALUES (6, 'Polish');
INSERT INTO country (id_country, name_of_country) VALUES (5, 'Ukraine');
INSERT INTO country (id_country, name_of_country) VALUES (8, 'Germany');
INSERT INTO country (id_country, name_of_country) VALUES (7, 'Canada');
INSERT INTO country (id_country, name_of_country) VALUES (10, 'Greece');
INSERT INTO country (id_country, name_of_country) VALUES (9, 'Australia');


--
-- TOC entry 2176 (class 0 OID 16610)
-- Dependencies: 188
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (402, 'Redhead', 'Ingrid', '123456 FokusPokus', 1);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (401, 'Snow', 'Jon', '507890 Ruska str, Graviton', 5);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (403, 'Brown', 'Sam', '456754', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (405, 'Smit', 'Fransua', '543210 DDDDD', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (201, 'Monro', 'Merlin', '999333 Park str', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (203, 'Litt', 'Luis', '876523', 11);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (202, 'Reeves', 'Keanu', '123876 Brooklyn', 7);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (101, 'Felus', 'Nicolas', '423409 Mogylanska str', 5);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (103, 'Fox', 'Leslie', '34259 Sea srt 1', 6);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (102, 'Newer', 'Duglas', '59003 Luxsemburg', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (501, 'Kalgary', 'Timon', '907853', 4);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (503, 'Neeka', 'Safir', '3451, Greece, Santoriny 4', 10);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (502, 'Hutir', 'Mykola', '129000, Ukraine, Mykolaiv 12, 121', 5);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (301, 'Meeks', 'Jordan', '907853', 14);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (303, 'Benzema', 'Karim', '3451, France, Lebouche 51', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (302, 'Petryak', 'Vasyl', '129001, Ukraine, Charkiv 12, 121', 7);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (601, 'Lucky', 'Bob', '374348 Downing st.10', 1);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (603, 'Korki', 'Habib', '24245 Kariva, 247', 3);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (605, 'Merime', 'Katty', '35434 Malkovitsa', 2);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (604, 'Christmas', 'Loyd', '89789 Korova, 242', 3);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (607, 'Davids', 'Edvard', '56565 Holovna 242', 4);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (606, 'Abraham', 'John', '234242 Kuver, 33', 5);
INSERT INTO customer (id_customer, last_name, first_name, address, id_city) VALUES (602, 'Sise', 'Gabriel', '242342 Luvre, 52', 4);

--
-- TOC entry 2177 (class 0 OID 16616)
-- Dependencies: 189
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (402, 'Franco', 'Vizerion', '1987-03-25', '2011-12-01', '234567 Rum', 'Muryniuk', NULL, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (401, 'Dragon', 'Reigal', '1974-12-27', '2003-01-03', '123432 Kusia', 'Muryniuk', 402, 8);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (403, 'Nikolas', 'Monteguie', '1952-01-04', '1975-03-03', '125412 Krumb', 'Muryniuk', 402, 7);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (404, 'Bree', 'Mel', '1958-04-04', '1990-01-01', '123321 MMMMM', 'Muryniuk', 402, 1);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (201, 'Bols', 'Ben', '1968-03-05', '1999-05-09', '574839 Dalfe', 'Knignitska', NULL, 11);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (203, 'Dou', 'John', '1976-09-04', '2001-12-01', '559944 Mein', 'Knignitska', 201, 2);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (202, 'Baiker', 'Jylia', '1988-09-06', '2009-03-07', '857393 Brooklyn', 'Knignitska', 201, 1);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (101, 'Smith', 'Rodger', '1969-02-05', '2013-05-06', '58099 Prutska str 13', 'Handabura', NULL, 5);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (103, 'Truble', 'Bath', '1970-07-13', '2015-04-01', '14578 Heroiv Maidanu 3', 'Handabura', NULL, 6);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (102, 'Nikson', 'George', '1973-06-19', '2014-03-02', '58011 Komarova str 1', 'Handabura', NULL, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (501, 'Curih', 'Shvarz', '1961-09-08', '1998-04-01', '8743, Germany, Munich, Lermany 13, 67/1', 'Gryshko', NULL, 8);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (503, 'Labido', 'Annarita', '1987-01-09', '2007-08-01', '0119, Italy, Milan 107', 'Gryshko', 402, 3);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (502, 'Zuzik', 'Cuber', '1954-07-08', '1986-08-01', '980101, Austria, Vena 102/300', 'Gryshko', 501, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (301, 'Patrice', 'Evra', '1967-04-05', '1994-03-01', '8743, France, Toulouse 67/1', 'Kovalskiy', NULL, 8);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (303, 'John', 'West', '1985-03-03', '2012-08-01', '0119, USA,26/4', 'Kovalskiy', 301, 3);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (302, 'Arjen', 'Veerrhoven', '1976-06-08', '1991-06-01', '980101, Netherland,Eendhoven 67/6', 'Kovalskiy', 301, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (611, 'Shcumaher', 'Michel', '1943-02-05', '1975-03-03', '84758 Goram', 'Hlynka', NULL, 4);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (610, 'Malyakina', 'Anastasiia', '1943-02-05', '2011-12-01', '898738 Goram', 'Hlynka', NULL, 4);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (601, 'Hebre', 'Gavrulo', '1948-02-05', '2011-12-01', '242422 Pantragruel', 'Hlynka', NULL, 4);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (602, 'Gelbere', 'Genuk', '1953-02-03', '2011-12-01', '24548 Chinese cirle', 'Hlynka', 603, 6);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (604, 'Balance', 'Lionel', '1943-02-05', '1975-03-06', '23582 Kurki', 'Hlynka', NULL, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (606, 'Mistovar', 'Duke', '1973-02-05', '1999-01-23', '2430 Moonoperator', 'Hlynka', 603, 4);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (608, 'Bakina', 'Tamila', '1943-02-05', '1975-09-03', '24538 Shevchenka st, 24', 'Hlynka', 607, 1);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (603, 'Latele', 'Francheska', '1999-01-23', '2017-03-03', '778434 Bukovina', 'Hlynka', 607, 7);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (605, 'Goran', 'Geronimo', '1999-01-23', '2017-12-03', '72467 Ganover Street', 'Hlynka', 602, 8);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city) VALUES (607, 'Rammer', 'Leonel', '1999-01-23', '1999-01-23', '907848 Luschstrase', 'Hlynka', 602, 2);


--
-- TOC entry 2178 (class 0 OID 16622)
-- Dependencies: 190
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (402, '2016-02-03', 402, 401);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (401, '2017-10-30', 401, 402);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (403, '2017-11-06', 403, 403);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (201, '2017-09-20', 201, 202);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (203, '2015-08-09', 203, 203);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (202, '2017-05-05', 202, 201);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (101, '2017-11-03', 101, 103);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (103, '2017-03-24', 103, 101);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (102, '2016-12-01', 101, 102);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (501, '1997-12-12', 503, 401);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (503, '1997-09-09', 501, 503);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (502, '1997-01-01', 401, 403);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (301, '1997-02-03', 302, 301);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (302, '1997-08-30', 301, 302);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (303, '2017-11-03', 303, 302);


--
-- TOC entry 2179 (class 0 OID 16625)
-- Dependencies: 191
-- Data for Name: orders_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (401, 401, 15, 3);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (402, 402, 2000, 1);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (403, 403, 9, 200);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (201, 201, 100, 3);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (202, 202, 300, 1);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (203, 203, 70, 5);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (101, 103, 10, 2);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (101, 102, 5, 1);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (103, 101, 4, 1);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (501, 503, 120, 10);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (502, 501, 100, 50);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (503, 501, 100, 1000);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (301, 301, 15, 3);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (302, 302, 300, 2);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (303, 303, 7, 100);


--
-- TOC entry 2180 (class 0 OID 16628)
-- Dependencies: 192
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (401, 'Milk', 12, 1, 6);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (402, 'Sofa', 1200, 6, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (403, 'Apple', 5, 4, 10);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (404, 'Tofu', 100, 1, 2);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (201, 'Cheese', 150, 1, 11);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (203, 'Lemon', 50, 4, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (202, 'Cacke', 250, 3, 2);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (101, 'Tofu', 12, 1, 1);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (103, 'Pasta', 10, 3, 3);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (102, 'Banana', 5, 5, 10);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (501, 'Lemon', 10, 5, 1);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (503, 'Camamber', 1000, 8, 2);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (502, 'Brie', 800, 8, 2);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (505, 'Autopencil', 5, 7, 7);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (504, 'Potato', 100, 4, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (301, 'Cornishones', 12, 3, 1);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (302, 'Pringles', 8, 2, 3);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (303, 'Pouding', 10, 3, 2);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (601, 'Beef', 200, 2, 4);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (603, 'Pork', 128, 2, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (602, 'Chicken', 95, 2, 7);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (605, 'Horse', 600, 2, 7);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (604, 'Fazan', 250, 2, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (607, 'Straus', 1500, 2, 1);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (606, 'Duck', 220, 2, 3);


--
-- TOC entry 2033 (class 2606 OID 16632)
-- Name: category categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id_category);


--
-- TOC entry 2035 (class 2606 OID 16634)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id_city);


--
-- TOC entry 2037 (class 2606 OID 16636)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id_country);


--
-- TOC entry 2039 (class 2606 OID 16638)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_customer);


--
-- TOC entry 2041 (class 2606 OID 16640)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_employee);


--
-- TOC entry 2043 (class 2606 OID 16642)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id_order);


--
-- TOC entry 2045 (class 2606 OID 16644)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);


--
-- TOC entry 2054 (class 2606 OID 16645)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES category(id_category);


--
-- TOC entry 2048 (class 2606 OID 16650)
-- Name: employee id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES employee(id_employee);


--
-- TOC entry 2047 (class 2606 OID 16655)
-- Name: customer id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id_city);


--
-- TOC entry 2049 (class 2606 OID 16660)
-- Name: employee id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id_city);


--
-- TOC entry 2046 (class 2606 OID 16665)
-- Name: city id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2055 (class 2606 OID 16670)
-- Name: product id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2050 (class 2606 OID 16675)
-- Name: order id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer);


--
-- TOC entry 2051 (class 2606 OID 16680)
-- Name: order id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES employee(id_employee);


--
-- TOC entry 2052 (class 2606 OID 16685)
-- Name: orders_products id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES "order"(id_order);


--
-- TOC entry 2053 (class 2606 OID 16690)
-- Name: orders_products id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES product(id_product);


-- Completed on 2017-11-08 16:13:58

--
-- PostgreSQL database dump complete
--