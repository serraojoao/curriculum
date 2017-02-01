--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO joaoserrao;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO joaoserrao;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO joaoserrao;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO joaoserrao;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO joaoserrao;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO joaoserrao;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO joaoserrao;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO joaoserrao;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO joaoserrao;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO joaoserrao;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO joaoserrao;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO joaoserrao;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: commons_category; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE commons_category (
    id integer NOT NULL,
    category_text character varying(200) NOT NULL
);


ALTER TABLE commons_category OWNER TO joaoserrao;

--
-- Name: commons_category_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE commons_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commons_category_id_seq OWNER TO joaoserrao;

--
-- Name: commons_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE commons_category_id_seq OWNED BY commons_category.id;


--
-- Name: commons_contact; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE commons_contact (
    id integer NOT NULL,
    message text NOT NULL,
    name character varying(200) NOT NULL,
    sender character varying(254) NOT NULL
);


ALTER TABLE commons_contact OWNER TO joaoserrao;

--
-- Name: commons_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE commons_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commons_contact_id_seq OWNER TO joaoserrao;

--
-- Name: commons_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE commons_contact_id_seq OWNED BY commons_contact.id;


--
-- Name: commons_job; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE commons_job (
    id integer NOT NULL,
    job_title character varying(200) NOT NULL,
    location character varying(200) NOT NULL,
    end_date date NOT NULL,
    init_date date NOT NULL
);


ALTER TABLE commons_job OWNER TO joaoserrao;

--
-- Name: commons_job_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE commons_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commons_job_id_seq OWNER TO joaoserrao;

--
-- Name: commons_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE commons_job_id_seq OWNED BY commons_job.id;


