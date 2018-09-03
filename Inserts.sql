--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.19
-- Dumped by pg_dump version 9.4.19
-- Started on 2018-09-03 17:12:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2097 (class 0 OID 0)
-- Dependencies: 2096
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 2 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2100 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2101 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 24709)
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Category" (
    id integer NOT NULL,
    name_category character varying(25)
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 24712)
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
-- TOC entry 2102 (class 0 OID 0)
-- Dependencies: 175
-- Name: Category_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Category_id_category_seq" OWNED BY public."Category".id;


--
-- TOC entry 176 (class 1259 OID 24714)
-- Name: City; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."City" (
    id integer NOT NULL,
    name_city character varying(15),
    id_country integer
);


ALTER TABLE public."City" OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 24717)
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
-- TOC entry 2103 (class 0 OID 0)
-- Dependencies: 177
-- Name: City_id_city_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."City_id_city_seq" OWNED BY public."City".id;


--
-- TOC entry 178 (class 1259 OID 24719)
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name_country character varying(15)
);


ALTER TABLE public."Country" OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 24722)
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
-- TOC entry 2104 (class 0 OID 0)
-- Dependencies: 179
-- Name: Country_id_country_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Country_id_country_seq" OWNED BY public."Country".id;


--
-- TOC entry 180 (class 1259 OID 24724)
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
-- TOC entry 181 (class 1259 OID 24727)
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
-- TOC entry 2105 (class 0 OID 0)
-- Dependencies: 181
-- Name: Customer_id_customer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Customer_id_customer_seq" OWNED BY public."Customer".id;


--
-- TOC entry 182 (class 1259 OID 24729)
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
-- TOC entry 183 (class 1259 OID 24732)
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
-- TOC entry 2106 (class 0 OID 0)
-- Dependencies: 183
-- Name: Employee_id_employee_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Employee_id_employee_seq" OWNED BY public."Employee".id;


--
-- TOC entry 184 (class 1259 OID 24734)
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
-- TOC entry 185 (class 1259 OID 24737)
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
-- TOC entry 2107 (class 0 OID 0)
-- Dependencies: 185
-- Name: Order_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_id_order_seq" OWNED BY public."Order".id;


--
-- TOC entry 186 (class 1259 OID 24739)
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
-- TOC entry 187 (class 1259 OID 24745)
-- Name: Producer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Producer" (
    id integer NOT NULL,
    name_producer character varying(25),
    id_country integer
);


ALTER TABLE public."Producer" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 24748)
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
-- TOC entry 2108 (class 0 OID 0)
-- Dependencies: 188
-- Name: Producer_id_producer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Producer_id_producer_seq" OWNED BY public."Producer".id;


--
-- TOC entry 189 (class 1259 OID 24750)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    name_product character varying(25),
    id_producer integer,
    id_category integer,
    price numeric
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 24753)
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
-- TOC entry 2109 (class 0 OID 0)
-- Dependencies: 190
-- Name: product_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_product_seq OWNED BY public."Product".id;


--
-- TOC entry 1930 (class 2604 OID 24755)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_category_seq"'::regclass);


--
-- TOC entry 1931 (class 2604 OID 24756)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City" ALTER COLUMN id SET DEFAULT nextval('public."City_id_city_seq"'::regclass);


--
-- TOC entry 1932 (class 2604 OID 24757)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country" ALTER COLUMN id SET DEFAULT nextval('public."Country_id_country_seq"'::regclass);


--
-- TOC entry 1933 (class 2604 OID 24758)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer" ALTER COLUMN id SET DEFAULT nextval('public."Customer_id_customer_seq"'::regclass);


--
-- TOC entry 1934 (class 2604 OID 24759)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee" ALTER COLUMN id SET DEFAULT nextval('public."Employee_id_employee_seq"'::regclass);


--
-- TOC entry 1935 (class 2604 OID 24760)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order" ALTER COLUMN id SET DEFAULT nextval('public."Order_id_order_seq"'::regclass);


--
-- TOC entry 1936 (class 2604 OID 24761)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer" ALTER COLUMN id SET DEFAULT nextval('public."Producer_id_producer_seq"'::regclass);


--
-- TOC entry 1937 (class 2604 OID 24762)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public.product_id_product_seq'::regclass);


--
-- TOC entry 2074 (class 0 OID 24709)
-- Dependencies: 174
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" (id, name_category) FROM stdin;
1	Food
6	Sport
3	Cosmetics
2	Clothes
\.


--
-- TOC entry 2110 (class 0 OID 0)
-- Dependencies: 175
-- Name: Category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_id_category_seq"', 1, false);


