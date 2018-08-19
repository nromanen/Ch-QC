--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: price_change(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.price_change() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
if NEW.price<>OLD.price then
insert into "Order" values (old.id, old.id_customer, old.id_employee, old.date, new.price);
end if;
return new;
end;
$$;


ALTER FUNCTION public.price_change() OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Category" (
    id integer NOT NULL,
    name_category character varying(25)
);


ALTER TABLE public."Category" OWNER TO postgres;

--
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
-- Name: Category_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Category_id_category_seq" OWNED BY public."Category".id;


--
-- Name: City; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."City" (
    id integer NOT NULL,
    name_city name,
    id_country integer
);


ALTER TABLE public."City" OWNER TO postgres;

--
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
-- Name: City_id_city_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."City_id_city_seq" OWNED BY public."City".id;


--
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name_country character varying(25)
);


ALTER TABLE public."Country" OWNER TO postgres;

--
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
-- Name: Country_id_country_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Country_id_country_seq" OWNED BY public."Country".id;


--
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
-- Name: Customer_id_customer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Customer_id_customer_seq" OWNED BY public."Customer".id;


--
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Employee" (
    id integer NOT NULL,
    f_name_employee character varying(15),
    l_name_employee character varying(15),
    birth_date date,
    hire_date date,
    address character varying(100),
    id_city integer,
    id_chief integer,
    notes character varying(15)
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
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
-- Name: Employee_id_employee_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employee_id_employee_seq" OWNED BY public."Employee".id;


--
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Order" (
    id integer NOT NULL,
    id_customer integer,
    id_employee integer,
    year date
);


ALTER TABLE public."Order" OWNER TO postgres;

--
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
-- Name: Order_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_id_order_seq" OWNED BY public."Order".id;


--
-- Name: Order_product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Order_product" (
    id_order integer,
    id_product integer,
    unit_price numeric,
    count numeric,
    amount integer
);


ALTER TABLE public."Order_product" OWNER TO postgres;

--
-- Name: Producer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Producer" (
    id integer NOT NULL,
    name_producer character varying(25),
    id_country integer
);


ALTER TABLE public."Producer" OWNER TO postgres;

--
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
-- Name: Producer_id_producer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Producer_id_producer_seq" OWNED BY public."Producer".id;


--
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
-- Name: product_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_product_seq OWNED BY public."Product".id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_category_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City" ALTER COLUMN id SET DEFAULT nextval('public."City_id_city_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country" ALTER COLUMN id SET DEFAULT nextval('public."Country_id_country_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer" ALTER COLUMN id SET DEFAULT nextval('public."Customer_id_customer_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee" ALTER COLUMN id SET DEFAULT nextval('public."Employee_id_employee_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order" ALTER COLUMN id SET DEFAULT nextval('public."Order_id_order_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer" ALTER COLUMN id SET DEFAULT nextval('public."Producer_id_producer_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public.product_id_product_seq'::regclass);


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" (id, name_category) FROM stdin;
\.


--
-- Name: Category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_id_category_seq"', 1, false);


--
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."City" (id, name_city, id_country) FROM stdin;
\.


--
-- Name: City_id_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_id_city_seq"', 1, false);


--
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Country" (id, name_country) FROM stdin;
\.


--
-- Name: Country_id_country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Country_id_country_seq"', 1, false);


--
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Customer" (id, f_name_customer, l_name_customer, id_city) FROM stdin;
\.


--
-- Name: Customer_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_id_customer_seq"', 1, false);


--
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" (id, f_name_employee, l_name_employee, birth_date, hire_date, address, id_city, id_chief, notes) FROM stdin;
\.


--
-- Name: Employee_id_employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_id_employee_seq"', 1, false);


--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order" (id, id_customer, id_employee, year) FROM stdin;
\.


--
-- Name: Order_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_id_order_seq"', 1, false);


--
-- Data for Name: Order_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order_product" (id_order, id_product, unit_price, count, amount) FROM stdin;
\.


--
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Producer" (id, name_producer, id_country) FROM stdin;
\.


--
-- Name: Producer_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Producer_id_producer_seq"', 1, false);


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, name_product, id_producer, id_category) FROM stdin;
\.


--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 1, false);


--
-- Name: pk_id_category; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT pk_id_category PRIMARY KEY (id);


--
-- Name: pk_id_city; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT pk_id_city PRIMARY KEY (id);


--
-- Name: pk_id_country; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT pk_id_country PRIMARY KEY (id);


--
-- Name: pk_id_customer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT pk_id_customer PRIMARY KEY (id);


--
-- Name: pk_id_employee; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT pk_id_employee PRIMARY KEY (id);


--
-- Name: pk_id_order; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT pk_id_order PRIMARY KEY (id);


--
-- Name: pk_id_producer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT pk_id_producer PRIMARY KEY (id);


--
-- Name: pk_id_product; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT pk_id_product PRIMARY KEY (id);


--
-- Name: price_changer; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER price_changer BEFORE UPDATE ON public."Order_product" FOR EACH ROW EXECUTE PROCEDURE public.price_change();


--
-- Name: fk_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_category_id FOREIGN KEY (id_category) REFERENCES public."Category"(id);


--
-- Name: fk_chief_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_chief_id FOREIGN KEY (id_chief) REFERENCES public."Employee"(id);


--
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- Name: fk_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT fk_country_id FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- Name: fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (id_customer) REFERENCES public."Customer"(id);


--
-- Name: fk_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (id_employee) REFERENCES public."Employee"(id);


--
-- Name: fk_id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT fk_id_country FOREIGN KEY (id_country) REFERENCES public."City"(id);


--
-- Name: fk_id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_id_order FOREIGN KEY (id_order) REFERENCES public."Order"(id);


--
-- Name: fk_producer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_producer_id FOREIGN KEY (id_producer) REFERENCES public."Producer"(id);


--
-- Name: fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_product_id FOREIGN KEY (id_product) REFERENCES public."Product"(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

