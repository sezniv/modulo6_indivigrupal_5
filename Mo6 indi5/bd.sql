--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: migrate_01_alumno; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_alumno (
    nombre character varying(35) NOT NULL,
    "Edad" integer NOT NULL,
    run character varying(10) NOT NULL,
    curso_id_id integer NOT NULL,
    transportista_id_id integer NOT NULL
);


ALTER TABLE public.migrate_01_alumno OWNER TO root;

--
-- Name: migrate_01_asignatura; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_asignatura (
    id integer NOT NULL,
    nombre character varying(25) NOT NULL,
    descripcion character varying(250) NOT NULL,
    departamento_id_id integer,
    profesor_id_id integer
);


ALTER TABLE public.migrate_01_asignatura OWNER TO root;

--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrate_01_asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_asignatura_id_seq OWNER TO root;

--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrate_01_asignatura_id_seq OWNED BY public.migrate_01_asignatura.id;


--
-- Name: migrate_01_curso; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_curso (
    id integer NOT NULL,
    nombre character varying(40) NOT NULL,
    asignatura_id_id integer NOT NULL,
    profesor_id_id integer
);


ALTER TABLE public.migrate_01_curso OWNER TO root;

--
-- Name: migrate_01_curso_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrate_01_curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_curso_id_seq OWNER TO root;

--
-- Name: migrate_01_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrate_01_curso_id_seq OWNED BY public.migrate_01_curso.id;


--
-- Name: migrate_01_departamento; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_departamento (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL
);


ALTER TABLE public.migrate_01_departamento OWNER TO root;

--
-- Name: migrate_01_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrate_01_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_departamento_id_seq OWNER TO root;

--
-- Name: migrate_01_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrate_01_departamento_id_seq OWNED BY public.migrate_01_departamento.id;


--
-- Name: migrate_01_profesor; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_profesor (
    id integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(25) NOT NULL,
    escuela character varying(30) NOT NULL,
    fecha_de_contratacion date NOT NULL,
    sueldo integer NOT NULL
);


ALTER TABLE public.migrate_01_profesor OWNER TO root;

--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrate_01_profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_profesor_id_seq OWNER TO root;

--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrate_01_profesor_id_seq OWNED BY public.migrate_01_profesor.id;


--
-- Name: migrate_01_transportista; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrate_01_transportista (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    patente character varying(6) NOT NULL
);


ALTER TABLE public.migrate_01_transportista OWNER TO root;

--
-- Name: migrate_01_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrate_01_transportista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_transportista_id_seq OWNER TO root;

--
-- Name: migrate_01_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrate_01_transportista_id_seq OWNED BY public.migrate_01_transportista.id;


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: migrate_01_asignatura id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_asignatura ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_asignatura_id_seq'::regclass);


--
-- Name: migrate_01_curso id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_curso ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_curso_id_seq'::regclass);


--
-- Name: migrate_01_departamento id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_departamento ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_departamento_id_seq'::regclass);


--
-- Name: migrate_01_profesor id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_profesor ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_profesor_id_seq'::regclass);


--
-- Name: migrate_01_transportista id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_transportista ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_transportista_id_seq'::regclass);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	migrate_01	0001_initial	2021-01-18 14:08:46.161879-03
2	migrate_01	0002_auto_20210113_1939	2021-01-18 14:08:46.193125-03
3	migrate_01	0003_auto_20210114_1931	2021-01-18 14:08:46.208738-03
4	migrate_01	0004_auto_20210114_2005	2021-01-18 14:08:46.239987-03
\.


--
-- Data for Name: migrate_01_alumno; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_alumno (nombre, "Edad", run, curso_id_id, transportista_id_id) FROM stdin;
SEBASTIAN	29	17920757-5	1	9
\.


--
-- Data for Name: migrate_01_asignatura; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_asignatura (id, nombre, descripcion, departamento_id_id, profesor_id_id) FROM stdin;
4	Matematicas	Solo Numeros	4	28
7	sebastiaan gacitua molina	el mejor	1	2
8	sebastiaan gacitua molina	el mejor	1	1
9	sebastiaan gacitua molina	el mejor	1	1
10	sebastiaan gacitua molina	el mejor	1	1
11	sebastiaan gacitua molina	el mejor	1	1
12	sebastiaan gacitua molina	el mejor	1	1
13	sebastiaan gacitua molina	el mejor	1	1
14	sebastiaan gacitua molina	el mejor	1	1
\.


--
-- Data for Name: migrate_01_curso; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_curso (id, nombre, asignatura_id_id, profesor_id_id) FROM stdin;
1	Los del A	4	28
\.


--
-- Data for Name: migrate_01_departamento; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_departamento (id, nombre) FROM stdin;
1	filosofia
2	filosofia
3	filosofia
4	Religion
5	filosofia
6	filosofia
\.


--
-- Data for Name: migrate_01_profesor; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_profesor (id, nombre, apellido, escuela, fecha_de_contratacion, sueldo) FROM stdin;
1	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
2	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
3	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
4	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
5	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
6	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
7	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
8	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
9	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
10	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
11	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
12	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
13	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
14	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
15	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
16	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
17	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
18	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
19	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
20	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
21	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
22	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
23	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
24	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
25	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
26	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
27	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
28	Sebastian	Gacitua	Carolina LLona	2017-02-28	600000
\.