--
-- TOC entry 2076 (class 0 OID 24714)
-- Dependencies: 176
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."City" (id, name_city, id_country) FROM stdin;
41	Vienna	41
42	Rome	42
43	Brussels	43
44	Riga	44
45	Prague	45
46	Amsterdam	46
47	Copenhagen	47
48	Warsaw	48
49	Tallinn	49
50	Lisbon	50
51	Helsinki	51
52	Bucharest	52
53	Paris	53
54	Bratislava	54
55	Berlin	55
56	Athens	56
57	Madrid	57
58	Budapest	58
59	Stockholm	59
60	London	60
21	Canberra	6
22	Sydney	6
23	Darwin	6
24	Palmerstone	6
25	Brisbane	6
26	Adelaide	6
27	Whyalla	6
28	Hobart	6
29	Melbourne	6
30	Perth	6
31	Cairns	6
32	Newcastle	6
33	Wollongong	6
34	Townville	6
35	Bendigo	6
36	Geelong	6
37	Ballarat	6
38	Albury	6
39	Wodonga	6
40	Mackay	6
81	Buenos Aires	81
82	 Catamarca	81
83	Chaco	81
84	La Paz	82
85	El Alto	82
86	Cochabamba	82
87	Brasilia	83
88	São Paulo	83
89	Rio de Janeiro	83
90	Caracas	84
91	Georgetown	85
92	Santa de Bogotá	86
93	Asuncion	87
94	Lima	88
95	Paramaribo	89
96	Montevideo	90
97	Barcelona	90
98	Port Stanley	91
99	Santiago	92
100	Quito	93
61	Toronto	61
62	Vancouver	61
63	Ottawa	61
64	Edmonton	61
65	Regina	61
66	Winnipeg	61
67	Guadalajara	62
68	Mexico	62
69	Colima	62
70	Morelia	62
71	Pachuca	62
72	Chicago	63
73	Los Angeles	63
74	New York	63
75	Dallas	63
76	San Francisco	63
77	Boston	63
78	Las Vegas	63
79	Miami	63
80	New Orleans	63
\.


--
-- TOC entry 2111 (class 0 OID 0)
-- Dependencies: 177
-- Name: City_id_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."City_id_city_seq"', 1, false);


--
-- TOC entry 2078 (class 0 OID 24719)
-- Dependencies: 178
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Country" (id, name_country) FROM stdin;
41	Austria
42	Italy
43	Belgium
44	Latvia
45	Czech Republic
46	Netherlands
47	Denmark
48	Poland
49	Estonia
50	Portugal
51	Finland
52	Romania
53	France
54	Slovakia
55	Germany
56	Greece
57	Spain
58	Hungary
59	Sweden
60	United Kingdom
6	Australia
81	Argentina
82	Bolivia
83	Brazil
84	Venezuela
85	Guyana
86	Colombia
87	Paraguay
88	Peru
89	Suriname
90	Uruguay
91	Falkland
92	Chile
93	Ecuador
61	Canada
62	Mexico
63	USA
\.


--
-- TOC entry 2112 (class 0 OID 0)
-- Dependencies: 179
-- Name: Country_id_country_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Country_id_country_seq"', 1, false);


