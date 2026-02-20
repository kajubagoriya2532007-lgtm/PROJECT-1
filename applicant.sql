--
-- PostgreSQL database dump
--

\restrict xQUb2F7GDFDq1J5EdxePB3qvX3XhEc74gV1TOpSKQuFiwMCfoh5QfJq2t3oXLQc

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-02-20 23:52:12

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
-- TOC entry 228 (class 1259 OID 16505)
-- Name: applicant_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_skills (
    applicant_id uuid NOT NULL,
    skill_id integer NOT NULL,
    proficiency_level integer,
    years_of_experience double precision
);


ALTER TABLE public.applicant_skills OWNER TO postgres;

--
-- TOC entry 5080 (class 0 OID 16505)
-- Dependencies: 228
-- Data for Name: applicant_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_skills (applicant_id, skill_id, proficiency_level, years_of_experience) FROM stdin;
\.


--
-- TOC entry 4930 (class 2606 OID 16511)
-- Name: applicant_skills applicant_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_skills
    ADD CONSTRAINT applicant_skills_pkey PRIMARY KEY (applicant_id, skill_id);


--
-- TOC entry 4931 (class 2606 OID 16512)
-- Name: applicant_skills applicant_skills_applicant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_skills
    ADD CONSTRAINT applicant_skills_applicant_id_fkey FOREIGN KEY (applicant_id) REFERENCES public.users(user_id);


--
-- TOC entry 4932 (class 2606 OID 16517)
-- Name: applicant_skills applicant_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_skills
    ADD CONSTRAINT applicant_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(skill_id);


-- Completed on 2026-02-20 23:52:12

--
-- PostgreSQL database dump complete
--

\unrestrict xQUb2F7GDFDq1J5EdxePB3qvX3XhEc74gV1TOpSKQuFiwMCfoh5QfJq2t3oXLQc

