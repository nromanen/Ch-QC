--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.4

-- Started on 2018-10-16 17:58:10

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 34024)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 34030)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 197
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 198 (class 1259 OID 34032)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character(20),
    id_country integer
);


ALTER TABLE public.city OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 34035)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 199
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- TOC entry 200 (class 1259 OID 34037)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 34043)
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO postgres;

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 201
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;


--
-- TOC entry 202 (class 1259 OID 34045)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    first_name text,
    last_name text,
    id_country integer,
	id_city integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 34051)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 203
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 204 (class 1259 OID 34053)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    first_name text,
    last_name text,
    date_birth date,
    hire_date date,
    adress text,
    notes text,
    id_city integer,
    id_chief integer,
    id_country integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 34059)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 205
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 206 (class 1259 OID 34061)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."order" (
    id integer NOT NULL,
    date date,
    id_customer integer,
    id_city_ship_adr_ integer,
    id_employee integer,
    delivery_date date
);


ALTER TABLE public."order" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 34064)
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_id_seq OWNER TO postgres;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 207
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;


--
-- TOC entry 208 (class 1259 OID 34066)
-- Name: order_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_item (
    id integer NOT NULL,
    count real,
    historical_price real,
    id_order integer,
    id_product integer
);


ALTER TABLE public.order_item OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 34069)
-- Name: order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_item_id_seq OWNER TO postgres;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 209
-- Name: order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_item_id_seq OWNED BY public.order_item.id;


--
-- TOC entry 210 (class 1259 OID 34071)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name text,
    price_unit real,
    id_category integer,
    id_country integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 34077)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 2717 (class 2604 OID 34079)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 2718 (class 2604 OID 34080)
-- Name: city id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 34081)
-- Name: country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- TOC entry 2720 (class 2604 OID 34082)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 34083)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 2722 (class 2604 OID 34084)
-- Name: order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 34085)
-- Name: order_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item ALTER COLUMN id SET DEFAULT nextval('public.order_item_id_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 34086)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 2887 (class 0 OID 34024)
-- Dependencies: 196
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name) VALUES (1, 'domestic');
INSERT INTO public.category (id, name) VALUES (2, 'non-domestic');


--
-- TOC entry 2889 (class 0 OID 34032)
-- Dependencies: 198
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.city (id, name, id_country) VALUES (12, 'Chicago             ', 5);
INSERT INTO public.city (id, name, id_country) VALUES (11, 'Los Angeles         ', 5);
INSERT INTO public.city (id, name, id_country) VALUES (14, 'Osaka               ', 6);
INSERT INTO public.city (id, name, id_country) VALUES (13, 'Tokio               ', 6);
INSERT INTO public.city (id, name, id_country) VALUES (16, 'Lviv                ', 7);
INSERT INTO public.city (id, name, id_country) VALUES (15, 'Kiev                ', 7);
INSERT INTO public.city (id, name, id_country) VALUES (2, 'Monaco              ', 1);
INSERT INTO public.city (id, name, id_country) VALUES (1, 'Paris               ', 1);
INSERT INTO public.city (id, name, id_country) VALUES (4, 'Oxford              ', 2);
INSERT INTO public.city (id, name, id_country) VALUES (3, 'London              ', 2);
INSERT INTO public.city (id, name, id_country) VALUES (6, 'Madrid              ', 3);
INSERT INTO public.city (id, name, id_country) VALUES (5, 'Manchester          ', 2);
INSERT INTO public.city (id, name, id_country) VALUES (8, 'Moscow              ', 4);
INSERT INTO public.city (id, name, id_country) VALUES (7, 'Barcelona           ', 3);
INSERT INTO public.city (id, name, id_country) VALUES (10, 'New York            ', 5);
INSERT INTO public.city (id, name, id_country) VALUES (9, 'St.Petersburg       ', 4);


--
-- TOC entry 2891 (class 0 OID 34037)
-- Dependencies: 200
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country (id, name) VALUES (1, 'France');
INSERT INTO public.country (id, name) VALUES (2, 'England');
INSERT INTO public.country (id, name) VALUES (3, 'Spain');
INSERT INTO public.country (id, name) VALUES (4, 'Russia');
INSERT INTO public.country (id, name) VALUES (5, 'USA');
INSERT INTO public.country (id, name) VALUES (6, 'Japan');
INSERT INTO public.country (id, name) VALUES (7, 'Ukraine');