--
-- Data for Name: migrate_01_transportista; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_transportista (id, nombre, patente) FROM stdin;
1	Claudio	AZDB12
2	Claudio	AZDB12
3	Claudio	AZDB12
4	Claudio	AZDB12
5	Claudio	AZDB12
6	Claudio	AZDB12
7	Claudio	AZDB12
8	Claudio	AZDB12
9	Sebastian	ABCD23
10	Claudio	AZDB12
11	Claudio	AZDB12
12	Claudio	AZDB12
13	Claudio	AZDB12
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 4, true);


--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_asignatura_id_seq', 14, true);


--
-- Name: migrate_01_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_curso_id_seq', 1, true);


--
-- Name: migrate_01_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_departamento_id_seq', 6, true);


--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_profesor_id_seq', 28, true);


--
-- Name: migrate_01_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_transportista_id_seq', 13, true);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_alumno migrate_01_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_alumno
    ADD CONSTRAINT migrate_01_alumno_pkey PRIMARY KEY (run);


--
-- Name: migrate_01_asignatura migrate_01_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_asignatura
    ADD CONSTRAINT migrate_01_asignatura_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_curso migrate_01_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_curso
    ADD CONSTRAINT migrate_01_curso_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_departamento migrate_01_departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_departamento
    ADD CONSTRAINT migrate_01_departamento_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_profesor migrate_01_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_profesor
    ADD CONSTRAINT migrate_01_profesor_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_transportista migrate_01_transportista_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_transportista
    ADD CONSTRAINT migrate_01_transportista_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_alumno_curso_id_id_a3047a13; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_alumno_curso_id_id_a3047a13 ON public.migrate_01_alumno USING btree (curso_id_id);


--
-- Name: migrate_01_alumno_run_74d581b5_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_alumno_run_74d581b5_like ON public.migrate_01_alumno USING btree (run varchar_pattern_ops);


--
-- Name: migrate_01_alumno_transportista_id_id_8c00ef48; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_alumno_transportista_id_id_8c00ef48 ON public.migrate_01_alumno USING btree (transportista_id_id);


--
-- Name: migrate_01_asignatura_departamento_id_id_75bed1c2; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_asignatura_departamento_id_id_75bed1c2 ON public.migrate_01_asignatura USING btree (departamento_id_id);


--
-- Name: migrate_01_asignatura_profesor_id_id_9476c752; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_asignatura_profesor_id_id_9476c752 ON public.migrate_01_asignatura USING btree (profesor_id_id);


--
-- Name: migrate_01_curso_asignatura_id_id_56485b49; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_curso_asignatura_id_id_56485b49 ON public.migrate_01_curso USING btree (asignatura_id_id);


--
-- Name: migrate_01_curso_profesor_id_id_27089556; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX migrate_01_curso_profesor_id_id_27089556 ON public.migrate_01_curso USING btree (profesor_id_id);


--
-- Name: migrate_01_alumno migrate_01_alumno_curso_id_id_a3047a13_fk_migrate_01_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_alumno
    ADD CONSTRAINT migrate_01_alumno_curso_id_id_a3047a13_fk_migrate_01_curso_id FOREIGN KEY (curso_id_id) REFERENCES public.migrate_01_curso(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: migrate_01_alumno migrate_01_alumno_transportista_id_id_8c00ef48_fk_migrate_0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_alumno
    ADD CONSTRAINT migrate_01_alumno_transportista_id_id_8c00ef48_fk_migrate_0 FOREIGN KEY (transportista_id_id) REFERENCES public.migrate_01_transportista(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: migrate_01_asignatura migrate_01_asignatur_departamento_id_id_75bed1c2_fk_migrate_0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_asignatura
    ADD CONSTRAINT migrate_01_asignatur_departamento_id_id_75bed1c2_fk_migrate_0 FOREIGN KEY (departamento_id_id) REFERENCES public.migrate_01_departamento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: migrate_01_asignatura migrate_01_asignatur_profesor_id_id_9476c752_fk_migrate_0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_asignatura
    ADD CONSTRAINT migrate_01_asignatur_profesor_id_id_9476c752_fk_migrate_0 FOREIGN KEY (profesor_id_id) REFERENCES public.migrate_01_profesor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: migrate_01_curso migrate_01_curso_asignatura_id_id_56485b49_fk_migrate_0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_curso
    ADD CONSTRAINT migrate_01_curso_asignatura_id_id_56485b49_fk_migrate_0 FOREIGN KEY (asignatura_id_id) REFERENCES public.migrate_01_asignatura(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: migrate_01_curso migrate_01_curso_profesor_id_id_27089556_fk_migrate_0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrate_01_curso
    ADD CONSTRAINT migrate_01_curso_profesor_id_id_27089556_fk_migrate_0 FOREIGN KEY (profesor_id_id) REFERENCES public.migrate_01_profesor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

