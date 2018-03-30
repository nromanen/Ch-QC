--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.1

-- Started on 2018-03-30 18:40:08

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
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 617 (class 1247 OID 24579)
-- Name: categories; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE categories AS ENUM (
    'phone',
    'laptop',
    'tv'
);


ALTER TYPE categories OWNER TO postgres;

--
-- TOC entry 529 (class 1247 OID 24586)
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
-- TOC entry 196 (class 1259 OID 24591)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    id integer NOT NULL,
    name categories
);


ALTER TABLE category OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 24594)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE category_id_seq OWNER TO postgres;

--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 197
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE category_id_seq OWNED BY category.id;


--
-- TOC entry 198 (class 1259 OID 24596)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id integer NOT NULL,
    name character varying,
    country character varying
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 24602)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE city_id_seq OWNER TO postgres;

--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 199
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE city_id_seq OWNED BY city.id;


--
-- TOC entry 200 (class 1259 OID 24604)
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
-- TOC entry 202 (class 1259 OID 24610)
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE order_id_seq OWNER TO postgres;

--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 202
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_id_seq OWNED BY orders.id;


--
-- TOC entry 201 (class 1259 OID 24607)
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
-- TOC entry 203 (class 1259 OID 24612)
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
-- TOC entry 204 (class 1259 OID 24618)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_id_seq OWNER TO postgres;

--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 204
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- TOC entry 205 (class 1259 OID 24620)
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
-- TOC entry 206 (class 1259 OID 24626)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO postgres;

--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 206
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- TOC entry 2707 (class 2604 OID 24628)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('category_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 24629)
-- Name: city id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city ALTER COLUMN id SET DEFAULT nextval('city_id_seq'::regclass);


--
-- TOC entry 2709 (class 2604 OID 24630)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 24631)
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 24632)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- TOC entry 2713 (class 2606 OID 24634)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2715 (class 2606 OID 24636)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2717 (class 2606 OID 24638)
-- Name: orders order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2719 (class 2606 OID 24640)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 2721 (class 2606 OID 24642)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 24643)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES category(id);


--
-- TOC entry 2726 (class 2606 OID 24648)
-- Name: person id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES person(id);


--
-- TOC entry 2727 (class 2606 OID 24653)
-- Name: person id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id);


--
-- TOC entry 2729 (class 2606 OID 24658)
-- Name: product id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES city(id);


--
-- TOC entry 2722 (class 2606 OID 24663)
-- Name: orders id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES person(id);


--
-- TOC entry 2723 (class 2606 OID 24668)
-- Name: orders id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES person(id);


--
-- TOC entry 2724 (class 2606 OID 24673)
-- Name: orders_products id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES orders(id);


--
-- TOC entry 2725 (class 2606 OID 24678)
-- Name: orders_products id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders_products
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES product(id);


-- Completed on 2018-03-30 18:40:09

--
-- PostgreSQL database dump complete
--