--
-- TOC entry 2893 (class 0 OID 34045)
-- Dependencies: 202
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (1, 'andre', 'gomes', 3, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (2, 'alvaro', 'morata', 3, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (3, 'pedro', 'rodriguez', 3, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (4, 'olivie', 'giroud', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (5, 'marion', 'cotillard', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (6, 'ngolo', 'kante', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (7, 'wayne', 'rooney', 2, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (8, 'elizabeth', 'queen', 2, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (9, 'harry', 'kane', 2, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (10, 'gareth', 'barry', 2, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (11, 'petr', 'pervii', 4, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (12, 'galina', 'subota', 4, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (13, 'vladimir', 'medved', 4, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (14, 'jessie', 'pinkman', 5, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (15, 'mila', 'kunis', 5, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (16, 'michel', 'jordan', 5, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (17, 'walter', 'wayett', 5, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (18, 'keisuke', 'honda', 6, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (19, 'john', 'lee', 6, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (20, 'anton', 'kovalchuk', 7, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (21, 'tetiana', 'maidaniuk', 7, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (22, 'anatolii', 'kolotulo', 7, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (23, 'anna', 'vertuk', 7, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (24, 'mukola', 'pichur', 7, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (701, 'Clement ', 'Matthews', 5, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (703, 'Agnes', 'Shields', 6, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (704, 'Catherine', 'Flynn', 2, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (705, 'William', 'Lane', 3, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (702, 'Geoffroy ', 'St-Cyr', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (706, 'Anne-Claire', 'PichГ© ', 1, 1);


--
-- TOC entry 2895 (class 0 OID 34053)
-- Dependencies: 204
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (1, 'jorsh', 'martin', '1959-11-08', '2000-07-07', 'got_street', NULL, 3, NULL, NULL);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (12, 'kira', 'kolenko', '1991-07-16', '2006-08-04', 'holod_str_12', NULL, 15, 9, 7);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (11, 'galina', 'tomashevska', '1990-11-20', '2005-01-20', 'podil_str_1', NULL, 15, 9, 7);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (13, 'david', 'villa', '1980-10-14', '2006-08-04', 'hose_str_1', NULL, 6, 1, 3);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (2, 'emilie', 'clarck', '1980-12-20', '2001-09-08', 'terrib_street', NULL, 10, 1, 5);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (4, 'adil', 'rami', '1979-01-30', '2002-11-07', 'paris_street', NULL, 2, 1, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (3, 'john', 'raily', '1990-12-01', '2001-08-12', 'snow_street', NULL, 11, 1, 5);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (6, 'jeremi', 'mathieu', '1970-08-15', '2003-09-17', 'jo_dallas_street', NULL, 1, 5, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (5, 'loran', 'blan', '1950-02-25', '2000-07-07', 'monc_street', NULL, 1, 1, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (8, 'jack', 'london', '1969-05-29', '2003-09-12', 'thames_street', NULL, 3, 5, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (7, 'antoine', 'griezmann', '1988-09-11', '2003-07-30', 'sent_street', NULL, 1, 5, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (10, 'andriy', 'velichko', '1989-10-19', '2004-01-01', 'main_street_1', NULL, 16, 9, 7);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (9, 'taras', 'stepanenko', '1982-02-11', '2004-11-20', 'shevchenka_street', NULL, 16, 1, 7);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (14, 'andres', 'iniesta', '1987-03-09', '2006-08-05', 'jimenes_str_1', NULL, 7, 1, 3);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (712, 'Charles', 'Washington', '1960-01-08', '1995-10-18', NULL, 'AP', 10, NULL, 5);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (714, 'Lauren', 'Baker', '1978-02-24', '2005-08-01', NULL, 'AP', 13, 712, 6);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (715, 'Jayson', 'Ellis', '1992-01-01', '2013-05-20', NULL, 'AP', 15, 714, 7);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (716, 'Julio', 'Carrizo', '1985-01-20', '2008-03-09', NULL, 'AP', 7, 714, 3);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (713, 'Lindsey', 'Harris', '1958-12-15', '1990-11-01', NULL, 'OM', 11, 712, 5);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (711, 'Darrell', 'Harmon', '1980-05-12', '2002-01-20', 'Holovna, 21 str.', 'AP', 1, 713, 1);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief, id_country) VALUES (717, 'Paul', 'Pop', '1975-05-19', '2017-01-18', NULL, 'AP', 16, 713, 6);


--
-- TOC entry 2897 (class 0 OID 34061)
-- Dependencies: 206
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (1, '1997-01-01', 4, 1, 3, '1997-02-02');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (4, '2012-09-10', 9, 2, 8, '2012-10-12');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (3, '2010-10-12', 6, 1, 5, '2011-11-12');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (6, '2005-08-09', 11, 4, 10, '2005-08-11');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (5, '2007-07-09', 10, 2, 9, '2008-01-01');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (7, '2008-09-10', 1, 3, 13, '2008-10-11');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (2, '1997-02-03', 5, 1, 4, '1997-02-04');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (731, '2015-01-06', 702, 1, 715, '2015-01-15');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (732, '2011-01-12', 706, 2, 714, '2011-01-20');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (733, '2012-02-18', 702, 2, 715, '2012-02-19');
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee, delivery_date) VALUES (734, '2017-08-21', 705, 5, 711, '2017-08-23');


--
-- TOC entry 2899 (class 0 OID 34066)
-- Dependencies: 208
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (1, 2, 40, 1, 1);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (2, 1, 40, 2, 1);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (3, 1, 300, 3, 2);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (4, 1, 100, 4, 9);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (5, 3, 600, 5, 10);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (6, 10, 210, 6, 8);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (7, 100, 500, 7, 4);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (741, 1, 12, 731, 721);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (742, 2, 15, 732, 722);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (743, 1, 12, 733, 722);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (744, 2, 90, 734, 723);


--
-- TOC entry 2901 (class 0 OID 34071)
-- Dependencies: 210
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (1, 'tofu', 20, 1, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (2, 'frog_legs', 300, 1, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (3, 'pizza', 10, 1, 5);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (4, 'cola', 2, 1, 5);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (5, 'sushi', 10, 1, 6);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (6, 'salo', 3000, 1, 7);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (7, 'bread', 20, 1, 7);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (8, 'hot_sauce', 30, 1, 3);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (9, 'tea', 100, 1, 2);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (10, 'butter', 200, 1, 2);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (721, 'Tofu', 12, 1, 6);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (722, 'Pudding', 20, 1, 5);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (723, 'Chair', 100, 2, 7);


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 197
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 199
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 1, false);


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 201
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 7, true);


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 203
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 1, false);


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 205
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, false);


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 207
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_id_seq', 1, false);


--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 209
-- Name: order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_item_id_seq', 1, false);


--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- TOC entry 2726 (class 2606 OID 34088)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 34090)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2731 (class 2606 OID 34092)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 2733 (class 2606 OID 34094)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 2736 (class 2606 OID 34096)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2748 (class 2606 OID 34098)
-- Name: order_item order_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);


--
-- TOC entry 2744 (class 2606 OID 34100)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2752 (class 2606 OID 34102)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2749 (class 1259 OID 34103)
-- Name: fki_id_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_category ON public.product USING btree (id_category);


--
-- TOC entry 2737 (class 1259 OID 34104)
-- Name: fki_id_chief; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_chief ON public.employee USING btree (id_chief);


--
-- TOC entry 2738 (class 1259 OID 34105)
-- Name: fki_id_city; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_city ON public.employee USING btree (id_city);


--
-- TOC entry 2740 (class 1259 OID 34106)
-- Name: fki_id_city___; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_city___ ON public."order" USING btree (id_city_ship_adr_);


--
-- TOC entry 2750 (class 1259 OID 34107)
-- Name: fki_id_country; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country ON public.product USING btree (id_country);


--
-- TOC entry 2739 (class 1259 OID 34108)
-- Name: fki_id_country_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country_1 ON public.employee USING btree (id_country);


--
-- TOC entry 2729 (class 1259 OID 34109)
-- Name: fki_id_country_c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country_c ON public.city USING btree (id_country);


--
-- TOC entry 2734 (class 1259 OID 34110)
-- Name: fki_id_country_c_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country_c_ ON public.customer USING btree (id_country);


--
-- TOC entry 2741 (class 1259 OID 34111)
-- Name: fki_id_customer; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_customer ON public."order" USING btree (id_customer);


--
-- TOC entry 2742 (class 1259 OID 34112)
-- Name: fki_id_employee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_employee ON public."order" USING btree (id_employee);


--
-- TOC entry 2745 (class 1259 OID 34113)
-- Name: fki_id_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_order ON public.order_item USING btree (id_order);


--
-- TOC entry 2746 (class 1259 OID 34114)
-- Name: fki_id_product_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_product_ ON public.order_item USING btree (id_product);


--
-- TOC entry 2764 (class 2606 OID 34115)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES public.category(id);


--
-- TOC entry 2755 (class 2606 OID 34120)
-- Name: employee id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES public.employee(id);


--
-- TOC entry 2756 (class 2606 OID 34125)
-- Name: employee id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES public.city(id);


--
-- TOC entry 2758 (class 2606 OID 34130)
-- Name: order id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_city FOREIGN KEY (id_city_ship_adr_) REFERENCES public.city(id);


--
-- TOC entry 2765 (class 2606 OID 34135)
-- Name: product id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2753 (class 2606 OID 34140)
-- Name: city id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2757 (class 2606 OID 34145)
-- Name: employee id_country_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_country_1 FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2754 (class 2606 OID 34150)
-- Name: customer id_country_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT id_country_c FOREIGN KEY (id_country) REFERENCES public.country(id);
	
ALTER TABLE ONLY public.customer
    ADD CONSTRAINT id_city_c FOREIGN KEY (id_city) REFERENCES public.city(id);


--
-- TOC entry 2759 (class 2606 OID 34155)
-- Name: order id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES public.customer(id);


--
-- TOC entry 2760 (class 2606 OID 34160)
-- Name: order id_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES public.employee(id);


--
-- TOC entry 2761 (class 2606 OID 34165)
-- Name: order_item id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES public."order"(id);


--
-- TOC entry 2762 (class 2606 OID 34170)
-- Name: order_item id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product(id);


--
-- TOC entry 2763 (class 2606 OID 34175)
-- Name: order_item id_product_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product_ FOREIGN KEY (id_product) REFERENCES public.product(id);


-- Completed on 2018-10-16 17:58:11

--
-- PostgreSQL database dump complete
--

--Anastasiia Iacobciuc 

INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (401, 'Helen ', 'Bennett', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (403, 'Thomas ', 'Hardy', 3, 3);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (405, 'Ivan', 'Ivanov', 4, 4);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (406, 'Elizabeth', ' Lincoln', 5, 5);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (407, 'Antonio ', 'Moreno', 6, 6);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (402, 'Howard', ' Snyder', 2, 2);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (408, 'Petro', 'Antonov', 7, 2);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (438, 'Natalie', 'Pincott', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (439, 'Adam', 'Grey', 1, 1);


INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (409, 'Anne', 'Dodsworth', '1969-07-02', '2000-05-02', '24, place Kleber', ' Anne is fluent in English and German.', 1, 409);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (410, 'Nick', 'Pincott', '1968-04-01', '1993-06-03', '12,Dixon Street', 'Nick is very frendly and good men', 4, 410);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (411, 'Robert', 'Adamov', '1960-05-29', '1990-05-06', '14,Paddington drive', 'Robert Adamov served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.', 3, 411);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (412, 'Natalie', 'Bristovn', '1993-08-08', '2015-01-01', '7,Bruce Street', 'Natalie has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.', 11, 412);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (413, 'Martin', 'Sommer', '1972-02-19', '1992-02-05', '67,Araquil st.', 'Martin is fluent in English.', 6, 413);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (440, 'Alison', 'Argent', '1991-01-01', '2015-12-01', 'Street10', 'Active', 2, NULL);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (441, 'Gabriella', 'Dhupris', '1992-02-02', '2015-12-02', 'Street11', 'Active', 5, NULL);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (442, 'Christian', 'Gray', '1993-03-03', '2015-12-03', 'Street12', 'Passive', 10, NULL);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (443, 'Daniella', 'Monnet', '1994-04-04', '2015-12-04', 'Street13', 'Active', 14, NULL);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (444, 'Jasper', 'Blake', '1995-05-05', '2015-12-05', 'Street14', 'Passive', 15, NULL);


INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (426, '2010-04-07', 402, 2, 410);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (425, '2005-07-04', 401, 1, 409);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (428, '2012-08-11', 405, 5, 412);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (427, '2011-10-10', 403, 3, 411);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (430, '2015-04-04', 407, 7, NULL);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (429, '2013-09-04', 406, 6, 413);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (437, '2017-08-04', 439, 1, 441);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_, id_employee) VALUES (436, '2016-04-04', 438, 1, 440);

INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (414, 'Tofu', 20, 1, 3);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (415, 'Cheesecake', 25, 1, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (416, 'Mozzarella', 18, 2, 2);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (417, 'Juice', 10, 1, 7);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (418, 'Bread', 7, 1, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (420, 'Mascarpone Fabioli', 19, 2, 6);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (421, 'Gorgonzola Telino', 24, 2, 2);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (422, 'Chocolate', 8, 1, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (423, 'Arabika Coffee', 13, 1, 3);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (424, 'Camembert Pierrot', 15, 2, 4);

--Inserts Elena Martynovich

INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (600, 'Alena', 'Kushnir', 7, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (601, 'Zinaida', 'Kravetz', 4, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (602, 'Jack', 'Stelot', 5, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (603, 'Iokko', 'Grotrico', 6, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (605, 'Lucesko', 'Pavirotti', 3, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (606, 'Jerty', 'de Libasco', 1, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (604, 'Kate', 'Laybot', 2, 1);
INSERT INTO public.customer (id, first_name, last_name, id_country, id_city) VALUES (607, 'Grew', 'Mojilly', 1, 1);

INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (600, 'Andrew', 'Gachinskiy', '1986-12-08', '2016-06-03', 'Kobyljans''ka str. 8', NULL, 16, null);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (601, 'Alex', 'Kravetz', '1975-09-07', '2013-05-17', 'Fed''kovycha str. 12/5', NULL, 15, 600);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (602, 'Edvard', 'Meyson', '1980-04-30', '2015-03-09', 'Vashyngtona str. 9/45', NULL, 11, 600);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (603, 'Harold', 'Austin ', '1989-10-23', '2017-10-22', 'Meicrou str. 86/54', NULL, 13, 600);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (604, 'Henry', 'Lamb ', '1976-02-03', '2014-12-06', 'Krusly str. 97/125', NULL, 6, 602);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (605, 'Vitaliy', 'Ivanov', '1988-10-12', '2016-11-29', 'Kiivs''ka str. 31', NULL, 2, 600);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (607, 'Gruby', 'Mambrey', '1986-02-17', '2016-04-19', 'Frederico 3', NULL, 3, 600);
INSERT INTO public.employee (id, first_name, last_name, date_birth, hire_date, adress, notes, id_city, id_chief) VALUES (606, 'Mathijs', 'van der Heijden ', '1991-08-23', '2015-09-15', 'Melilotu str. 94/98', NULL, 6, 600);

INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (600, '2018-09-06', 600, 16);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (601, '2018-05-23', 601, 9);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (602, '2018-09-30', 602, 10);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (603, '2018-08-12', 603, 13);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (605, '2017-12-24', 605, 6);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (604, '2018-03-22', 604, 3);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (606, '2018-10-11', 606, 2);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (607, '2018-09-15', 606, 2);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (608, '2018-10-16', 607, 1);
INSERT INTO public."order" (id, date, id_customer, id_city_ship_adr_) VALUES (609, '2018-10-16', 607, 1);

INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (600, 'clock "Ally Denovo"', 123, 2, 6);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (601, 'Perfume "Zara"', 245, 2, 1);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (602, 'Shampoo "Syoss"', 156, 1, 2);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (603, 'Washing powder "Ariel"', 329, 1, 3);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (604, 'Cheese "Tofu"', 135, 2, 5);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (605, 'charging cable "Remax"', 86, 2, 7);
INSERT INTO public.product (id, name, price_unit, id_category, id_country) VALUES (606, 'Lighter "Zippo"', 234, 2, 4);

INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (601, 5, 328, 606, 605);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (602, 4, 532, 601, 600);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (603, 8, 698, 603, 601);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (604, 12, 876, 600, 604);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (605, 18, 1065, 602, 606);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (606, 15, 432, 605, 603);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (607, 3, 345, 607, 602);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (600, 2, 135, 604, 602);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (608, 2, 123, 608, 603);
INSERT INTO public.order_item (id, count, historical_price, id_order, id_product) VALUES (609, 1, 235, 609, 601);