--
-- TOC entry 2080 (class 0 OID 24724)
-- Dependencies: 180
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Customer" (id, f_name_customer, l_name_customer, id_city) FROM stdin;
41	Peter	North	41
42	Franchesco	Filini	42
43	Mark	Buss	43
44	Nata	Shprot	44
45	Beer	Cozel	45
46	Mari	Huana	46
47	Very	Expensive	47
48	Mrowka	Truskavka	48
49	Very	Slow	49
50	Orange	Juice	50
51	Nice	Fiord	51
52	Buna	Sara	52
53	Frog	Legs	53
54	Where	Itis	54
55	Ramm	Stein	55
56	Ser	Taki	56
57	Man	Darin	57
58	Got	Smack	58
59	Stock	Holm	59
60	John	Smith	60
21	Anthony	Callea	26
22	Brody	Dalle	21
23	Jim	Jefferies	30
24	Charle	Dalle	35
25	Susan	Powter	37
26	Claudia	Black	23
27	Donald	Bradman	27
28	Kate	Leon	28
29	Jim	Black	22
30	Samara	Simmons	25
31	Rob	Black	34
32	Matt	Hinkler	30
33	Sam	Sparro	32
34	Anthony	Leon	29
35	Claudia	Wakelin	24
36	Susan	Callea	38
37	Matt	Slipper	36
38	James	Bright	39
39	Israel	Sparro	33
40	Peter	Kepu	31
61	Adam	Mitch	72
62	Iva	Mackenzi	73
63	Jennifer	Lopes	74
64	Amanda	Selfard	75
65	Aleksander	Chaned	76
66	Kate	Radison	77
67	Alison	Nice	78
68	Hose	Amomio	71
69	Alehandro	Jose	67
70	Miguel	Angelo	69
71	Juan	Luis	68
72	Maria	Carmen	70
73	Tom	Hardy	79
74	Jastin	Biber	80
75	Logan	Bruno	66
76	Jacob 	Smith	65
77	Thomas	Brodie	64
78	Olivia	Noah	63
79	Isabella 	James	62
80	Mia	Mason	61
81	Nancy	Davolio	81
82	Andrew	Fuller	82
83	Janet	Leverling	83
84	Maria	Anders	84
85	Ana	Trujillo	85
86	Antonio	Moreno	86
87	Thomas	Hardy	87
88	Christina	Berglund	88
89	Hanna	Moos	89
90	Frederique	Citeaux	90
91	Martin	Sommer	91
92	Laurence	Lebihans	92
93	Elizabeth	Lincoln	93
94	Victoria	Ashworth	94
95	Patricio	Simpson	95
96	Francisco	Chang	96
97	Pedro	Afonso	97
98	Elizabeth	Brown	98
99	Sven	Ottlieb	99
100	Janine	Labrune	100
\.


--
-- TOC entry 2113 (class 0 OID 0)
-- Dependencies: 181
-- Name: Customer_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_id_customer_seq"', 1, false);


