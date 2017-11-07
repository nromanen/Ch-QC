--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-07 18:21:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE shop;
--
-- TOC entry 2858 (class 1262 OID 16593)
-- Name: shop; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';


ALTER DATABASE shop OWNER TO postgres;

-- \connect shop

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16594)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    id_category integer NOT NULL,
    name_of_category character varying NOT NULL
);


ALTER TABLE category OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16600)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id_city integer NOT NULL,
    name_of_city character varying NOT NULL,
    id_country integer NOT NULL
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16606)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE country (
    id_country integer NOT NULL,
    name_of_country character varying NOT NULL
);


ALTER TABLE country OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16612)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customer (
    id_customer integer NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying(15) NOT NULL,
    adress character varying,
    id_city integer NOT NULL
);


ALTER TABLE customer OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16618)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE employee (
    id_employee integer NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying NOT NULL,
    date_of_birth date NOT NULL,
    date_of_hire date NOT NULL,
    adress character varying,
    notes character varying,
    id_chief integer,
    id_city integer NOT NULL
);


ALTER TABLE employee OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16624)
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
-- TOC entry 202 (class 1259 OID 16627)
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
-- TOC entry 203 (class 1259 OID 16630)
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
-- TOC entry 2846 (class 0 OID 16594)
-- Dependencies: 196
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO category (id_category, name_of_category) VALUES (2, 'meat');
INSERT INTO category (id_category, name_of_category) VALUES (1, 'dairy');
INSERT INTO category (id_category, name_of_category) VALUES (4, 'vegetable');
INSERT INTO category (id_category, name_of_category) VALUES (3, 'bakery');
INSERT INTO category (id_category, name_of_category) VALUES (6, 'furniture');
INSERT INTO category (id_category, name_of_category) VALUES (5, 'fruit');
INSERT INTO category (id_category, name_of_category) VALUES (7, 'office');


--
-- TOC entry 2847 (class 0 OID 16600)
-- Dependencies: 197
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
-- TOC entry 2848 (class 0 OID 16606)
-- Dependencies: 198
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
-- TOC entry 2849 (class 0 OID 16612)
-- Dependencies: 199
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO customer (id_customer, last_name, first_name, adress, id_country) VALUES (402, 'Redhead', 'Ingrid', '123456 FokusPokus', 1);
INSERT INTO customer (id_customer, last_name, first_name, adress, id_country) VALUES (401, 'Snow', 'Jon', '507890 Ruska str, Graviton', 5);
INSERT INTO customer (id_customer, last_name, first_name, adress, id_country) VALUES (403, 'Brown', 'Sam', '456754', 2);
INSERT INTO customer (id_customer, last_name, first_name, adress, id_country) VALUES (405, 'Smit', 'Fransua', '543210 DDDDD', 2);


--
-- TOC entry 2850 (class 0 OID 16618)
-- Dependencies: 200
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, adress, notes, id_chief, id_country) VALUES (402, 'Franco', 'Vizerion', '1987-03-25', '2011-12-01', '234567 Rum', 'Muryniuk', NULL, 9);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, adress, notes, id_chief, id_country) VALUES (401, 'Dragon', 'Reigal', '1974-12-27', '2003-01-03', '123432 Kusia', 'Muryniuk', 402, 8);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, adress, notes, id_chief, id_country) VALUES (403, 'Nikolas', 'Monteguie', '1952-01-04', '1975-03-03', '125412 Krumb', 'Muryniuk', 402, 7);
INSERT INTO employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, adress, notes, id_chief, id_country) VALUES (404, 'Bree', 'Mel', '1958-04-04', '1990-01-01', '123321 MMMMM', 'Muryniuk', 402, 1);


--
-- TOC entry 2851 (class 0 OID 16624)
-- Dependencies: 201
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (402, '2016-02-03', 402, 401);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (401, '2017-10-30', 401, 402);
INSERT INTO "order" (id_order, date_of_creation, id_customer, id_employee) VALUES (403, '2017-11-06', 403, 403);


--
-- TOC entry 2852 (class 0 OID 16627)
-- Dependencies: 202
-- Data for Name: orders_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (401, 401, 15, 3);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (402, 402, 2000, 1);
INSERT INTO orders_products (id_order, id_product, hprice, quantity) VALUES (403, 403, 9, 200);


--
-- TOC entry 2853 (class 0 OID 16630)
-- Dependencies: 203
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (401, 'Milk', 12, 1, 6);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (402, 'Sofa', 1200, 6, 5);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (403, 'Apple', 5, 4, 10);
INSERT INTO product (id_product, name_of_product, price, id_category, id_country) VALUES (404, 'Tofu', 100, 1, 2);


--
-- TOC entry 2702 (class 2606 OID 16634)
-- Name: category categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id_category);


--
-- TOC entry 2704 (class 2606 OID 16636)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id_city);


--
-- TOC entry 2706 (class 2606 OID 16638)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id_country);


--
-- TOC entry 2708 (class 2606 OID 16640)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_customer);


--
-- TOC entry 2710 (class 2606 OID 16642)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_employee);


--
-- TOC entry 2712 (class 2606 OID 16644)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id_order);


--
-- TOC entry 2714 (class 2606 OID 16646)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);


--
-- TOC entry 2723 (class 2606 OID 16647)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES category(id_category);


--
-- TOC entry 2717 (class 2606 OID 16652)
-- Name: employee id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES employee(id_employee);


--
-- TOC entry 2716 (class 2606 OID 16657)
-- Name: customer id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id_city);


--
-- TOC entry 2715 (class 2606 OID 16662)
-- Name: city id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2718 (class 2606 OID 16667)
-- Name: employee id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id_city);


--
-- TOC entry 2724 (class 2606 OID 16672)
-- Name: product id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2719 (class 2606 OID 16677)
-- Name: order id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer);


--
-- TOC entry 2720 (class 2606 OID 16682)
-- Name: order id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES employee(id_employee);


--
-- TOC entry 2721 (class 2606 OID 16687)
-- Name: orders_products id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES "order"(id_order);


--
-- TOC entry 2722 (class 2606 OID 16692)
-- Name: orders_products id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES product(id_product);


--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-11-07 18:21:22

--
-- PostgreSQL database dump complete
--

