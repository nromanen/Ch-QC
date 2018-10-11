--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 10.4

-- Started on 2018-10-11 18:58:24

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
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2233 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16905)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16903)
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
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 195
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 198 (class 1259 OID 16917)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character(1),
    id_country integer
);


ALTER TABLE public.city OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16915)
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
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 197
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- TOC entry 200 (class 1259 OID 16925)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16923)
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
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 199
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;

--
-- TOC entry 190 (class 1259 OID 16868)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    first_name text,
    last_name text,
    id_country integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16866)
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
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 189
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 185 (class 1259 OID 16836)
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
    id_chief integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16839)
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
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 186
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 188 (class 1259 OID 16860)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."order" (
    id integer NOT NULL,
    date date,
    id_customer integer,
    id_product integer
);


ALTER TABLE public."order" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16858)
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
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 187
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;


--
-- TOC entry 192 (class 1259 OID 16879)
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
-- TOC entry 191 (class 1259 OID 16877)
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
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 191
-- Name: order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_item_id_seq OWNED BY public.order_item.id;


--
-- TOC entry 194 (class 1259 OID 16894)
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
-- TOC entry 193 (class 1259 OID 16892)
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
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 193
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 2053 (class 2604 OID 16908)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 2054 (class 2604 OID 16920)
-- Name: city id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- TOC entry 2055 (class 2604 OID 16928)
-- Name: country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- TOC entry 2050 (class 2604 OID 16871)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 2048 (class 2604 OID 16841)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 2049 (class 2604 OID 16863)
-- Name: order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);


--
-- TOC entry 2051 (class 2604 OID 16882)
-- Name: order_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item ALTER COLUMN id SET DEFAULT nextval('public.order_item_id_seq'::regclass);


--
-- TOC entry 2052 (class 2604 OID 16897)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 2221 (class 0 OID 16905)
-- Dependencies: 196
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2223 (class 0 OID 16917)
-- Dependencies: 198
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2225 (class 0 OID 16925)
-- Dependencies: 200
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2215 (class 0 OID 16868)
-- Dependencies: 190
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2210 (class 0 OID 16836)
-- Dependencies: 185
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2213 (class 0 OID 16860)
-- Dependencies: 188
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2217 (class 0 OID 16879)
-- Dependencies: 192
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2219 (class 0 OID 16894)
-- Dependencies: 194
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 195
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 197
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 1, false);


--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 199
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 1, false);


--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 189
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 1, false);


--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 186
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, false);


--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 187
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_id_seq', 1, false);


--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 191
-- Name: order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_item_id_seq', 1, false);


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 193
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- TOC entry 2076 (class 2606 OID 16913)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2078 (class 2606 OID 16922)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 16933)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 2065 (class 2606 OID 16876)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 2057 (class 2606 OID 16849)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2070 (class 2606 OID 16884)
-- Name: order_item order_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);


--
-- TOC entry 2063 (class 2606 OID 16865)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2074 (class 2606 OID 16902)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2071 (class 1259 OID 16939)
-- Name: fki_id_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_category ON public.product USING btree (id_category);


--
-- TOC entry 2058 (class 1259 OID 16997)
-- Name: fki_id_chief; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_chief ON public.employee USING btree (id_chief);


--
-- TOC entry 2059 (class 1259 OID 16962)
-- Name: fki_id_city; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_city ON public.employee USING btree (id_city);


--
-- TOC entry 2072 (class 1259 OID 16945)
-- Name: fki_id_country; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country ON public.product USING btree (id_country);


--
-- TOC entry 2079 (class 1259 OID 16956)
-- Name: fki_id_country_c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country_c ON public.city USING btree (id_country);


--
-- TOC entry 2066 (class 1259 OID 17008)
-- Name: fki_id_country_c_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_country_c_ ON public.customer USING btree (id_country);


--
-- TOC entry 2060 (class 1259 OID 16968)
-- Name: fki_id_customer; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_customer ON public."order" USING btree (id_customer);


--
-- TOC entry 2067 (class 1259 OID 16980)
-- Name: fki_id_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_order ON public.order_item USING btree (id_order);


--
-- TOC entry 2061 (class 1259 OID 16974)
-- Name: fki_id_product; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_product ON public."order" USING btree (id_product);


--
-- TOC entry 2068 (class 1259 OID 16991)
-- Name: fki_id_product_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_product_ ON public.order_item USING btree (id_product);


--
-- TOC entry 2090 (class 2606 OID 16934)
-- Name: product id_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES public.category(id);


--
-- TOC entry 2083 (class 2606 OID 16992)
-- Name: employee id_chief; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES public.employee(id);


--
-- TOC entry 2082 (class 2606 OID 16957)
-- Name: employee id_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES public.city(id);


--
-- TOC entry 2091 (class 2606 OID 16940)
-- Name: product id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2092 (class 2606 OID 16946)
-- Name: city id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2086 (class 2606 OID 16998)
-- Name: customer id_country_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT id_country_c FOREIGN KEY (id_country) REFERENCES public.country(id);


--
-- TOC entry 2084 (class 2606 OID 16963)
-- Name: order id_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES public.customer(id);


--
-- TOC entry 2087 (class 2606 OID 16975)
-- Name: order_item id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES public."order"(id);


--
-- TOC entry 2085 (class 2606 OID 16969)
-- Name: order id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product(id);


--
-- TOC entry 2088 (class 2606 OID 16981)
-- Name: order_item id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product(id);


--
-- TOC entry 2089 (class 2606 OID 16986)
-- Name: order_item id_product_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product_ FOREIGN KEY (id_product) REFERENCES public.product(id);

	
-- VS. INSERT COUNTRIES.
INSERT INTO public.country (name)
VALUES
    ('France'),
    ('England'),
    ('Spain'),
    ('Russia'),
    ('USA'),
    ('Japan'),
    ('Ukraine');
	

-- Completed on 2018-10-11 18:58:25

--
-- PostgreSQL database dump complete
--