--
-- TOC entry 2082 (class 0 OID 24729)
-- Dependencies: 182
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" (id, first_name, last_name, birth_date, hire_date, address, id_city, id_chief, notes) FROM stdin;
22	Adam	Cooper	1985-09-21	2006-06-21	12-18 Hall St, NSW 2302	21	\N	YuliiaBorova
23	Rose	Byrney	1973-01-09	1994-08-05	16-20 Ravenshaw St, NSW 2300	35	\N	YuliiaBorova
24	Kurtley	Beale	1990-02-23	2012-09-03	27-29 Gan Gan Rd, NSW 2316	26	\N	YuliiaBorova
25	Berrick	Barnes	1985-07-06	2005-08-03	15-98 Angas St, NSW 2120	31	\N	YuliiaBorova
26	Abbie	Cornish	1980-09-06	2003-09-04	13-29 Churchill Road, NSW 2532	30	\N	YuliiaBorova
27	Scott	Higginbotham	1992-07-12	2014-09-01	78-96 Rundle St, NSW 2125	22	\N	YuliiaBorova
28	Jessica	Gomes	1980-09-05	2001-10-13	89-16 Regency Road, NSW 2113	38	25	YuliiaBorova
29	Ben	Alexander	1971-05-25	1990-03-09	15-15 East Terrace, NSW 2301	40	21	YuliiaBorova
30	David	Koch	1960-01-08	1979-07-11	78-23 Grenfell St, NSW 2132	29	\N	YuliiaBorova
31	Errol	Flynn	1967-03-07	1988-01-09	12-10  Sturt St, NSW 2133	39	\N	YuliiaBorova
32	Maia	Mitchell	1993-07-02	2015-09-14	5-8 Franklin St, NSW 2134	36	23	YuliiaBorova
34	Cody	Simpson	1994-09-18	2013-07-25	235-96 Victoria Road, NSW 2136	23	30	YuliiaBorova
35	Torah	Bright	1980-06-28	2000-12-03	789-23 Gawler Place, NSW 2137	25	\N	YuliiaBorova
36	Indiana	Evans	1991-05-16	2012-08-19	1-1 King William St, NSW 2138	24	31	YuliiaBorova
38	David	Cooper	1990-04-15	2009-08-17	9-6 Halifax St, NSW 2142	37	\N	YuliiaBorova
39	Jessica	Tozzi	1990-06-05	2011-06-09	89-35 Grote St, NSW 2115	34	\N	YuliiaBorova
40	Cooper	Simmons	1993-02-03	2012-07-16	73-20 The Parade, NSW 2021	33	\N	YuliiaBorova
21	Nathan	Sharpe	1956-07-05	1978-07-23	105-107 Union St, NSW 2300	28	\N	YuliiaBorova
33	Paul	Hogan	1954-04-23	1977-05-19	19-14 Pirie St, NSW 2135	32	\N	YuliiaBorova
37	Peter	Allen	1953-03-17	1975-09-04	2-15 Hindley St, NSW 2139	27	33	YuliiaBorova
11	Taya	Vasilinchuk	1988-03-21	2018-05-22	Holovna Street 29	41	11	Ivan Mykytiuk
12	Sonya	Baraban	1987-06-09	2017-12-17	Bohuna Street 106	42	12	Ivan Mykytiuk
13	Petya	Lunik	1986-09-03	2017-08-04	Kobylyanska Street 45	43	12	Ivan Mykytiuk
14	Toto	Cutunio	1987-10-09	2016-08-08	Ruska Street 12	44	12	Ivan Mykytiuk
15	Kostya	Dzyu	1989-12-29	2017-01-02	Haharina Street 162	45	12	Ivan Mykytiuk
41	Seth	Cejka	1978-07-15	2018-02-14	Burbon Street, House #41	41	\N	Valentyna
42	Barrett	Moland	1978-01-31	2017-12-13	Burbon Street, House #42	42	\N	Valentyna
43	Siusan	Macro	1978-06-27	2017-08-28	Burbon Street, House #43	43	\N	Valentyna
44	Brigham	Bugge	1978-03-27	2018-06-17	Burbon Street, House #44	44	42	Valentyna
46	Stephani	Undrell	1977-10-16	2018-05-22	Burbon Street, House #46	46	42	Valentyna
47	Harcourt	Baudet	1978-03-19	2018-01-06	Burbon Street, House #47	47	42	Valentyna
48	Skippy	Hanmer	1977-10-15	2018-05-23	Burbon Street, House #48	48	42	Valentyna
49	Arte	Tuckwood	1978-05-03	2017-12-27	Burbon Street, House #49	49	42	Valentyna
50	Francesca	Doel	1978-03-14	2018-03-21	Burbon Street, House #50	50	42	Valentyna
51	Deeann	Genthner	1978-03-19	2018-03-12	Burbon Street, House #51	51	42	Valentyna
52	Sherie	Tibbits	1978-02-08	2018-05-06	Burbon Street, House #52	52	42	Valentyna
53	Salvatore	Gepheart	1978-05-20	2017-08-19	Burbon Street, House #53	53	42	Valentyna
54	Lindsey	Claworth	1977-12-28	2017-12-10	Burbon Street, House #54	54	42	Valentyna
56	Flo	Royden	1977-09-10	2018-01-26	Burbon Street, House #56	56	42	Valentyna
57	Biron	Decroix	1978-03-24	2018-06-23	Burbon Street, House #57	57	42	Valentyna
58	Darb	Kaser	1978-04-12	2018-02-05	Burbon Street, House #58	58	42	Valentyna
59	Ahmad	Paunton	1978-07-20	2018-02-02	Burbon Street, House #59	59	42	Valentyna
60	Clyde	Fonte	1977-11-10	2018-08-03	Burbon Street, House #60	60	42	Valentyna
55	Bryn	Copestick	1977-12-28	2018-02-05	Burbon Street, House #55	55	42	Valentyna
45	Abigail	Flannigan	1977-09-10	2017-10-03	Burbon Street, House #45	45	43	Valentyna
81	Catherine	Dewey	1965-03-02	1996-06-05	Obere Str. 57 	81	\N	VPetrashchuk
82	Jean	Fresniere	1970-11-25	1997-09-11	Avda. de la Constitucion 2222	82	81	VPetrashchuk
83	Alexander	Feuer	1950-09-30	1995-10-19	Mataderos 2312	83	\N	VPetrashchuk
84	Simon	Crowther	1969-12-06	1999-11-12	120 Hanover Sq.	84	\N	VPetrashchuk
85	Yvonne	Moncada	1985-12-22	2007-03-05	Forsterstr. 57	85	\N	VPetrashchuk
86	Rene	Phillips	1986-09-18	2008-09-09	C/ Araquil, 67	86	\N	VPetrashchuk
87	Henriette	Pfalzheim	1970-01-26	2000-07-09	12, rue des Bouchers	87	82	VPetrashchuk
88	Marie	Bertrand	1980-09-26	2000-10-24	23 Tsawassen Blvd.	88	\N	VPetrashchuk
89	Guillermo	Fernandez	2000-01-01	2018-05-01	Cerrito 333	89	\N	VPetrashchuk
90	Georg	Pipps	1984-12-09	2006-09-29	Sierras de Granada 9993	90	\N	VPetrashchuk
91	Isabel	de Castro	1978-02-27	2001-10-02	Av. dos Lusiadas, 23	91	\N	VPetrashchuk
92	Bernardo	Batista	1989-03-03	2010-05-04	Walserweg 21	92	\N	VPetrashchuk
93	Lucia	Carvalho	1990-12-09	2011-08-08	67, rue des Cinquante Otages	93	\N	VPetrashchuk
94	Horst	Kloss	2000-01-13	2018-08-09	Kirchgasse 6 	94	\N	VPetrashchuk
95	Sergio	Gutierrez	1976-10-19	2000-09-15	Rua Oros, 92	95	83	VPetrashchuk
96	Paula	Wilson	1983-10-27	2005-04-12	C/ Moralzarzal, 86 	96	\N	VPetrashchuk
97	Maurizio	Moroni	1988-12-31	2010-09-19	184, chaussee de Tournai	97	\N	VPetrashchuk
98	Janete	Limeira	1995-02-16	2016-12-06	54, rue Royale	98	\N	VPetrashchuk
99	Michael	Holz	1993-12-12	2015-06-29	Via Monte Bianco 34	99	\N	VPetrashchuk
100	Alejandra	Camino	1991-04-02	2014-09-09	Jardim das rosas n. 32	100	\N	VPetrashchuk
61	Ryan	Golema	1962-06-18	1996-04-13	Gloucester Drive 57a	63	\N	Yuliya Lapchyk
62	Thomas	Lema	1963-01-10	1997-08-08	Pinewood Crescent 343	63	61	Yuliya Lapchyk
63	Karine	Amber	1987-07-28	2011-04-13	Rue Dupuis 14	63	61	Yuliya Lapchyk
64	Alex	Briann	1963-05-01	1997-01-11	Gloucester Drive 5	63	61	Yuliya Lapchyk
65	Simon	William	1977-08-18	2013-04-23	Pin Crescent 141	63	61	Yuliya Lapchyk
66	George	Olen	1978-10-28	2013-08-25	Bathurst 880	63	61	Yuliya Lapchyk
67	Olivia	Golema	1979-12-08	2011-09-04	 Broadway 1556	72	\N	Yuliya Lapchyk
68	Adam	Lem	1963-08-18	1997-09-01	Dominica Circle 271 	72	67	Yuliya Lapchyk
69	Amanda	Sema	1990-01-29	2015-11-30	Fordham 5607	72	67	Yuliya Lapchyk
70	Mikle	Kors	1963-02-28	1996-03-28	Clayhall Avenue 8800	72	67	Yuliya Lapchyk
71	Tom	Devis	1986-03-03	2012-01-15	Pike Close 6	72	67	Yuliya Lapchyk
72	Thomas	Miller	1962-05-15	1996-07-24	Broadway 2556	72	67	Yuliya Lapchyk
73	Eva	Smith	1978-12-18	2018-02-02	Fordham 5708	72	67	Yuliya Lapchyk
74	Natali	Wilson	1987-11-18	2008-04-18	Dominica Circle 371	72	67	Yuliya Lapchyk
75	Emma	Hill	1981-10-18	2010-06-06	Bathurst 999	72	67	Yuliya Lapchyk
76	Diego	Fernando	1963-09-18	1997-02-25	Avenida Bucareli 111	68	\N	Yuliya Lapchyk
77	Alehandro	Gole	1963-09-18	1997-01-19	Paseo de la Reforma	68	76	Yuliya Lapchyk
78	John	Carlos	1995-07-18	2017-07-21	Madero Street 257	68	76	Yuliya Lapchyk
79	Miguel	Angelo	1994-07-18	2017-07-21	Madero Street 117	68	76	Yuliya Lapchyk
80	Jesus	Luis	1962-04-18	1996-08-20	Avenida Bucareli 200	68	76	Yuliya Lapchyk
\.