--
-- Name: commons_skill; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE commons_skill (
    id integer NOT NULL,
    skill_text character varying(200) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE commons_skill OWNER TO joaoserrao;

--
-- Name: commons_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE commons_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commons_skill_id_seq OWNER TO joaoserrao;

--
-- Name: commons_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE commons_skill_id_seq OWNED BY commons_skill.id;


--
-- Name: commons_tasks; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE commons_tasks (
    id integer NOT NULL,
    task_text character varying(200) NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE commons_tasks OWNER TO joaoserrao;

--
-- Name: commons_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE commons_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commons_tasks_id_seq OWNER TO joaoserrao;

--
-- Name: commons_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE commons_tasks_id_seq OWNED BY commons_tasks.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO joaoserrao;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO joaoserrao;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO joaoserrao;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO joaoserrao;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO joaoserrao;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO joaoserrao;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO joaoserrao;

--
-- Name: polls_choice; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE polls_choice (
    id integer NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE polls_choice OWNER TO joaoserrao;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE polls_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE polls_choice_id_seq OWNER TO joaoserrao;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE polls_choice_id_seq OWNED BY polls_choice.id;


--
-- Name: polls_question; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE polls_question (
    id integer NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);


ALTER TABLE polls_question OWNER TO joaoserrao;

--
-- Name: polls_question_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE polls_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE polls_question_id_seq OWNER TO joaoserrao;

--
-- Name: polls_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE polls_question_id_seq OWNED BY polls_question.id;


--
-- Name: render_savedembeds; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE render_savedembeds (
    id integer NOT NULL,
    type character varying(15) NOT NULL,
    provider_url character varying(200) NOT NULL,
    provider_name character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    html text NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    thumbnail_url character varying(200) NOT NULL,
    thumbnail_width integer NOT NULL,
    thumbnail_height integer NOT NULL,
    author_url character varying(200) NOT NULL,
    author_name character varying(100) NOT NULL,
    version numeric(4,2) NOT NULL
);


ALTER TABLE render_savedembeds OWNER TO joaoserrao;

--
-- Name: render_savedembeds_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE render_savedembeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE render_savedembeds_id_seq OWNER TO joaoserrao;

--
-- Name: render_savedembeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE render_savedembeds_id_seq OWNED BY render_savedembeds.id;


--
-- Name: skills_category; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE skills_category (
    id integer NOT NULL,
    category_text character varying(200) NOT NULL
);


ALTER TABLE skills_category OWNER TO joaoserrao;

--
-- Name: skills_category_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE skills_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_category_id_seq OWNER TO joaoserrao;

--
-- Name: skills_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE skills_category_id_seq OWNED BY skills_category.id;


--
-- Name: skills_skill; Type: TABLE; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE TABLE skills_skill (
    id integer NOT NULL,
    skill_text character varying(200) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE skills_skill OWNER TO joaoserrao;

--
-- Name: skills_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: joaoserrao
--

CREATE SEQUENCE skills_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_skill_id_seq OWNER TO joaoserrao;

--
-- Name: skills_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joaoserrao
--

ALTER SEQUENCE skills_skill_id_seq OWNED BY skills_skill.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_category ALTER COLUMN id SET DEFAULT nextval('commons_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_contact ALTER COLUMN id SET DEFAULT nextval('commons_contact_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_job ALTER COLUMN id SET DEFAULT nextval('commons_job_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_skill ALTER COLUMN id SET DEFAULT nextval('commons_skill_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_tasks ALTER COLUMN id SET DEFAULT nextval('commons_tasks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY polls_choice ALTER COLUMN id SET DEFAULT nextval('polls_choice_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY polls_question ALTER COLUMN id SET DEFAULT nextval('polls_question_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY render_savedembeds ALTER COLUMN id SET DEFAULT nextval('render_savedembeds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY skills_category ALTER COLUMN id SET DEFAULT nextval('skills_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY skills_skill ALTER COLUMN id SET DEFAULT nextval('skills_skill_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add question	7	add_question
20	Can change question	7	change_question
21	Can delete question	7	delete_question
22	Can add choice	8	add_choice
23	Can change choice	8	change_choice
24	Can delete choice	8	delete_choice
25	Can add category	9	add_category
26	Can change category	9	change_category
27	Can delete category	9	delete_category
28	Can add skill	10	add_skill
29	Can change skill	10	change_skill
30	Can delete skill	10	delete_skill
40	Can add saved embeds	14	add_savedembeds
41	Can change saved embeds	14	change_savedembeds
42	Can delete saved embeds	14	delete_savedembeds
43	Can add category	15	add_category
44	Can change category	15	change_category
45	Can delete category	15	delete_category
46	Can add skill	16	add_skill
47	Can change skill	16	change_skill
48	Can delete skill	16	delete_skill
49	Can add job	17	add_job
50	Can change job	17	change_job
51	Can delete job	17	delete_job
52	Can add tasks	18	add_tasks
53	Can change tasks	18	change_tasks
54	Can delete tasks	18	delete_tasks
55	Can add contact	19	add_contact
56	Can change contact	19	change_contact
57	Can delete contact	19	delete_contact
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_permission_id_seq', 57, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$24000$1JbZMSSS9if3$JDa/l+Dv1T7xKG1G/IyFjdQG0gmBiAgUee/NY5GC/t0=	2016-11-15 21:29:05.626099+01	t	joaoserrao				t	t	2016-09-26 20:32:00.917611+02
1	pbkdf2_sha256$24000$Kzyw1JD2Tg5G$PNQQsT5+0SSKrgPX+67FOJdtY6ToK1Fekl7Kf3P/uDg=	2017-01-30 21:37:52.071327+01	t	joao			joao@example.com	t	t	2015-11-24 22:58:18.738+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: commons_category; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY commons_category (id, category_text) FROM stdin;
10	Other programming languages (academic level)
11	Used tools (academic level)
1	Programming language
2	Scripting
3	Frameworks
4	Databases
7	OS
6	Application Servers
5	Web Technologies
8	Code Versioning
9	Build/Continuous Integration tools
\.


--
-- Name: commons_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('commons_category_id_seq', 11, true);


--
-- Data for Name: commons_contact; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY commons_contact (id, message, name, sender) FROM stdin;
\.


--
-- Name: commons_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('commons_contact_id_seq', 23, true);


--
-- Data for Name: commons_job; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY commons_job (id, job_title, location, end_date, init_date) FROM stdin;
1	Database/System Administrator	Amsterdam, NL	2012-08-15	2012-08-15
\.


--
-- Name: commons_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('commons_job_id_seq', 1, true);


--
-- Data for Name: commons_skill; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY commons_skill (id, skill_text, category_id) FROM stdin;
1	Java	1
2	Mumps	1
3	PSL	1
4	C	1
5	Shell Script	2
6	Python	2
7	Struts	3
8	MVC	3
9	Django	3
10	GT.M	4
11	MySQL	4
12	Oracle	4
13	Aix	7
14	Linux	7
15	Windows	7
16	Tomcat	6
17	JBoss EAP	6
18	WebSphere Application Server	6
19	JavaScript	5
20	CSS	5
21	HTML	5
22	SVN	8
23	GIT	8
24	Jenkins	9
25	Apache Ant	9
26	Artifactory	9
\.


--
-- Name: commons_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('commons_skill_id_seq', 26, true);


--
-- Data for Name: commons_tasks; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY commons_tasks (id, task_text, job_id) FROM stdin;
1	IT operations support	1
2	Database configuration management	1
3	Administration of development platforms	1
4	Development of automation tools	1
5	Administration of IBM WebSphere MQ Series	1
6	Administration of IBM WebSphere Application Server	1
\.


--
-- Name: commons_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('commons_tasks_id_seq', 6, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-11-24 23:02:09.243+01	1	What's up?	2	No fields changed.	7	1
2	2015-11-24 23:02:59.712+01	1	What's up?	2	Changed pub_date.	7	1
3	2015-11-26 22:35:48.553+01	1	WebServers	1		9	1
4	2015-11-26 23:00:07.179+01	1	Application Servers	2	Changed category_text.	9	1
5	2015-11-26 23:01:48.533+01	1	Application Servers	2	No fields changed.	9	1
6	2015-11-26 23:03:26.397+01	2	Frameworks	1		9	1
7	2015-11-26 23:03:46.208+01	3	Databases	1		9	1
8	2015-11-26 23:03:54.982+01	3	Databases	2	Added skill "Oracle".	9	1
9	2015-11-26 23:04:50.285+01	3	Databases	2	No fields changed.	9	1
10	2015-11-26 23:05:12.014+01	4	OS	1		9	1
11	2015-11-26 23:07:22.56+01	5	Programming language	1		9	1
12	2015-11-26 23:08:02.757+01	6	Web Technologies	1		9	1
13	2015-11-26 23:09:41.85+01	7	Scripting	1		9	1
14	2015-11-26 23:10:03.291+01	2	Frameworks	2	Added skill "Android SDK".	9	1
15	2015-11-26 23:10:45.616+01	8	Other used tools	1		9	1
16	2015-11-26 23:11:43.471+01	8	Used tools (academic level)	2	Changed category_text. Added skill "Oracle SOA Suite". Added skill "BlueJ". Added skill "Eclipse". Added skill "NetBeans".	9	1
17	2015-11-26 23:13:13+01	9	Other programming languages (academic level)	1		9	1
18	2015-11-26 23:13:38.374+01	5	Programming language	2	Deleted skill "C".	9	1
19	2015-11-26 23:13:44.757+01	9	Other programming languages (academic level)	2	Added skill "C".	9	1
20	2015-11-26 23:15:02.276+01	5	Programming language	2	No fields changed.	9	1
21	2015-11-26 23:16:07.011+01	10	Build/Continuous Integration tools	1		9	1
22	2015-11-26 23:16:47.056+01	11	Atlassian software administration	1		9	1
23	2015-11-26 23:17:00.352+01	12	Code Versioning	1		9	1
28	2015-12-22 13:48:54.28+01	9	Other programming languages (academic level)	2	Changed skill_text for skill "C#,". Changed skill_text for skill "PL-SQL,". Changed skill_text for skill "PHP,". Changed skill_text for skill "XML,". Changed skill_text for skill "BPEL,". Changed skill_text for skill "SIG,". Changed skill_text for skill "Silverlight for WP7,". Changed skill_text for skill "C.".	9	1
29	2015-12-22 13:51:20.05+01	11	Atlassian software administration	2	Changed skill_text for skill "Jira,". Changed skill_text for skill "Confluence,". Changed skill_text for skill "Fisheye.".	9	1
30	2015-12-22 13:51:27.138+01	10	Build/Continuous Integration tools	2	Changed skill_text for skill "Apache Ant,". Changed skill_text for skill "Artifactory,". Changed skill_text for skill "Jenkins.".	9	1
31	2015-12-22 13:51:31.341+01	9	Other programming languages (academic level)	2	No fields changed.	9	1
32	2015-12-22 13:51:42.499+01	8	Used tools (academic level)	2	Changed skill_text for skill "Visual Studio,". Changed skill_text for skill "SQL Developer,". Changed skill_text for skill "SQL Server,". Changed skill_text for skill "Oracle SOA Suite,". Changed skill_text for skill "BlueJ,". Changed skill_text for skill "Eclipse,". Changed skill_text for skill "NetBeans.".	9	1
33	2015-12-22 13:52:00.903+01	7	Scripting	2	Changed skill_text for skill "Shell,". Changed skill_text for skill "Python.".	9	1
34	2015-12-22 13:52:08.865+01	6	Web Technologies	2	Changed skill_text for skill "JavaScript,". Changed skill_text for skill "CSS,". Changed skill_text for skill "HTML.".	9	1
35	2015-12-22 13:52:48.665+01	5	Programming language	2	Added skill "PSL,". Added skill "C.". Changed skill_text for skill "Java,". Changed skill_text for skill "Mumps,".	9	1
36	2015-12-22 13:52:58.594+01	4	OS	2	Changed skill_text for skill "Aix,". Changed skill_text for skill "Linux,". Changed skill_text for skill "Windows.".	9	1
37	2015-12-22 13:53:09.371+01	3	Databases	2	Changed skill_text for skill "GT.M,". Changed skill_text for skill "MySQL,". Changed skill_text for skill "Oracle.".	9	1
38	2015-12-22 13:53:47.39+01	2	Frameworks	2	Added skill "Django.". Changed skill_text for skill "Struts,". Changed skill_text for skill "MVC,". Changed skill_text for skill "Android SDK,".	9	1
39	2015-12-22 13:54:03.449+01	1	Application Servers	2	Changed skill_text for skill "Tomcat,". Changed skill_text for skill "JBoss EAP,". Changed skill_text for skill "WebSphere Application Server.".	9	1
40	2016-01-07 18:44:39.412188+01	7	Scripting	2	Changed skill_text for skill "Shell Script,".	9	1
41	2016-01-07 18:50:37.444665+01	1	Application Servers	2	No fields changed.	9	1
42	2016-02-23 22:24:39.367517+01	11	Atlassian software administration	2	Changed skill_text for skill "Jira". Changed skill_text for skill "Confluence". Changed skill_text for skill "Fisheye".	9	1
43	2016-02-23 22:24:53.800215+01	10	Build/Continuous Integration tools	2	Changed skill_text for skill "Apache Ant". Changed skill_text for skill "Artifactory". Changed skill_text for skill "Jenkins".	9	1
44	2016-02-23 22:24:56.595767+01	10	Build/Continuous Integration tools	2	No fields changed.	9	1
45	2016-02-23 22:25:13.321364+01	9	Other programming languages (academic level)	2	Changed skill_text for skill "C#". Changed skill_text for skill "PL-SQL". Changed skill_text for skill "PHP". Changed skill_text for skill "XML". Changed skill_text for skill "BPEL". Changed skill_text for skill "SIG". Changed skill_text for skill "Silverlight for WP7". Changed skill_text for skill "C".	9	1
46	2016-02-23 22:25:24.453405+01	8	Used tools (academic level)	2	Changed skill_text for skill "Visual Studio". Changed skill_text for skill "SQL Developer". Changed skill_text for skill "SQL Server". Changed skill_text for skill "Oracle SOA Suite". Changed skill_text for skill "BlueJ". Changed skill_text for skill "Eclipse". Changed skill_text for skill "NetBeans".	9	1
47	2016-02-23 22:25:29.249267+01	7	Scripting	2	Changed skill_text for skill "Shell Script". Changed skill_text for skill "Python".	9	1
48	2016-02-23 22:25:34.316176+01	6	Web Technologies	2	Changed skill_text for skill "JavaScript". Changed skill_text for skill "CSS". Changed skill_text for skill "HTML".	9	1
49	2016-02-23 22:25:38.593271+01	6	Web Technologies	2	No fields changed.	9	1
50	2016-02-23 22:25:46.496795+01	5	Programming language	2	Changed skill_text for skill "Java". Changed skill_text for skill "Mumps". Changed skill_text for skill "PSL". Changed skill_text for skill "C".	9	1
51	2016-02-23 22:25:58.044954+01	4	OS	2	Changed skill_text for skill "Aix". Changed skill_text for skill "Linux". Changed skill_text for skill "Windows".	9	1
52	2016-02-23 22:26:11.522353+01	3	Databases	2	Changed skill_text for skill "GT.M". Changed skill_text for skill "MySQL". Changed skill_text for skill "Oracle".	9	1
53	2016-02-23 22:26:20.762654+01	2	Frameworks	2	Changed skill_text for skill "Struts". Changed skill_text for skill "MVC". Changed skill_text for skill "Android SDK". Changed skill_text for skill "Django".	9	1
24	2015-12-16 17:21:45.881+01	1	test... said estes	1	Added.	\N	1
54	2016-02-23 22:26:27.611114+01	1	Application Servers	2	Changed skill_text for skill "Tomcat". Changed skill_text for skill "JBoss EAP". Changed skill_text for skill "WebSphere Application Server".	9	1
55	2016-02-28 12:07:47.925718+01	1	Programming language	1	Added.	15	1
56	2016-02-28 12:07:59.774297+01	2	Scripting	1	Added.	15	1
57	2016-02-28 12:08:37.170905+01	3	Frameworks	1	Added.	15	1
58	2016-02-28 12:08:40.693358+01	4	Databases	1	Added.	15	1
59	2016-02-28 12:08:59.655723+01	5	Web Technologies	1	Added.	15	1
60	2016-02-28 12:09:07.52094+01	6	Application Servers	1	Added.	15	1
61	2016-02-28 12:09:09.644491+01	7	OS	1	Added.	15	1
62	2016-02-28 12:09:36.413878+01	13	Code Versioning	1	Added.	9	1
63	2016-02-28 12:09:55.952499+01	13	Code Versioning	3		9	1
64	2016-02-28 12:10:08.136359+01	8	Code Versioning	1	Added.	15	1
65	2016-02-28 12:10:19.494527+01	9	Build/Continuous Integration tools	1	Added.	15	1
66	2016-02-28 12:10:33.481131+01	10	Other programming languages (academic level)	1	Added.	15	1
67	2016-02-28 12:10:47.018018+01	11	Used tools (academic level)	1	Added.	15	1
68	2016-02-28 12:13:15.125703+01	1	Programming language	2	Added skill "Java". Added skill "Mumps". Added skill "PSL". Added skill "C".	15	1
69	2016-02-28 12:13:22.54087+01	5	Programming language	2	No fields changed.	9	1
70	2016-02-28 12:13:41.806394+01	2	Scripting	2	Added skill "Shell Script". Added skill "Python".	15	1
71	2016-02-28 12:13:46.171655+01	7	Scripting	2	No fields changed.	9	1
72	2016-02-28 12:14:09.718546+01	3	Frameworks	2	Added skill "Struts". Added skill "MVC". Added skill "Django".	15	1
73	2016-02-28 12:14:14.064495+01	2	Frameworks	2	No fields changed.	9	1
74	2016-02-28 12:14:37.9253+01	4	Databases	2	Added skill "GT.M". Added skill "MySQL". Added skill "Oracle".	15	1
75	2016-02-28 12:14:40.807273+01	3	Databases	2	No fields changed.	9	1
76	2016-02-28 12:15:00.071649+01	7	OS	2	Added skill "Aix". Added skill "Linux". Added skill "Windows".	15	1
77	2016-02-28 12:15:06.130135+01	4	OS	2	No fields changed.	9	1
78	2016-02-28 12:15:21.12009+01	6	Application Servers	2	Added skill "Tomcat". Added skill "JBoss EAP". Added skill "WebSphere Application Server".	15	1
79	2016-02-28 12:15:26.089265+01	1	Application Servers	2	No fields changed.	9	1
80	2016-02-28 12:15:45.583087+01	5	Web Technologies	2	Added skill "JavaScript". Added skill "CSS". Added skill "HTML".	15	1
81	2016-02-28 12:16:16.680806+01	8	Code Versioning	2	Added skill "SVN". Added skill "Git".	15	1
82	2016-02-28 12:16:23.479656+01	8	Code Versioning	2	Changed skill_text for skill "GIT".	15	1
83	2016-02-28 12:16:56.301057+01	9	Build/Continuous Integration tools	2	Added skill "Jenkins". Added skill "Apache Ant". Added skill "Artifactory".	15	1
27	2015-12-16 17:22:38.545+01	1	qqq	1	Added.	\N	1
25	2015-12-16 17:21:49.536+01	2	testetete... said te	1	Added.	\N	1
26	2015-12-16 17:21:51.894+01	2	testetete... said te	2	No fields changed.	\N	1
84	2016-04-25 22:15:33.971617+02	1	Job object	1	Added. Added tasks "IT operations support". Added tasks "Database configuration management". Added tasks "Administration of development platforms". Added tasks "Development of automation tools". Added tasks "Administration of IBM WebSphere MQ Series". Added tasks "Administration of IBM WebSphere Application Server".	17	1
85	2016-09-26 20:34:27.062292+02	1	Database/System Administrator	2	Changed end_date.	17	2
86	2016-09-26 20:42:54.048765+02	1	Database/System Administrator	2	Changed end_date.	17	1
87	2017-01-30 21:38:09.314476+01	12	qewq	3		19	1
88	2017-01-30 21:38:09.321158+01	11	test	3		19	1
89	2017-01-30 21:38:09.32239+01	10	test	3		19	1
90	2017-01-30 21:38:09.323541+01	9	qewq	3		19	1
91	2017-01-30 21:38:09.32473+01	8	qweq	3		19	1
92	2017-01-30 21:38:09.325867+01	7	qewq	3		19	1
93	2017-01-30 21:38:09.326985+01	6	dsad	3		19	1
94	2017-01-30 21:38:09.327937+01	5	qqqq	3		19	1
95	2017-01-30 21:38:09.328812+01	4	joao	3		19	1
96	2017-01-30 21:38:09.329618+01	3	sdad	3		19	1
97	2017-01-30 21:38:09.330422+01	2	test	3		19	1
98	2017-01-30 21:38:09.331239+01	1	qqqq	3		19	1
99	2017-01-30 21:45:47.86442+01	15	wq	3		19	1
100	2017-01-30 21:45:47.868474+01	14	test	3		19	1
101	2017-01-30 21:45:47.8698+01	13	Sewqeq	3		19	1
102	2017-01-30 21:50:40.112468+01	18	test	3		19	1
103	2017-01-30 21:50:40.116536+01	17	teste	3		19	1
104	2017-01-30 21:50:40.117826+01	16	teste	3		19	1
105	2017-01-30 22:01:20.011511+01	23	erw	3		19	1
106	2017-01-30 22:01:20.015511+01	22	testq	3		19	1
107	2017-01-30 22:01:20.016808+01	21	test	3		19	1
108	2017-01-30 22:01:20.018727+01	20	qew	3		19	1
109	2017-01-30 22:01:20.020298+01	19	testq	3		19	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 109, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	polls	question
8	polls	choice
9	skills	category
10	skills	skill
14	render	savedembeds
15	commons	category
16	commons	skill
17	commons	job
18	commons	tasks
19	commons	contact
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-01-03 21:43:11.314527+01
2	auth	0001_initial	2016-01-03 21:43:11.377803+01
3	admin	0001_initial	2016-01-03 21:43:11.398213+01
4	admin	0002_logentry_remove_auto_add	2016-01-03 21:43:11.409929+01
5	contenttypes	0002_remove_content_type_name	2016-01-03 21:43:11.440656+01
6	auth	0002_alter_permission_name_max_length	2016-01-03 21:43:11.452718+01
7	auth	0003_alter_user_email_max_length	2016-01-03 21:43:11.461866+01
8	auth	0004_alter_user_username_opts	2016-01-03 21:43:11.47262+01
9	auth	0005_alter_user_last_login_null	2016-01-03 21:43:11.486949+01
10	auth	0006_require_contenttypes_0002	2016-01-03 21:43:11.488729+01
11	auth	0007_alter_validators_add_error_messages	2016-01-03 21:43:11.497717+01
12	commons	0001_initial	2016-01-03 21:43:11.55143+01
13	polls	0001_initial	2016-01-03 21:43:11.570728+01
14	render	0001_initial	2016-01-03 21:43:11.579375+01
15	sessions	0001_initial	2016-01-03 21:43:11.593148+01
16	skills	0001_initial	2016-01-03 21:43:11.610287+01
17	commons	0002_category_skill	2016-02-28 12:06:18.88604+01
18	commons	0003_auto_20160228_2108	2016-02-28 22:08:34.143438+01
19	commons	0004_job_tasks	2016-04-25 21:37:57.247855+02
20	commons	0005_auto_20160425_2002	2016-04-25 22:03:08.225163+02
21	commons	0006_auto_20160503_2049	2016-05-03 22:50:06.849393+02
22	commons	0007_auto_20160926_2102	2016-09-26 23:02:49.259848+02
23	commons	0008_auto_20160926_2123	2016-09-26 23:23:22.992056+02
24	commons	0009_auto_20160926_2141	2016-09-26 23:41:40.316982+02
25	commons	0010_auto_20161115_2030	2016-11-15 21:30:59.117235+01
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('django_migrations_id_seq', 25, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
d1izp1abxdy5llmduli4yux39wod2vxc	M2FiMDgyZTYwYjU1MDAwNDRiY2M2NWY1NGEyM2RjZjMyNTViZTRkNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDM3MmJjNTg1NTVjYTU4NjRlMTBhY2ZmNGRmYmYxMDdhNWQ0YWRmIn0=	2016-01-17 18:23:32.764+01
n558ncckhp3z7du0yuvb0a14w9ojt9ou	MDg1NTFmOWVmMmM5MWYyNzhmMmVlZGFlNzdkYmZiMTBlMzc4YjJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDM3MmJjNTg1NTVjYTU4NjRlMTBhY2ZmNGRmYmYxMDdhNWQ0YWRmIn0=	2015-12-30 17:20:53.261+01
wb6hfti3zqlntgh1dugcdb3poxezbc6n	NTI3MTM0ZTYyMzk0OTI2Y2Y4OGVlYTRiY2Y2OGY0YTFlNDZmMWVkMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjUxNDhiZTVmMGY3OWVkMjM2YzM3NWE0MTRlZWJkOTY4ZjMxMzg5NyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-12-09 22:48:37.591+01
qfp5mrj558ye0zcx0slj2ymjotpxrd1y	ZjIxYjYxYmI1ZTgwZmYxZWZmZDMzOWIyZTQ4NTkzNTYxZmI0NDRiODp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyM2Y2YjA3MWIwMTQ4ZTY1M2Q4YTBiNGY2MmRkZmExZDUzMGMxODMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-03-08 22:24:16.715083+01
8lse73lws4uaitsposb6a9oy65ccsa0c	ZjIxYjYxYmI1ZTgwZmYxZWZmZDMzOWIyZTQ4NTkzNTYxZmI0NDRiODp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyM2Y2YjA3MWIwMTQ4ZTY1M2Q4YTBiNGY2MmRkZmExZDUzMGMxODMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-05-08 20:58:01.337301+02
www6hiiy8adcrmyqeeotb0z5cjuv00e2	ZDc2ZWRhNTdkYjczZGNjYzU4ZGFmZjllMDUyNjQ3MDY1NGYwOTk3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjNmNmIwNzFiMDE0OGU2NTNkOGEwYjRmNjJkZGZhMWQ1MzBjMTgzIn0=	2016-10-10 20:41:54.639852+02
0l7erpku3cqfzpa8y4jz6g0bif6r0x73	ODdlNzE1YTJmZDcyMzgwNGNlODk5MmNhZTYwZmE5ZDMwNjZmMGE4MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZGNmMmM4OTBhNGU0NWYxYTk1YTc4ZGIyMDUxNzY3YjA3NmYwMWEwIn0=	2016-11-29 21:29:05.629641+01
jnkwarqpgiv1fg4wyaydbr8stj0ga5xe	YmNkM2FmMTMwNmI3OWQxOGZhMTlmM2QwMjdhYTkyNDAxMjgwMTA1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzZjZiMDcxYjAxNDhlNjUzZDhhMGI0ZjYyZGRmYTFkNTMwYzE4MyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-02-13 21:37:52.076892+01
\.


--
-- Data for Name: polls_choice; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY polls_choice (id, choice_text, votes, question_id) FROM stdin;
1	Not much	4	1
2	The sky	0	1
3	Just hacking again	1	1
4	The sky	1	1
5	Another hack	3	1
\.


--
-- Name: polls_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('polls_choice_id_seq', 5, true);


--
-- Data for Name: polls_question; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY polls_question (id, question_text, pub_date) FROM stdin;
1	What's up?	2015-11-24 23:02:58+01
\.


--
-- Name: polls_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('polls_question_id_seq', 1, true);


--
-- Data for Name: render_savedembeds; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY render_savedembeds (id, type, provider_url, provider_name, title, description, html, width, height, thumbnail_url, thumbnail_width, thumbnail_height, author_url, author_name, version) FROM stdin;
1	video	https://www.youtube.com/	YouTube	Mariza - Melhor de Mim	"Melhor de Mim", letra escrita por AC Firmino e música composta por Tiago Machado, faz parte de "Mundo" o mais recente álbum de Mariza editado dia 9 de Outubro. -- "Melhor de Mim" is a song written by AC Firmino and music composed by Tiago Machado, featured in "Mundo", Mariza's latest record released on October 9.	<iframe class="embedly-embed" src="//cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fwww.youtube.com%2Fembed%2F2UDZH_Htpq8%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D2UDZH_Htpq8&image=https%3A%2F%2Fi.ytimg.com%2Fvi%2F2UDZH_Htpq8%2Fhqdefault.jpg&key=5c82f9bd11d8424b8ccab1f27208f862&type=text%2Fhtml&schema=youtube" width="854" height="480" scrolling="no" frameborder="0" allowfullscreen></iframe>	854	480	https://i.ytimg.com/vi/2UDZH_Htpq8/hqdefault.jpg	480	360	https://www.youtube.com/user/marizaoficial	Mariza	1.00
2	video	https://www.youtube.com/	YouTube	Adele - Hello	'Hello' is taken from the new album, 25, out November 20.	<iframe class="embedly-embed" src="//cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fwww.youtube.com%2Fembed%2FYQHsXMglC9A%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DYQHsXMglC9A&image=https%3A%2F%2Fi.ytimg.com%2Fvi%2FYQHsXMglC9A%2Fhqdefault.jpg&key=5c82f9bd11d8424b8ccab1f27208f862&type=text%2Fhtml&schema=youtube" width="854" height="480" scrolling="no" frameborder="0" allowfullscreen></iframe>	854	480	https://i.ytimg.com/vi/YQHsXMglC9A/hqdefault.jpg	480	360	https://www.youtube.com/user/AdeleVEVO	AdeleVEVO	1.00
3	video	https://www.youtube.com/	YouTube	Silentó - Watch Me (Whip/Nae Nae) (Official)	Download "Watch Me (Whip/Nae Nae)" here: http://smarturl.it/WatchMeSingle Listen to Watch Me (Whip/Nae Nae)" on Spotify: http://smarturl.it/WatchMeSpotify Official video for "Watch Me (Whip/Nae Nae)" directed by Marc Klasfeld and produced by Cisco Newman and Danny Lockwood Follow Silentó: Twiiter: http://twitter.com/therealsilento IG: http://instagram.com/therealsilento Vine: https://vine.co/u/1073516121182879745 http://vevo.ly/coQkM6 See the Full Versions of the #WatchMeDanceOn Videos!	<iframe class="embedly-embed" src="//cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fwww.youtube.com%2Fembed%2FvjW8wmF5VWc%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DvjW8wmF5VWc&image=https%3A%2F%2Fi.ytimg.com%2Fvi%2FvjW8wmF5VWc%2Fhqdefault.jpg&key=5c82f9bd11d8424b8ccab1f27208f862&type=text%2Fhtml&schema=youtube" width="854" height="480" scrolling="no" frameborder="0" allowfullscreen></iframe>	854	480	https://i.ytimg.com/vi/vjW8wmF5VWc/hqdefault.jpg	480	360	https://www.youtube.com/user/SilentoVEVO	SilentoVEVO	1.00
4	video	https://www.youtube.com/	YouTube	Looking for astronauts - The National	From the album Alligator (thanks for the correction via comments)	<iframe class="embedly-embed" src="//cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fwww.youtube.com%2Fembed%2FNdS7ETy2fww%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DNdS7ETy2fww&image=https%3A%2F%2Fi.ytimg.com%2Fvi%2FNdS7ETy2fww%2Fhqdefault.jpg&key=5c82f9bd11d8424b8ccab1f27208f862&type=text%2Fhtml&schema=youtube" width="640" height="480" scrolling="no" frameborder="0" allowfullscreen></iframe>	640	480	https://i.ytimg.com/vi/NdS7ETy2fww/hqdefault.jpg	480	360	https://www.youtube.com/user/40formasdeintimidad	40formasdeintimidad	1.00
\.


--
-- Name: render_savedembeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('render_savedembeds_id_seq', 4, true);


--
-- Data for Name: skills_category; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY skills_category (id, category_text) FROM stdin;
12	Code Versioning
11	Atlassian software administration
10	Build/Continuous Integration tools
9	Other programming languages (academic level)
8	Used tools (academic level)
6	Web Technologies
5	Programming language
7	Scripting
2	Frameworks
3	Databases
4	OS
1	Application Servers
\.


--
-- Name: skills_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('skills_category_id_seq', 13, true);


--
-- Data for Name: skills_skill; Type: TABLE DATA; Schema: public; Owner: joaoserrao
--

COPY skills_skill (id, skill_text, category_id) FROM stdin;
42	SVN	12
39	Jira	11
40	Confluence	11
41	Fisheye	11
36	Apache Ant	10
37	Artifactory	10
38	Jenkins	10
28	C#	9
29	PL-SQL	9
30	PHP	9
31	XML	9
32	BPEL	9
33	SIG	9
34	Silverlight for WP7	9
35	C	9
21	Visual Studio	8
22	SQL Developer	8
23	SQL Server	8
24	Oracle SOA Suite	8
25	BlueJ	8
26	Eclipse	8
27	NetBeans	8
18	Shell Script	7
19	Python	7
15	JavaScript	6
16	CSS	6
17	HTML	6
12	Java	5
13	Mumps	5
43	PSL	5
44	C	5
9	Aix	4
10	Linux	4
11	Windows	4
6	GT.M	3
7	MySQL	3
8	Oracle	3
4	Struts	2
5	MVC	2
20	Android SDK	2
45	Django	2
1	Tomcat	1
2	JBoss EAP	1
3	WebSphere Application Server	1
\.


--
-- Name: skills_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joaoserrao
--

SELECT pg_catalog.setval('skills_skill_id_seq', 45, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: commons_category_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY commons_category
    ADD CONSTRAINT commons_category_pkey PRIMARY KEY (id);


--
-- Name: commons_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY commons_contact
    ADD CONSTRAINT commons_contact_pkey PRIMARY KEY (id);


--
-- Name: commons_job_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY commons_job
    ADD CONSTRAINT commons_job_pkey PRIMARY KEY (id);


--
-- Name: commons_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY commons_skill
    ADD CONSTRAINT commons_skill_pkey PRIMARY KEY (id);


--
-- Name: commons_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY commons_tasks
    ADD CONSTRAINT commons_tasks_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: polls_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);


--
-- Name: polls_question_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);


--
-- Name: render_savedembeds_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY render_savedembeds
    ADD CONSTRAINT render_savedembeds_pkey PRIMARY KEY (id);


--
-- Name: skills_category_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY skills_category
    ADD CONSTRAINT skills_category_pkey PRIMARY KEY (id);


--
-- Name: skills_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: joaoserrao; Tablespace: 
--

ALTER TABLE ONLY skills_skill
    ADD CONSTRAINT skills_skill_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: commons_skill_b583a629; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX commons_skill_b583a629 ON commons_skill USING btree (category_id);


--
-- Name: commons_tasks_d697ea38; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX commons_tasks_d697ea38 ON commons_tasks USING btree (job_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: polls_choice_7aa0f6ee; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX polls_choice_7aa0f6ee ON polls_choice USING btree (question_id);


--
-- Name: skills_skill_b583a629; Type: INDEX; Schema: public; Owner: joaoserrao; Tablespace: 
--

CREATE INDEX skills_skill_b583a629 ON skills_skill USING btree (category_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commons_skill_category_id_aed94de3_fk_commons_category_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_skill
    ADD CONSTRAINT commons_skill_category_id_aed94de3_fk_commons_category_id FOREIGN KEY (category_id) REFERENCES commons_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commons_tasks_job_id_8f97f2f1_fk_commons_job_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY commons_tasks
    ADD CONSTRAINT commons_tasks_job_id_8f97f2f1_fk_commons_job_id FOREIGN KEY (job_id) REFERENCES commons_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: polls_choice_question_id_c5b4b260_fk_polls_question_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES polls_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skills_skill_category_id_a6ead0ad_fk_skills_category_id; Type: FK CONSTRAINT; Schema: public; Owner: joaoserrao
--

ALTER TABLE ONLY skills_skill
    ADD CONSTRAINT skills_skill_category_id_a6ead0ad_fk_skills_category_id FOREIGN KEY (category_id) REFERENCES skills_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: joaoserrao
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM joaoserrao;
GRANT ALL ON SCHEMA public TO joaoserrao;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

