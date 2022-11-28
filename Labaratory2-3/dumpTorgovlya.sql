--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: order_sup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_sup (
    id_order integer NOT NULL,
    date_order date,
    shop_id_shop integer NOT NULL,
    sup_id_sup integer NOT NULL,
    name_prod character varying(75),
    cost_prod integer,
    quantity integer NOT NULL
);


ALTER TABLE public.order_sup OWNER TO postgres;

--
-- Name: order_sup_id_order_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_sup_id_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_sup_id_order_seq OWNER TO postgres;

--
-- Name: order_sup_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_sup_id_order_seq OWNED BY public.order_sup.id_order;


--
-- Name: org_has_sup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.org_has_sup (
    sup_id_sup integer NOT NULL,
    organization_fk integer NOT NULL
);


ALTER TABLE public.org_has_sup OWNER TO postgres;

--
-- Name: organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization (
    id_organization integer NOT NULL,
    name_org character varying(100) NOT NULL,
    address_org character varying(150) NOT NULL,
    fiodirector character varying(100) NOT NULL,
    tax_number character varying(75) NOT NULL
);


ALTER TABLE public.organization OWNER TO postgres;

--
-- Name: organization_id_organization_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organization_id_organization_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_id_organization_seq OWNER TO postgres;

--
-- Name: organization_id_organization_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organization_id_organization_seq OWNED BY public.organization.id_organization;


--
-- Name: seller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seller (
    id_seller integer NOT NULL,
    surname_seller character varying(50) NOT NULL,
    name_seller character varying(50) NOT NULL,
    post character varying(50),
    birthday date,
    male character varying(50),
    address character varying(100),
    city character varying(50)
);


ALTER TABLE public.seller OWNER TO postgres;

--
-- Name: seller_id_seller_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seller_id_seller_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seller_id_seller_seq OWNER TO postgres;

--
-- Name: seller_id_seller_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seller_id_seller_seq OWNED BY public.seller.id_seller;


--
-- Name: shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop (
    id_shop integer NOT NULL,
    manager character varying(50),
    address character varying(100),
    organization_fk integer NOT NULL,
    type_shop character varying(75) NOT NULL,
    name_shop character varying(75) NOT NULL
);


ALTER TABLE public.shop OWNER TO postgres;

--
-- Name: shop_id_shop_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_id_shop_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_id_shop_seq OWNER TO postgres;

--
-- Name: shop_id_shop_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_id_shop_seq OWNED BY public.shop.id_shop;


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id_sup integer NOT NULL,
    name_sup character varying(50) NOT NULL,
    type_deyat character varying(75),
    city character varying(50),
    country character varying(50),
    address_sup character varying(150)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: supplier_id_sup_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_id_sup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_id_sup_seq OWNER TO postgres;

--
-- Name: supplier_id_sup_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_id_sup_seq OWNED BY public.supplier.id_sup;


--
-- Name: order_sup id_order; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sup ALTER COLUMN id_order SET DEFAULT nextval('public.order_sup_id_order_seq'::regclass);


--
-- Name: organization id_organization; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization ALTER COLUMN id_organization SET DEFAULT nextval('public.organization_id_organization_seq'::regclass);


--
-- Name: seller id_seller; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seller ALTER COLUMN id_seller SET DEFAULT nextval('public.seller_id_seller_seq'::regclass);


--
-- Name: shop id_shop; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop ALTER COLUMN id_shop SET DEFAULT nextval('public.shop_id_shop_seq'::regclass);


--
-- Name: supplier id_sup; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN id_sup SET DEFAULT nextval('public.supplier_id_sup_seq'::regclass);


--
-- Data for Name: order_sup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_sup (id_order, date_order, shop_id_shop, sup_id_sup, name_prod, cost_prod, quantity) FROM stdin;
\.


--
-- Data for Name: org_has_sup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.org_has_sup (sup_id_sup, organization_fk) FROM stdin;
\.


--
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organization (id_organization, name_org, address_org, fiodirector, tax_number) FROM stdin;
\.


--
-- Data for Name: seller; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seller (id_seller, surname_seller, name_seller, post, birthday, male, address, city) FROM stdin;
\.


--
-- Data for Name: shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop (id_shop, manager, address, organization_fk, type_shop, name_shop) FROM stdin;
\.


--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id_sup, name_sup, type_deyat, city, country, address_sup) FROM stdin;
\.


--
-- Name: order_sup_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_sup_id_order_seq', 1, false);


--
-- Name: organization_id_organization_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organization_id_organization_seq', 1, false);


--
-- Name: seller_id_seller_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seller_id_seller_seq', 1, false);


--
-- Name: shop_id_shop_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_id_shop_seq', 1, false);


--
-- Name: supplier_id_sup_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_id_sup_seq', 1, false);


--
-- Name: order_sup order_sup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sup
    ADD CONSTRAINT order_sup_pkey PRIMARY KEY (id_order);


--
-- Name: organization organization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id_organization);


--
-- Name: seller seller_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (id_seller);


--
-- Name: shop shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_pkey PRIMARY KEY (id_shop);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_sup);


--
-- Name: order_sup fk_order_sup_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sup
    ADD CONSTRAINT fk_order_sup_shop FOREIGN KEY (shop_id_shop) REFERENCES public.shop(id_shop);


--
-- Name: org_has_sup fk_organization; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.org_has_sup
    ADD CONSTRAINT fk_organization FOREIGN KEY (organization_fk) REFERENCES public.organization(id_organization);


--
-- Name: shop fk_organization_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop
    ADD CONSTRAINT fk_organization_shop FOREIGN KEY (organization_fk) REFERENCES public.organization(id_organization);


--
-- Name: org_has_sup fk_sup_id_sup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.org_has_sup
    ADD CONSTRAINT fk_sup_id_sup FOREIGN KEY (sup_id_sup) REFERENCES public.supplier(id_sup);


--
-- Name: order_sup fk_sup_id_sup_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sup
    ADD CONSTRAINT fk_sup_id_sup_order FOREIGN KEY (sup_id_sup) REFERENCES public.supplier(id_sup);


--
-- Name: seller seller_id_seller_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_id_seller_fkey FOREIGN KEY (id_seller) REFERENCES public.shop(id_shop);


--
-- PostgreSQL database dump complete
--