--
-- TOC entry 2114 (class 0 OID 0)
-- Dependencies: 183
-- Name: Employee_id_employee_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Employee_id_employee_seq"', 1, false);


--
-- TOC entry 2084 (class 0 OID 24734)
-- Dependencies: 184
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order" (id, id_customer, id_employee, date) FROM stdin;
41	59	60	2018-02-19
42	42	45	2018-06-14
43	56	46	2017-12-09
44	48	51	2017-05-03
45	48	57	2017-01-14
46	59	59	2018-04-12
47	44	48	2017-01-20
48	49	52	2017-03-22
49	46	50	2017-12-19
50	47	44	2017-03-26
51	43	43	2017-03-05
52	57	44	2017-07-31
53	55	59	2017-12-30
54	47	47	2017-03-23
55	51	54	2018-08-01
56	51	52	2018-06-11
57	47	56	2017-05-26
58	48	44	2018-05-06
59	50	50	2017-06-26
60	42	57	2017-10-14
21	29	34	1997-02-23
22	21	27	1997-08-15
23	24	28	2000-09-10
24	25	33	2001-01-09
25	27	24	2001-03-17
26	30	37	2010-03-17
27	32	39	2001-04-05
28	37	26	2001-03-17
29	40	30	2011-03-05
30	33	25	2012-05-14
31	39	31	2013-07-15
32	34	22	2014-01-18
33	35	23	2014-05-17
34	36	21	2014-07-05
35	31	29	2015-07-03
36	38	35	2015-10-23
37	27	24	2016-08-16
38	28	38	2016-10-01
39	26	32	2017-08-25
40	23	40	2018-07-18
61	80	74	2018-08-26
62	79	73	2018-08-28
63	78	72	1997-02-22
64	77	71	2017-07-07
65	76	70	1997-11-11
66	75	69	2018-07-26
67	74	68	1997-10-08
68	73	67	2018-05-15
69	72	80	1997-06-30
70	71	79	2017-10-06
71	70	78	2018-03-23
72	69	77	1997-02-11
73	68	76	1997-09-08
74	67	75	2018-08-26
75	66	61	1997-01-02
76	65	62	1997-09-09
77	64	63	2017-12-21
78	63	64	1997-04-14
81	61	66	1997-08-28
80	61	66	1997-08-28
79	62	64	1997-08-15
82	74	66	2018-02-02
\.


