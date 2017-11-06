--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

-- Started on 2017-11-06 19:49:02

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
-- TOC entry 185 (class 1259 OID 18676)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    id_category integer NOT NULL,
    name_of_category character varying NOT NULL
);


ALTER TABLE category OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 18682)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id_city integer NOT NULL,
    name_of_city character varying NOT NULL,
    id_country integer NOT NULL
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 18688)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE country (
    id_country integer NOT NULL,
    name_of_country character varying NOT NULL
);


ALTER TABLE country OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 18694)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customer (
    id_customer integer NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying(15) NOT NULL,
    adress character varying,
    id_country integer NOT NULL
);


ALTER TABLE customer OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 18700)
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
    id_country integer NOT NULL
);


ALTER TABLE employee OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 18706)
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
-- TOC entry 191 (class 1259 OID 18709)
-- Name: orders_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders_products (
    id_order integer NOT NULL,
    id_product integer NOT NULL,
    hprice integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE orders_products OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 18712)
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
-- TOC entry 2173 (class 0 OID 18676)
-- Dependencies: 185
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY category (id_category, name_of_category) FROM stdin;
\.


--
-- TOC entry 2174 (class 0 OID 18682)
-- Dependencies: 186
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY city (id_city, name_of_city, id_country) FROM stdin;
\.


--
-- TOC entry 2175 (class 0 OID 18688)
-- Dependencies: 187
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY country (id_country, name_of_country) FROM stdin;
\.


--
-- TOC entry 2176 (class 0 OID 18694)
-- Dependencies: 188
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer (id_customer, last_name, first_name, adress, id_country) FROM stdin;
\.


--
-- TOC entry 2177 (class 0 OID 18700)
-- Dependencies: 189
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, adress, notes, id_chief, id_country) FROM stdin;
\.


--
-- TOC entry 2178 (class 0 OID 18706)
-- Dependencies: 190
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "order" (id_order, date_of_creation, id_customer, id_employee) FROM stdin;
\.


--
-- TOC entry 2179 (class 0 OID 18709)
-- Dependencies: 191
-- Data for Name: orders_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY orders_products (id_order, id_product, hprice, quantity) FROM stdin;
\.


--
-- TOC entry 2180 (class 0 OID 18712)
-- Dependencies: 192
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product (id_product, name_of_product, price, id_category, id_country) FROM stdin;
\.


--
-- TOC entry 2033 (class 2606 OID 18716)
-- Name: category categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id_category);


--
-- TOC entry 2035 (class 2606 OID 18718)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id_city);


--
-- TOC entry 2037 (class 2606 OID 18720)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id_country);


--
-- TOC entry 2039 (class 2606 OID 18722)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_customer);


--
-- TOC entry 2041 (class 2606 OID 18724)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_employee);


--
-- TOC entry 2043 (class 2606 OID 18726)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id_order);


--
-- TOC entry 2045 (class 2606 OID 18728)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id_product);


--
-- TOC entry 2054 (class 2606 OID 18819)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES category(id_category);


--
-- TOC entry 2049 (class 2606 OID 18789)
-- Name: employee id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES employee(id_employee);


--
-- TOC entry 2047 (class 2606 OID 18794)
-- Name: customer id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT id_city FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2046 (class 2606 OID 18779)
-- Name: city id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2048 (class 2606 OID 18784)
-- Name: employee id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2055 (class 2606 OID 18824)
-- Name: product id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES country(id_country);


--
-- TOC entry 2050 (class 2606 OID 18799)
-- Name: order id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer);


--
-- TOC entry 2051 (class 2606 OID 18804)
-- Name: order id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES employee(id_employee);


--
-- TOC entry 2053 (class 2606 OID 18814)
-- Name: orders_products id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES "order"(id_order);


--
-- TOC entry 2052 (class 2606 OID 18809)
-- Name: orders_products id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES product(id_product);


-- Completed on 2017-11-06 19:49:03

--
-- PostgreSQL database dump complete
--

