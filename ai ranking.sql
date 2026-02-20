--
-- PostgreSQL database dump
--

\restrict vCHH75VRWSGL3bvciHeffDqtn8rMK7UhWVKjvR1Qv4Yf9qgQ6Cb4mertOdU5LHO

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-02-21 00:11:00

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
-- TOC entry 232 (class 1259 OID 16564)
-- Name: ai_ranking_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ai_ranking_scores (
    application_id uuid NOT NULL,
    overall_score double precision,
    last_updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.ai_ranking_scores OWNER TO postgres;

--
-- TOC entry 5080 (class 0 OID 16564)
-- Dependencies: 232
-- Data for Name: ai_ranking_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ai_ranking_scores (application_id, overall_score, last_updated) FROM stdin;
\.


--
-- TOC entry 4931 (class 2606 OID 16570)
-- Name: ai_ranking_scores ai_ranking_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ai_ranking_scores
    ADD CONSTRAINT ai_ranking_scores_pkey PRIMARY KEY (application_id);


--
-- TOC entry 4932 (class 2606 OID 16571)
-- Name: ai_ranking_scores ai_ranking_scores_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ai_ranking_scores
    ADD CONSTRAINT ai_ranking_scores_application_id_fkey FOREIGN KEY (application_id) REFERENCES public.applications(application_id);


-- Completed on 2026-02-21 00:11:01

--
-- PostgreSQL database dump complete
--

\unrestrict vCHH75VRWSGL3bvciHeffDqtn8rMK7UhWVKjvR1Qv4Yf9qgQ6Cb4mertOdU5LHO

