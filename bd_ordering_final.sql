--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.19
-- Dumped by pg_dump version 9.4.19
-- Started on 2018-08-21 01:52:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2097 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 176 (class 1259 OID 16521)
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Category" (
    id integer NOT NULL,
    name_category character varying(25)
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16519)
-- Name: Category_id_category_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Category_id_category_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Category_id_category_seq" OWNER TO postgres;

--
-- TOC entry 2098 (class 0 OID 0)
-- Dependencies: 175
-- Name: Category_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Category_id_category_seq" OWNED BY public."Category".id;


--
-- TOC entry 174 (class 1259 OID 16513)
-- Name: City; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."City" (
    id integer NOT NULL,
    name_city character varying(15),
    id_country integer
);


ALTER TABLE public."City" OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16511)
-- Name: City_id_city_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."City_id_city_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."City_id_city_seq" OWNER TO postgres;

--
-- TOC entry 2099 (class 0 OID 0)
-- Dependencies: 173
-- Name: City_id_city_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."City_id_city_seq" OWNED BY public."City".id;


--
-- TOC entry 178 (class 1259 OID 16529)
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name_country character varying(15)
);


ALTER TABLE public."Country" OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16527)
-- Name: Country_id_country_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Country_id_country_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Country_id_country_seq" OWNER TO postgres;

--
-- TOC entry 2100 (class 0 OID 0)
-- Dependencies: 177
-- Name: Country_id_country_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Country_id_country_seq" OWNED BY public."Country".id;


--
-- TOC entry 180 (class 1259 OID 16537)
-- Name: Customer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Customer" (
    id integer NOT NULL,
    f_name_customer character varying(15),
    l_name_customer character varying(15),
    id_city integer
);


ALTER TABLE public."Customer" OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 16535)
-- Name: Customer_id_customer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Customer_id_customer_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Customer_id_customer_seq" OWNER TO postgres;

--
-- TOC entry 2101 (class 0 OID 0)
-- Dependencies: 179
-- Name: Customer_id_customer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Customer_id_customer_seq" OWNED BY public."Customer".id;


--
-- TOC entry 182 (class 1259 OID 16545)
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Employee" (
    id integer NOT NULL,
    first_name character varying(15),
    last_name character varying(15),
    birth_date date,
    hire_date date,
    address character varying(100),
    id_city integer,
    id_chief integer,
    notes character varying(15)
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16543)
-- Name: Employee_id_employee_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Employee_id_employee_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Employee_id_employee_seq" OWNER TO postgres;

--
-- TOC entry 2102 (class 0 OID 0)
-- Dependencies: 181
-- Name: Employee_id_employee_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employee_id_employee_seq" OWNED BY public."Employee".id;


--
-- TOC entry 184 (class 1259 OID 16556)
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Order" (
    id integer NOT NULL,
    id_customer integer,
    id_employee integer,
    date date
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16554)
-- Name: Order_id_order_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Order_id_order_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Order_id_order_seq" OWNER TO postgres;

--
-- TOC entry 2103 (class 0 OID 0)
-- Dependencies: 183
-- Name: Order_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_id_order_seq" OWNED BY public."Order".id;


--
-- TOC entry 185 (class 1259 OID 16562)
-- Name: Order_product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Order_product" (
    id_order integer,
    id_product integer,
    unit_price numeric,
    amount integer
);


ALTER TABLE public."Order_product" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16567)
-- Name: Producer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Producer" (
    id integer NOT NULL,
    name_producer character varying(25),
    id_country integer
);


ALTER TABLE public."Producer" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16565)
-- Name: Producer_id_producer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Producer_id_producer_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Producer_id_producer_seq" OWNER TO postgres;

--
-- TOC entry 2104 (class 0 OID 0)
-- Dependencies: 186
-- Name: Producer_id_producer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Producer_id_producer_seq" OWNED BY public."Producer".id;


--
-- TOC entry 189 (class 1259 OID 16575)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    name_product character varying(25),
    id_producer integer,
    id_category integer
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16573)
-- Name: product_id_product_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_product_seq OWNER TO postgres;

--
-- TOC entry 2105 (class 0 OID 0)
-- Dependencies: 188
-- Name: product_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_product_seq OWNED BY public."Product".id;


--
-- TOC entry 1929 (class 2604 OID 16524)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_category_seq"'::regclass);


--
-- TOC entry 1928 (class 2604 OID 16516)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City" ALTER COLUMN id SET DEFAULT nextval('public."City_id_city_seq"'::regclass);


--
-- TOC entry 1930 (class 2604 OID 16532)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country" ALTER COLUMN id SET DEFAULT nextval('public."Country_id_country_seq"'::regclass);


--
-- TOC entry 1931 (class 2604 OID 16540)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer" ALTER COLUMN id SET DEFAULT nextval('public."Customer_id_customer_seq"'::regclass);


--
-- TOC entry 1932 (class 2604 OID 16548)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee" ALTER COLUMN id SET DEFAULT nextval('public."Employee_id_employee_seq"'::regclass);