--
-- TOC entry 2115 (class 0 OID 0)
-- Dependencies: 185
-- Name: Order_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_id_order_seq"', 1, false);


--
-- TOC entry 2086 (class 0 OID 24739)
-- Dependencies: 186
-- Data for Name: Order_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order_product" (id_order, id_product, unit_price, amount) FROM stdin;
46	51	23.60	5
56	59	312.00	4
43	42	201.00	5
58	58	190.00	2
50	55	2.60	5
52	41	206.50	4
55	45	92.10	9
45	46	19.50	2
58	46	19.50	10
59	49	94.10	3
51	54	212.30	8
59	50	26.30	7
45	52	119.90	8
54	49	94.10	7
57	59	312.00	4
47	51	23.60	4
54	45	92.10	6
50	50	26.30	9
53	47	125.60	2
53	46	19.50	6
57	57	125.00	3
52	56	119.00	8
45	60	214.00	3
60	53	293.00	8
52	50	26.30	7
58	57	125.00	2
45	50	26.30	4
57	58	190.00	7
52	45	92.10	8
44	50	26.30	4
41	47	125.60	7
52	42	201.00	4
57	42	201.00	7
56	55	2.60	4
48	44	209.30	1
46	41	206.50	3
51	50	26.30	7
47	49	94.10	5
60	41	206.50	7
56	45	92.10	2
44	45	92.10	5
56	56	119.00	6
43	53	293.00	7
56	49	94.10	4
44	56	119.00	6
45	42	201.00	6
50	52	119.90	1
42	59	312.00	5
52	58	190.00	5
46	54	212.30	7
50	57	125.00	10
60	54	212.30	6
55	47	125.60	2
51	55	2.60	6
55	51	23.60	1
59	52	119.90	6
49	44	209.30	7
50	42	201.00	2
42	60	214.00	7
48	53	293.00	3
57	49	94.10	2
56	41	206.50	9
47	56	119.00	3
50	47	125.60	10
60	50	26.30	1
60	48	19.20	3
45	58	190.00	3
48	59	312.00	3
60	46	19.50	9
46	43	115.00	3
50	58	190.00	4
48	43	115.00	6
54	51	23.60	7
50	60	214.00	7
49	41	206.50	3
56	50	26.30	7
51	58	190.00	6
55	57	125.00	9
52	43	115.00	10
58	52	119.90	9
44	59	312.00	1
46	55	2.60	8
41	48	19.20	2
60	52	119.90	1
46	48	19.20	3
56	53	293.00	7
50	59	312.00	2
47	43	115.00	1
49	49	94.10	6
43	44	209.30	7
51	47	125.60	7
51	59	312.00	7
56	46	19.50	9
51	53	293.00	2
59	42	201.00	7
48	45	92.10	9
43	48	19.20	3
45	49	94.10	7
54	41	206.50	8
57	53	293.00	3
21	21	300	1
22	22	150	1
23	23	260	1
24	24	99	2
25	25	140	1
26	26	300	1
27	27	120	3
28	28	70	2
29	29	45	3
30	30	210	1
31	31	130	1
32	32	15	2
33	33	100	1
34	34	35	2
35	35	89	1
36	36	40	1
37	37	320	1
38	38	70	2
39	39	155	1
40	40	315	1
62	79	15.99	1
63	78	17.98	2
64	77	28.00	3
65	76	29.50	1
66	75	18.00	2
67	74	15.14	1
68	73	6.99	5
69	72	12.99	2
70	71	2.48	20
71	70	7.99	4
72	69	17.32	4
73	68	7.99	10
74	67	10.99	11
75	66	19.89	5
76	65	12.59	10
77	64	36.29	7
78	63	74.99	5
79	62	10.99	10
80	61	130	3
61	80	12.08	3
\.


