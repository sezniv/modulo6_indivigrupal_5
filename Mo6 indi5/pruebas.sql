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
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignatura (
    id bigint NOT NULL,
    nombre character varying(15),
    descripcion character varying(250),
    departamento_id integer
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asignatura_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignatura_id_seq OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asignatura_id_seq OWNED BY public.asignatura.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


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
-- Name: django_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO root;

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
-- Name: asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public.asignatura_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


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
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (id, nombre, descripcion, departamento_id) FROM stdin;
1	policarpio	El Walter sigue siendo pesaito	1
2	paralelepipedo	El Walter sigue siendo pesaito	2
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add departamento	7	add_departamento
26	Can change departamento	7	change_departamento
27	Can delete departamento	7	delete_departamento
28	Can view departamento	7	view_departamento
29	Can add profesor	8	add_profesor
30	Can change profesor	8	change_profesor
31	Can delete profesor	8	delete_profesor
32	Can view profesor	8	view_profesor
33	Can add asignatura	9	add_asignatura
34	Can change asignatura	9	change_asignatura
35	Can delete asignatura	9	delete_asignatura
36	Can view asignatura	9	view_asignatura
37	Can add transportista	10	add_transportista
38	Can change transportista	10	change_transportista
39	Can delete transportista	10	delete_transportista
40	Can view transportista	10	view_transportista
41	Can add curso	11	add_curso
42	Can change curso	11	change_curso
43	Can delete curso	11	delete_curso
44	Can view curso	11	view_curso
45	Can add alumno	12	add_alumno
46	Can change alumno	12	change_alumno
47	Can delete alumno	12	delete_alumno
48	Can view alumno	12	view_alumno
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	migrate_01	departamento
8	migrate_01	profesor
9	migrate_01	asignatura
10	migrate_01	transportista
11	migrate_01	curso
12	migrate_01	alumno
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-13 18:52:44.755847-03
2	auth	0001_initial	2021-01-13 18:52:44.842863-03
3	admin	0001_initial	2021-01-13 18:52:44.951869-03
4	admin	0002_logentry_remove_auto_add	2021-01-13 18:52:44.980872-03
5	admin	0003_logentry_add_action_flag_choices	2021-01-13 18:52:44.988875-03
6	contenttypes	0002_remove_content_type_name	2021-01-13 18:52:45.012877-03
7	auth	0002_alter_permission_name_max_length	2021-01-13 18:52:45.023875-03
8	auth	0003_alter_user_email_max_length	2021-01-13 18:52:45.034877-03
9	auth	0004_alter_user_username_opts	2021-01-13 18:52:45.042877-03
10	auth	0005_alter_user_last_login_null	2021-01-13 18:52:45.05388-03
11	auth	0006_require_contenttypes_0002	2021-01-13 18:52:45.056878-03
12	auth	0007_alter_validators_add_error_messages	2021-01-13 18:52:45.068879-03
13	auth	0008_alter_user_username_max_length	2021-01-13 18:52:45.090882-03
14	auth	0009_alter_user_last_name_max_length	2021-01-13 18:52:45.103883-03
15	auth	0010_alter_group_name_max_length	2021-01-13 18:52:45.114882-03
16	auth	0011_update_proxy_permissions	2021-01-13 18:52:45.123882-03
17	auth	0012_alter_user_first_name_max_length	2021-01-13 18:52:45.138886-03
18	migrate_01	0001_initial	2021-01-13 18:52:45.178891-03
19	sessions	0001_initial	2021-01-13 18:52:45.209895-03
20	migrate_01	0002_auto_20210113_1939	2021-01-13 19:39:58.260125-03
21	migrate_01	0003_auto_20210114_1931	2021-01-14 19:31:42.335523-03
22	migrate_01	0004_auto_20210114_2005	2021-01-14 20:05:27.787848-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: migrate_01_alumno; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_alumno (nombre, "Edad", run, curso_id_id, transportista_id_id) FROM stdin;
Guido	26	18543499-0	1	3
\.


--
-- Data for Name: migrate_01_asignatura; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_asignatura (id, nombre, descripcion, departamento_id_id, profesor_id_id) FROM stdin;
2	Walter	walter es muy pesaito	\N	\N
3	Walter	walter es muy pesaito	\N	\N
4	Walter	walter es muy pesaito	\N	\N
5	matematicas	la pasaras bien	10	4
6	Walter	walter es muy pesaito	\N	\N
\.


--
-- Data for Name: migrate_01_curso; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_curso (id, nombre, asignatura_id_id, profesor_id_id) FROM stdin;
1	octavo A	5	4
\.


--
-- Data for Name: migrate_01_departamento; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_departamento (id, nombre) FROM stdin;
1	filosofia
2	filosofia
3	filosofia
4	filosofia
5	filosofia
6	filosofia
7	departamento1
8	filosofia
9	filosofia
10	departamento1
11	filosofia
\.


--
-- Data for Name: migrate_01_profesor; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_profesor (id, nombre, apellido, escuela, fecha_de_contratacion, sueldo) FROM stdin;
1	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
2	Claudio	Caniullan	Manuel de salas	2017-02-28	1100000
3	Walter viejo	pesao	miguel de cervantes	2020-10-01	10
4	Walter viejo	pesao	miguel de cervantes	2020-10-01	10
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
\.


--
-- Data for Name: migrate_01_transportista; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrate_01_transportista (id, nombre, patente) FROM stdin;
1	Jonathan	fjzk46
2	Tia Fran	okfj58
3	Tia Fran	okfj58
\.


--
-- Name: asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignatura_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_asignatura_id_seq', 6, true);


--
-- Name: migrate_01_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_curso_id_seq', 1, true);


--
-- Name: migrate_01_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_departamento_id_seq', 11, true);


--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_profesor_id_seq', 17, true);


--
-- Name: migrate_01_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrate_01_transportista_id_seq', 3, true);


--
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


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
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


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
-- Name: asignatura asignatura_departamento_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_departamento_id_fkey FOREIGN KEY (departamento_id) REFERENCES public.migrate_01_departamento(id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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

