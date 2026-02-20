--
-- PostgreSQL database dump
--

\restrict 8tr74eayby9tVv3yqlAh8ZfaevwglABMReQgdIHKFcvfQ9NhtLJiiU59d4bxXd0

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-02-20 23:45:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 221 (class 1259 OID 16396)
-- Name: external_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.external_accounts (
    account_id uuid NOT NULL,
    applicant_id uuid,
    platform character varying(50),
    profile_url character varying(255),
    username character varying(100),
    is_verified boolean,
    connected_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.external_accounts OWNER TO postgres;

--
-- TOC entry 5080 (class 0 OID 16396)
-- Dependencies: 221
-- Data for Name: external_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.external_accounts (account_id, applicant_id, platform, profile_url, username, is_verified, connected_at) FROM stdin;
782686fa-1d9e-426f-9f81-5af28caa3e36	22222222-2222-2222-2222-222222222222	github	https://github.com/your_github_username	riyabagoriya	t	2026-02-19 13:48:49.313365
\.


--
-- TOC entry 4931 (class 2606 OID 16402)
-- Name: external_accounts external_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_accounts
    ADD CONSTRAINT external_accounts_pkey PRIMARY KEY (account_id);


--
-- TOC entry 4932 (class 2606 OID 16403)
-- Name: external_accounts external_accounts_applicant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_accounts
    ADD CONSTRAINT external_accounts_applicant_id_fkey FOREIGN KEY (applicant_id) REFERENCES public.users(user_id);


-- Completed on 2026-02-20 23:45:22

--
-- PostgreSQL database dump complete
--

\unrestrict 8tr74eayby9tVv3yqlAh8ZfaevwglABMReQgdIHKFcvfQ9NhtLJiiU59d4bxXd0

