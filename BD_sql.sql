--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-08-15 11:01:30 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "bd_10.08.2018";
--
-- TOC entry 2195 (class 1262 OID 16393)
-- Name: bd_10.08.2018; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "bd_10.08.2018" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE "bd_10.08.2018" OWNER TO postgres;

\connect "bd_10.08.2018"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 16412)
-- Name: City; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."City" (
    id integer NOT NULL,
    name_city character varying(15),
    id_country integer NOT NULL
);


ALTER TABLE public."City" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16432)
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name_country character varying(15)
);


ALTER TABLE public."Country" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16422)
-- Name: Customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Customer" (
    id integer NOT NULL,
    f_name_customer integer,
    l_name_customer character varying(15),
    id_city integer
);


ALTER TABLE public."Customer" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16397)
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employee" (
    id integer NOT NULL,
    first_name character varying(15),
    last_name character varying(15),
    bearsday date,
    hire_date date,
    id_chief integer,
    notes character varying(15)
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16539)
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order" (
    id integer NOT NULL,
    id_customer integer NOT NULL,
    id_employee integer NOT NULL,
    date date
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16499)
-- Name: Order_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order_product" (
    id_order integer NOT NULL,
    id_product integer NOT NULL,
    unit_price money,
    count money
);


ALTER TABLE public."Order_product" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16459)
-- Name: Producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Producer" (
    id integer NOT NULL,
    name_producer character varying(25),
    id_country integer NOT NULL
);


ALTER TABLE public."Producer" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16454)
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    name_product character varying(25),
    price money,
    id_producer integer NOT NULL
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 16412)
-- Dependencies: 182
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2185 (class 0 OID 16432)
-- Dependencies: 184
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2184 (class 0 OID 16422)
-- Dependencies: 183
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2182 (class 0 OID 16397)
-- Dependencies: 181
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2189 (class 0 OID 16539)
-- Dependencies: 188
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2188 (class 0 OID 16499)
-- Dependencies: 187
-- Data for Name: Order_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2187 (class 0 OID 16459)
-- Dependencies: 186
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2186 (class 0 OID 16454)
-- Dependencies: 185
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2048 (class 2606 OID 16416)
-- Name: City_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_pkey" PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 16436)
-- Name: Country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY (id);


--
-- TOC entry 2050 (class 2606 OID 16443)
-- Name: Customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 16401)
-- Name: Employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY (id);


--
-- TOC entry 2056 (class 2606 OID 16463)
-- Name: Producer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT "Producer_pkey" PRIMARY KEY (id);


--
-- TOC entry 2054 (class 2606 OID 16458)
-- Name: Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- TOC entry 2058 (class 2606 OID 16543)
-- Name: order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2060 (class 2606 OID 16517)
-- Name: City_id_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_id_country_fkey" FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 2061 (class 2606 OID 16522)
-- Name: Customer_id_city_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_id_city_fkey" FOREIGN KEY (id_city) REFERENCES public."City"(id);


--
-- TOC entry 2059 (class 2606 OID 16512)
-- Name: Employee_id_chief_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "Employee_id_chief_fkey" FOREIGN KEY (id_chief) REFERENCES public."Employee"(id);


--
-- TOC entry 2065 (class 2606 OID 16554)
-- Name: Order_product_id_order_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT "Order_product_id_order_fkey" FOREIGN KEY (id_order) REFERENCES public."Order"(id);


--
-- TOC entry 2064 (class 2606 OID 16507)
-- Name: Order_product_id_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_product"
    ADD CONSTRAINT "Order_product_id_product_fkey" FOREIGN KEY (id_product) REFERENCES public."Product"(id);


--
-- TOC entry 2063 (class 2606 OID 16464)
-- Name: Producer_id_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Producer"
    ADD CONSTRAINT "Producer_id_country_fkey" FOREIGN KEY (id_country) REFERENCES public."Country"(id);


--
-- TOC entry 2062 (class 2606 OID 16469)
-- Name: Product_id_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_id_producer_fkey" FOREIGN KEY (id_producer) REFERENCES public."Producer"(id);


--
-- TOC entry 2066 (class 2606 OID 16544)
-- Name: order_id_customer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT order_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public."Customer"(id);


--
-- TOC entry 2067 (class 2606 OID 16549)
-- Name: order_id_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT order_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES public."Employee"(id);


--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-08-15 11:01:30 EEST

--
-- PostgreSQL database dump complete
--