--
-- TOC entry 2087 (class 0 OID 24745)
-- Dependencies: 187
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Producer" (id, name_producer, id_country) FROM stdin;
41	Milka	41
42	Barilla	42
43	Darknight	43
44	Goldshpr	44
45	Kozel	45
46	Ambel	46
47	Krauz	47
48	Mrowka	48
49	Kosan	49
50	Orangecity	50
51	Gradus	51
52	Bun	51
53	La Rosh	53
54	Fanore	54
55	Munich	55
56	GreenOlive	56
57	Sangria	57
58	Uredav	58
59	Swich	59
60	UKfood	60
21	Adventure Equipment Aus	6
22	Kathmandu	6
23	Mountain Designs	6
24	One Planet	6
25	OZtrail	6
26	Sea to Summit	6
27	Ice Peak	6
28	Cactus	6
29	IceBreaker	6
30	Deuter	6
31	Fjord Nanssen	6
32	Salewa	6
33	Snow Peak	6
34	BioLite	6
35	ClimbTech	6
36	Orsey	6
37	Karrimor	6
38	Regatta	6
39	Tierra	6
40	Zamberlan	6
61	Viktoria Secret	63
62	Revlon	63
63	L_Oreal	63
64	Ulta	63
65	Rimmel	63
66	Nudestix	61
67	RMS beauty	61
68	Farsali	61
69	Nuance Salma Hayek	62
70	Circa Beauty	62
81	I. & R. Morley	81
82	Koton (company)	82
83	Larusmiani	83
84	Blanc & Eclare	84
85	Lyle & Scott	85
86	Mexx	86
87	Caraceni	87
88	C&A	88
89	Le Château	89
90	Dolfin Swimwear	90
91	OGGI	91
92	Pal Zileri	92
93	Paule Ka	93
94	Pepe Jeans	92
95	H&M	91
96	S.E.H Kelly	91
97	Trands	81
98	J-Wear	93
99	Joykeep Jeans	87
100	Iron Heart	86
\.


--
-- TOC entry 2116 (class 0 OID 0)
-- Dependencies: 188
-- Name: Producer_id_producer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Producer_id_producer_seq"', 1, false);


--
-- TOC entry 2089 (class 0 OID 24750)
-- Dependencies: 189
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, name_product, id_producer, id_category, price) FROM stdin;
55	Іausages	55	1	\N
41	Chocolate	41	1	\N
47	Tofu	47	1	\N
59	Fish	59	1	\N
60	Tofu	60	1	\N
45	White Beer	45	1	\N
50	Orange	50	1	\N
43	Black Chocolate	43	1	\N
42	Pasta	42	1	\N
51	Tea	51	1	\N
56	Oil	56	1	\N
49	Coffe	49	1	\N
44	Fish	44	1	\N
54	Oil	54	1	\N
53	Vine	53	1	\N
57	Vine	57	1	\N
52	cookies	51	1	\N
58	Cheese	58	1	\N
46	Brot	46	1	\N
48	Milk	48	1	\N
21	tent	23	6	\N
22	tent	23	6	\N
23	tent	31	6	\N
24	hiking boots	33	6	\N
25	hiking boots	40	6	\N
26	tent	35	6	\N
27	backpack	21	6	\N
28	backpack	26	6	\N
29	headlamp	24	6	\N
30	tent	38	6	\N
31	backpack	39	6	\N
32	flashlight	36	6	\N
33	sleeping bag	37	6	\N
34	hiking pole	34	6	\N
35	sleeping bag	30	6	\N
36	hiking pole	28	6	\N
37	tent	22	6	\N
38	backpack	25	6	\N
39	hiking boots	27	6	\N
40	tent	29	6	\N
61	Casting Creme 	63	3	130
62	Alliance Perfect	63	3	10.99
63	Organique Dermo Cream	62	3	74.99
64	Proffessional Primer	62	3	36.29
65	Shine Lipgloss	61	3	12.59
66	Garden Fragrance Lotion	61	3	19.89
67	My Biggest Lashes	64	3	10.99
68	Liquid Eyeliner	64	3	7.99
69	Superstat Matte Lipgloss	65	3	17.32
70	Powder Mineral	65	3	7.99
71	Sunny Lipstick beach	68	3	2.48
72	Truly Natural Lipstick	68	3	12.99
73	Super Lustrous Lipstick	66	3	6.99
74	TATTOO BROW	66	3	15.14
75	Nudies All Over Face	67	3	18.00
76	New Bite Lipstick Queen	67	3	29.50
77	Addesse Tarte Girlactik	70	3	28.00
78	Anti-Aging Cream	69	3	17.98
79	Age Glycolic Cream	69	3	15.99
80	Full Coverage Foundation	70	3	12.08
81	blouse	81	2	15.00
82	skirt	82	2	11.00
83	dress	83	2	12.00
84	shirt	84	2	20.00
85	trousers	85	2	21.00
86	swimsuit	86	2	30.00
87	sweater	87	2	45.00
88	suit	88	2	15.00
89	jeans	89	2	10.00
90	shorts	90	2	8.00
91	T-shirt	91	2	50.00
92	shoes	92	2	5.00
93	boots	93	2	25.00
94	sneakers	94	2	15.00
95	slippers	95	2	20.00
96	sandals	96	2	9.00
97	coat	97	2	22.00
98	scarf	98	2	18.00
99	jeans	99	2	13.00
100	jeans	100	2	14.00
\.