--
-- TOC entry 1933 (class 2604 OID 16559)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order" ALTER COLUMN id SET DEFAULT nextval('public."Order_id_order_seq"'::regclass);


--
-- TOC entry 1934 (class 2604 OID 16570)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer" ALTER COLUMN id SET DEFAULT nextval('public."Producer_id_producer_seq"'::regclass);


--
-- TOC entry 1935 (class 2604 OID 16578)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public.product_id_product_seq'::regclass);


--
-- TOC entry 2075 (class 0 OID 16521)
-- Dependencies: 176
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--





--
-- TOC entry 2106 (class 0 OID 0)
-- Dependencies: 175
-- Name: Category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_id_category_seq"', 1, false);


--
-- TOC entry 2073 (class 0 OID 16513)
-- Dependencies: 174
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2107 (class 0 OID 0)
-- Dependencies: 173
-- Name: City_id_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_id_city_seq"', 1, false);


--
-- TOC entry 2077 (class 0 OID 16529)
-- Dependencies: 178
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2108 (class 0 OID 0)
-- Dependencies: 177
-- Name: Country_id_country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Country_id_country_seq"', 1, false);


--
-- TOC entry 2079 (class 0 OID 16537)
-- Dependencies: 180
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2109 (class 0 OID 0)
-- Dependencies: 179
-- Name: Customer_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_id_customer_seq"', 1, false);


--
-- TOC entry 2081 (class 0 OID 16545)
-- Dependencies: 182
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2110 (class 0 OID 0)
-- Dependencies: 181
-- Name: Employee_id_employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_id_employee_seq"', 1, false);


--
-- TOC entry 2083 (class 0 OID 16556)
-- Dependencies: 184
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2111 (class 0 OID 0)
-- Dependencies: 183
-- Name: Order_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_id_order_seq"', 1, false);


--
-- TOC entry 2084 (class 0 OID 16562)
-- Dependencies: 185
-- Data for Name: Order_product; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2086 (class 0 OID 16567)
-- Dependencies: 187
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2112 (class 0 OID 0)
-- Dependencies: 186
-- Name: Producer_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Producer_id_producer_seq"', 1, false);


--
-- TOC entry 2088 (class 0 OID 16575)
-- Dependencies: 189
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2113 (class 0 OID 0)
-- Dependencies: 188
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 1, false);


--
-- TOC entry 1939 (class 2606 OID 16526)
-- Name: pk_id_category; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT pk_id_category PRIMARY KEY (id);


--
-- TOC entry 1937 (class 2606 OID 16518)
-- Name: pk_id_city; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT pk_id_city PRIMARY KEY (id);


--
-- TOC entry 1941 (class 2606 OID 16534)
-- Name: pk_id_country; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT pk_id_country PRIMARY KEY (id);


--
-- TOC entry 1943 (class 2606 OID 16542)
-- Name: pk_id_customer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT pk_id_customer PRIMARY KEY (id);


--
-- TOC entry 1945 (class 2606 OID 16553)
-- Name: pk_id_employee; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT pk_id_employee PRIMARY KEY (id);


--
-- TOC entry 1947 (class 2606 OID 16561)
-- Name: pk_id_order; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT pk_id_order PRIMARY KEY (id);


--
-- TOC entry 1949 (class 2606 OID 16572)
-- Name: pk_id_producer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT pk_id_producer PRIMARY KEY (id);


--
-- TOC entry 1951 (class 2606 OID 16580)
-- Name: pk_id_product; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT pk_id_product PRIMARY KEY (id);


--
-- TOC entry 1962 (class 2606 OID 16662)
-- Name: fk_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_category_id FOREIGN KEY (id_category) REFERENCES public."Category"(id);


--
-- TOC entry 1955 (class 2606 OID 16667)
-- Name: fk_chief_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_chief_id FOREIGN KEY (id_chief) REFERENCES public."Employee"(id);


--
-- TOC entry 1953 (class 2606 OID 16587)
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- TOC entry 1954 (class 2606 OID 16632)
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- TOC entry 1960 (class 2606 OID 16652)
-- Name: fk_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT fk_country_id FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 1956 (class 2606 OID 16642)
-- Name: fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (id_customer) REFERENCES public."Customer"(id);


--
-- TOC entry 1957 (class 2606 OID 16647)
-- Name: fk_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (id_employee) REFERENCES public."Employee"(id);


--
-- TOC entry 1952 (class 2606 OID 24704)
-- Name: fk_id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT fk_id_country FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 1958 (class 2606 OID 16672)
-- Name: fk_id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_id_order FOREIGN KEY (id_order) REFERENCES public."Order"(id);


--
-- TOC entry 1961 (class 2606 OID 16657)
-- Name: fk_producer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_producer_id FOREIGN KEY (id_producer) REFERENCES public."Producer"(id);


--
-- TOC entry 1959 (class 2606 OID 16677)
-- Name: fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_product_id FOREIGN KEY (id_product) REFERENCES public."Product"(id);

ALTER TABLE public."Product" ADD COLUMN price numeric ;
--
-- TOC entry 2096 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-08-21 01:52:24

--
-- PostgreSQL database dump complete
--