--
-- TOC entry 2117 (class 0 OID 0)
-- Dependencies: 190
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_product_seq', 1, false);


--
-- TOC entry 1939 (class 2606 OID 24764)
-- Name: pk_id_category; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT pk_id_category PRIMARY KEY (id);


--
-- TOC entry 1941 (class 2606 OID 24766)
-- Name: pk_id_city; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT pk_id_city PRIMARY KEY (id);


--
-- TOC entry 1943 (class 2606 OID 24768)
-- Name: pk_id_country; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT pk_id_country PRIMARY KEY (id);


--
-- TOC entry 1945 (class 2606 OID 24770)
-- Name: pk_id_customer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT pk_id_customer PRIMARY KEY (id);


--
-- TOC entry 1947 (class 2606 OID 24772)
-- Name: pk_id_employee; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT pk_id_employee PRIMARY KEY (id);


--
-- TOC entry 1949 (class 2606 OID 24774)
-- Name: pk_id_order; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT pk_id_order PRIMARY KEY (id);


--
-- TOC entry 1951 (class 2606 OID 24776)
-- Name: pk_id_producer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT pk_id_producer PRIMARY KEY (id);


--
-- TOC entry 1953 (class 2606 OID 24778)
-- Name: pk_id_product; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT pk_id_product PRIMARY KEY (id);


--
-- TOC entry 1963 (class 2606 OID 24779)
-- Name: fk_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_category_id FOREIGN KEY (id_category) REFERENCES public."Category"(id);


--
-- TOC entry 1956 (class 2606 OID 24784)
-- Name: fk_chief_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_chief_id FOREIGN KEY (id_chief) REFERENCES public."Employee"(id);


--
-- TOC entry 1955 (class 2606 OID 24789)
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- TOC entry 1957 (class 2606 OID 24794)
-- Name: fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT fk_city_id FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- TOC entry 1962 (class 2606 OID 24799)
-- Name: fk_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT fk_country_id FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 1958 (class 2606 OID 24804)
-- Name: fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (id_customer) REFERENCES public."Customer"(id);


--
-- TOC entry 1959 (class 2606 OID 24809)
-- Name: fk_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (id_employee) REFERENCES public."Employee"(id);


--
-- TOC entry 1954 (class 2606 OID 24814)
-- Name: fk_id_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT fk_id_country FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 1960 (class 2606 OID 24819)
-- Name: fk_id_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_id_order FOREIGN KEY (id_order) REFERENCES public."Order"(id);


--
-- TOC entry 1964 (class 2606 OID 24824)
-- Name: fk_producer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT fk_producer_id FOREIGN KEY (id_producer) REFERENCES public."Producer"(id);


--
-- TOC entry 1961 (class 2606 OID 24829)
-- Name: fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT fk_product_id FOREIGN KEY (id_product) REFERENCES public."Product"(id);


--
-- TOC entry 2099 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-09-03 17:12:06

--
-- PostgreSQL database dump complete
--

