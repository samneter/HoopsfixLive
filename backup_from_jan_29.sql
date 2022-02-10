--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: clubs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clubs (
    id bigint NOT NULL,
    name character varying,
    website character varying,
    youtube character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    tiktok character varying,
    abbreviation character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    slug character varying
);


ALTER TABLE public.clubs OWNER TO postgres;

--
-- Name: clubs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clubs_id_seq OWNER TO postgres;

--
-- Name: clubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clubs_id_seq OWNED BY public.clubs.id;


--
-- Name: competitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competitions (
    id bigint NOT NULL,
    name character varying,
    website character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    slug character varying,
    youtube character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    tiktok character varying,
    organisation_id integer
);


ALTER TABLE public.competitions OWNER TO postgres;

--
-- Name: competitions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.competitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competitions_id_seq OWNER TO postgres;

--
-- Name: competitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.competitions_id_seq OWNED BY public.competitions.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id bigint NOT NULL,
    date date NOT NULL,
    competition_id bigint NOT NULL,
    home_team_id bigint NOT NULL,
    away_team_id bigint NOT NULL,
    live_stat_url character varying,
    stream_url character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    tip_time integer,
    slug character varying,
    season_id bigint
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: memberships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memberships (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    competition_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.memberships OWNER TO postgres;

--
-- Name: memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.memberships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.memberships_id_seq OWNER TO postgres;

--
-- Name: memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.memberships_id_seq OWNED BY public.memberships.id;


--
-- Name: organisations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organisations (
    id bigint NOT NULL,
    name character varying,
    abbreviation character varying,
    slug character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.organisations OWNER TO postgres;

--
-- Name: organisations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organisations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organisations_id_seq OWNER TO postgres;

--
-- Name: organisations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organisations_id_seq OWNED BY public.organisations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: season_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.season_records (
    id bigint NOT NULL,
    season_id bigint NOT NULL,
    competition_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.season_records OWNER TO postgres;

--
-- Name: season_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.season_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.season_records_id_seq OWNER TO postgres;

--
-- Name: season_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.season_records_id_seq OWNED BY public.season_records.id;


--
-- Name: seasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seasons (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.seasons OWNER TO postgres;

--
-- Name: seasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasons_id_seq OWNER TO postgres;

--
-- Name: seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seasons_id_seq OWNED BY public.seasons.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    name character varying,
    website character varying,
    youtube character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    tiktok character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    slug character varying,
    abbreviation character varying
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: clubs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clubs ALTER COLUMN id SET DEFAULT nextval('public.clubs_id_seq'::regclass);


--
-- Name: competitions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions ALTER COLUMN id SET DEFAULT nextval('public.competitions_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: memberships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships ALTER COLUMN id SET DEFAULT nextval('public.memberships_id_seq'::regclass);


--
-- Name: organisations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations ALTER COLUMN id SET DEFAULT nextval('public.organisations_id_seq'::regclass);


--
-- Name: season_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.season_records ALTER COLUMN id SET DEFAULT nextval('public.season_records_id_seq'::regclass);


--
-- Name: seasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seasons ALTER COLUMN id SET DEFAULT nextval('public.seasons_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
84	logo	Club	1	84	2022-02-03 05:59:59.104152
85	logo	Club	2	85	2022-02-05 05:20:34.229613
86	logo	Organisation	2	86	2022-02-05 06:04:00.904357
87	logo	Organisation	3	87	2022-02-05 06:04:35.158669
88	logo	Organisation	4	88	2022-02-05 06:06:12.19899
89	logo	Organisation	5	89	2022-02-05 06:07:20.587998
90	logo	Competition	15	90	2022-02-09 05:14:18.059704
19	logo	Competition	1	19	2021-11-28 04:45:01.624051
20	logo	Competition	2	20	2021-11-28 04:45:24.949682
21	logo	Competition	4	21	2021-11-28 04:45:38.795337
23	logo	Competition	5	23	2021-11-28 04:46:06.884959
25	logo	Competition	7	25	2021-11-28 04:46:34.414653
45	logo	Competition	9	45	2022-01-02 07:33:53.99204
52	logo	Competition	3	52	2022-01-08 20:22:01.520445
53	logo	Competition	6	53	2022-01-08 20:24:40.360706
55	logo	Competition	11	55	2022-01-11 06:45:30.805301
56	logo	Competition	12	56	2022-01-11 06:47:29.646085
76	logo	Competition	13	76	2022-01-22 07:30:08.225269
82	logo	Competition	14	82	2022-01-26 07:33:40.135357
83	logo	Organisation	1	83	2022-01-29 06:22:24.394599
1	logo	Team	2	1	2021-11-08 05:48:47.727787
2	logo	Team	3	2	2021-11-11 06:49:03.203745
3	logo	Team	4	3	2021-11-12 05:27:47.636742
4	logo	Team	5	4	2021-11-12 13:59:34.064526
5	logo	Team	6	5	2021-11-15 05:50:12.65302
7	logo	Team	7	7	2021-11-15 05:54:43.751862
8	logo	Team	8	8	2021-11-20 05:15:14.855598
9	logo	Team	9	9	2021-11-20 05:17:01.63468
10	logo	Team	10	10	2021-11-20 05:20:15.267069
11	logo	Team	11	11	2021-11-20 05:21:58.377562
12	logo	Team	12	12	2021-11-20 05:23:18.25175
13	logo	Team	13	13	2021-11-20 05:30:49.087273
14	logo	Team	14	14	2021-11-20 05:34:06.419104
15	logo	Team	15	15	2021-11-20 05:35:34.053529
16	logo	Team	16	16	2021-11-20 05:36:05.000545
26	logo	Team	18	26	2021-12-06 05:52:41.519339
27	logo	Team	19	27	2021-12-06 05:54:55.352815
28	logo	Team	20	28	2021-12-06 05:57:20.740592
29	logo	Team	21	29	2021-12-06 05:59:44.589179
30	logo	Team	22	30	2021-12-06 06:03:22.021562
31	logo	Team	23	31	2021-12-06 06:05:24.766169
32	logo	Team	24	32	2021-12-06 06:08:04.24909
33	logo	Team	25	33	2021-12-06 06:10:35.915831
34	logo	Team	26	34	2021-12-06 06:12:19.464761
35	logo	Team	27	35	2021-12-06 06:15:55.949584
36	logo	Team	28	36	2021-12-06 06:18:18.207623
37	logo	Team	29	37	2021-12-06 06:19:58.702571
38	logo	Team	30	38	2021-12-06 06:22:04.814776
39	logo	Team	31	39	2021-12-06 06:23:40.798623
40	logo	Team	32	40	2021-12-06 06:25:04.245594
41	logo	Team	33	41	2021-12-06 06:26:25.510877
42	logo	Team	34	42	2021-12-06 06:28:18.094468
43	logo	Team	17	43	2021-12-21 06:08:46.270069
47	logo	Team	35	47	2022-01-08 06:24:55.200143
48	logo	Team	36	48	2022-01-08 06:31:57.572925
49	logo	Team	37	49	2022-01-08 06:34:17.10764
50	logo	Team	38	50	2022-01-08 06:36:45.520899
57	logo	Team	1	57	2022-01-11 06:48:48.329599
58	logo	Team	39	58	2022-01-12 05:26:50.76205
59	logo	Team	40	59	2022-01-12 05:29:18.980021
62	logo	Team	42	62	2022-01-18 05:35:40.916107
63	logo	Team	41	63	2022-01-18 05:36:03.831374
64	logo	Team	43	64	2022-01-18 05:52:49.388181
65	logo	Team	44	65	2022-01-18 05:56:27.669989
66	logo	Team	45	66	2022-01-18 05:59:09.950123
67	logo	Team	46	67	2022-01-19 06:01:07.29769
68	logo	Team	47	68	2022-01-19 06:03:11.611587
69	logo	Team	48	69	2022-01-19 06:06:22.991194
70	logo	Team	49	70	2022-01-19 06:08:50.483107
71	logo	Team	50	71	2022-01-19 06:10:25.318875
73	logo	Team	51	73	2022-01-19 06:13:15.544625
74	logo	Team	52	74	2022-01-19 20:14:01.590917
75	logo	Team	53	75	2022-01-22 07:19:13.42503
77	logo	Team	54	77	2022-01-22 07:35:13.219291
78	logo	Team	55	78	2022-01-22 07:42:14.362121
79	logo	Team	56	79	2022-01-22 07:54:53.023012
80	logo	Team	57	80	2022-01-22 07:58:40.959872
81	logo	Team	58	81	2022-01-22 08:31:02.729901
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	k1y1l5arp7oriloywv4n1tatbc0q	Bristol-Flyers.png	image/png	{"identified":true,"analyzed":true}	local	469962	SeWzR5tw2yPCxskS/7BnRQ==	2021-11-08 05:48:47.719466
2	62427dae54r7mztvjfk3zw1ku0qc	Caledonia-Pride.png	image/png	{"identified":true,"analyzed":true}	local	506892	lJFQHf0AjKsLrx+dXNk41A==	2021-11-11 06:49:03.19357
3	qzdyw9f2407p8ovlzqxwvuhbjeie	Cheshire-Phoenix.png	image/png	{"identified":true,"analyzed":true}	local	353274	wGcQTI49F0ZmsXdJ5Ps0Aw==	2021-11-12 05:27:47.63167
4	jl9fhrgaj45qylggml5tsle98ryh	Manchester-Giants.png	image/png	{"identified":true,"analyzed":true}	local	1549971	r3L10/WTc9Ejqz4b/0gCbQ==	2021-11-12 13:59:34.060682
5	wspwbt39htryihtnte811a85ccyr	Hemel-Storm-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	496943	L3zhrPnRDzz6b/dpTCBtqg==	2021-11-15 05:50:12.649774
7	l24uare91pnsaes4p6myklhsbroz	Team-Solent-Kestrels-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	573742	e/J2bI7m054ssTF1jxtWhQ==	2021-11-15 05:54:43.748991
8	uosz9f9hzhg20x5bclrrl0nwto8g	Leicester-Riders.png	image/png	{"identified":true,"analyzed":true}	local	304714	0ButaYWmcQ39+NV555aqYw==	2021-11-20 05:15:14.853862
9	jgrbc5bykjxtlqnjqnkfmjr2ddq8	Sheffield Sharks 2019-20.png	image/png	{"identified":true,"analyzed":true}	local	254729	QpdgsdiQsVflnyalqBmY2A==	2021-11-20 05:17:01.628806
10	1lraew87u6q1zi2zpfyj2h6r78os	Newcastle-Eagles-Black.png	image/png	{"identified":true,"analyzed":true}	local	101716	4wtcD+5cW2uVnMJ5vEvMsg==	2021-11-20 05:20:15.261328
11	gh6u2gbdk6l0j38yzmx5xje29yc9	Glasgow Rocks OLD.png	image/png	{"identified":true,"analyzed":true}	local	1016353	7GAkzimeSWHNgmBmPcNYPw==	2021-11-20 05:21:58.371317
12	3bfron7xgisg765sj89nlw3661zy	Surrey-Scorchers.png	image/png	{"identified":true,"analyzed":true}	local	376627	HgdP6L+UbOse9XkoBiczfQ==	2021-11-20 05:23:18.246795
13	gmy3t8hop91tq7cltxnyfmu2fnrt	Plymouth City Patriots.png	image/png	{"identified":true,"analyzed":true}	local	122773	y1bvrirmQqAAWElgESXb/Q==	2021-11-20 05:30:49.085631
14	n6vuiill5mwp27d0tghq4ta579zk	Barking-Abbey-Logo.png	image/png	{"identified":true,"analyzed":true}	local	282108	QaVjkZ1k0kaMA3fdYGk8TQ==	2021-11-20 05:34:06.41351
15	lizibfsp7xlqcpkbzuau4u9lmq27	Loughborough-University.png	image/png	{"identified":true,"analyzed":true}	local	368960	Ha+NMrnt8eiQlPW6mkWLlA==	2021-11-20 05:35:34.047215
16	67ut0hftf3cqfwr5spn3emh45me7	UEL logo.png	image/png	{"identified":true,"analyzed":true}	local	16703	8sMH/CI51af/s/Z7toBDDA==	2021-11-20 05:36:04.995276
21	fhavboxeev2qb87tlyu2zoamtaxa	EABL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	410613	tBc9CO4xKHkUwypffXMtqQ==	2021-11-28 04:45:38.789485
19	p39fbs0g1h4gk5hjtugwbzk5cofe	BBL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	195408	kgEYJs7JDvNWhmsgFZVnEA==	2021-11-28 04:45:01.620381
20	a6r5ngjodzgw98lsz8u3si48elvr	WBBL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	166799	MFcNr+z6xbj8t8peKYdcNQ==	2021-11-28 04:45:24.942511
23	q1m90d54swsms1ijv78bydycf45u	WEABL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	1399587	4o05q8wJgSf0JIyW6GKCgQ==	2021-11-28 04:46:06.882743
25	kv1new4yvx2mqfz7ffmaasssjfkg	BUCS Logo 300x300.png	image/png	{"identified":true,"analyzed":true}	local	68991	VEgZtTg1S5NNGbcRJUH7mg==	2021-11-28 04:46:34.412429
26	an3b3bs48xx4qgnxjx18kmguaquv	Cardiff-Met-Archers 1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	936172	zArZ/AM3oj1y1/Q5roprPw==	2021-12-06 05:52:41.505562
27	q1hlfklrh0aokc4g13kje6y8sfp4	Durham-Palatinaites.png	image/png	{"identified":true,"analyzed":true}	local	221749	VQGAkpuoqHD//zFBx8D7Iw==	2021-12-06 05:54:55.35031
28	lblopu3x9iihuns1zpb7xtgp05c5	Essex-Rebels-1280x1280.png	image/png	{"identified":true,"analyzed":true}	local	813397	XsHbSbgaFktTGbLtQ2oxvQ==	2021-12-06 05:57:20.735406
29	d0ub3789zc28m0uvzs19b48gi8z0	Gloucester-City-Queens.png	image/png	{"identified":true,"analyzed":true}	local	638167	Z3m5UjcecyqjKJ3/NBZ23A==	2021-12-06 05:59:44.586972
30	vyjsf8xcttzjdbvr6xlj1l0p8fk3	Manchester Met Mystics.png	image/png	{"identified":true,"analyzed":true}	local	124452	acl6exrxBIdVR99iQavpWA==	2021-12-06 06:03:22.01546
31	lgowo2ha6epy3p7x8soohqgdey35	Nottingham-Wildcats-2.png	image/png	{"identified":true,"analyzed":true}	local	216992	pGqbdEJztzTwF9pVXNDKTA==	2021-12-06 06:05:24.763558
32	efo5m2hsh26sx1v353bger9b7hxx	Oaklands-Wolves-2.png	image/png	{"identified":true,"analyzed":true}	local	1757444	zkIQYgr/acISf3ziIk6HvQ==	2021-12-06 06:08:04.247327
33	p61v62ehbd8780zg5sei52rfzd3r	Sevenoaks Suns.png	image/png	{"identified":true,"analyzed":true}	local	31416	7wA84FXfRsGC6M0Ihh8XkQ==	2021-12-06 06:10:35.912835
34	y1e835ymedlj3l04xcbj363qdv5n	Sheffield Hatters Logo.png	image/png	{"identified":true,"analyzed":true}	local	347071	iJXLaSVmPwj4qG3MyvMtCw==	2021-12-06 06:12:19.461731
35	djjxploql26db4h0wks5yj0jl8gv	Worthing-Thunder-Logo.png	image/png	{"identified":true,"analyzed":true}	local	77397	WTCG5C6PdsxUBS02j6tUyw==	2021-12-06 06:15:55.94403
36	e4moc26pmcw0qclbesexety13x3g	Thames-Valley-Cavaliers-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	809059	aVYArmYCtXE7nvWAKhL01g==	2021-12-06 06:18:18.205849
37	b4tkn6qm2i6ctyajeihep0bvb926	Derby-Trailblazers-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	424431	bBj8nso8nJSYAjRXcIgPIg==	2021-12-06 06:19:58.691785
38	xs98imna4dt3ig754b8xv5hosj6m	Team-Newcastle-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	205698	c7ahCo7s58TuC3tVZNif+w==	2021-12-06 06:22:04.810515
39	7nkcb056rd2twffuri406gcuqa5f	Nottingham-Hoods.png	image/png	{"identified":true,"analyzed":true}	local	774037	9bFK0DJ2gr7/sXlgPWtL0Q==	2021-12-06 06:23:40.795514
40	bp64j9hla46kd9p4wwx6neray0zc	Reading-Rockets-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	535864	bynVvFUAmqJva746xEpnEg==	2021-12-06 06:25:04.243275
41	2x9kw6kwo2rnj5jdq7wcur2mom6t	Bradford-Dragons-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	488697	ifeQzn2wOC1yqq/zQ/k8mA==	2021-12-06 06:26:25.50791
42	kr5a14uj4amervprhg1n69eqfwh5	Leicester-Warriors-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	650935	y9PDCpqlrgJuSJIDKym/Kg==	2021-12-06 06:28:18.09002
43	lyxr8co5n8k34rpgy6f16143qagu	CoLA-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	480079	bxhrqiipNzwLtbon7EIpFw==	2021-12-21 06:08:46.249832
64	z3g0wtt1vqips7tove2imtfbexlu	Zabiny Brno.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	53945	IK7NGEUkXbEN0O3EI6etIw==	2022-01-18 05:52:49.38039
45	sfi8jzmrygqeu6sq1rady44xvqis	FIBA-logo Square.png	image/png	{"identified":true,"analyzed":true}	local	165546	z5qJ+CaCAe2eHgpPhpHGBw==	2022-01-02 07:33:53.98588
47	ckujq0ascr8bezl5c1jxhcskb5g5	Worcester-Wolves.png	image/png	{"identified":true,"analyzed":true}	local	487172	D4tPUbGIQF7ZUoe3Yt66YA==	2022-01-08 06:24:55.17718
48	1stho04ttc8dsyfzt8hqdd4xdi0o	Ipswich Basketball Logo Transparent background.png	image/png	{"identified":true,"analyzed":true}	local	195824	9z4WMKpaxKzupxEZRmGfOQ==	2022-01-08 06:31:57.56858
49	rq48mzx9tgq6a79rikujt4p8c1tk	Anglia-Ruskin-University-1600x1600.png	image/png	{"identified":true,"analyzed":true}	local	231896	sd02tr7kY/9GpQnrbUFbmA==	2022-01-08 06:34:17.102533
50	ekceks3zmu89xybb4mbx69egv0i3	Nottingham_Trent_University.png	image/png	{"identified":true,"analyzed":true}	local	648129	z32TQRR0VWAHy1sFWsLOcw==	2022-01-08 06:36:45.51697
65	q402s9ftqwzpvn8o8yd0glgyiy8m	Rutronik Stars Keltern Logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	21162	TOH29VCXwmxfUb4+X13T8w==	2022-01-18 05:56:27.659757
52	h06itp2jm2bx8xnhzqgq0ee19pn2	NBL Logo Resize.png	image/png	{"identified":true,"analyzed":true}	local	203339	lrvmYk2AtcUcagn10KpmOw==	2022-01-08 20:22:01.516419
53	puza8dl6paj2p3h3l8km0ywclc8o	WNBL.png	image/png	{"identified":true,"analyzed":true}	local	124501	QcQex8LQRg3ZJl3lgGY8lA==	2022-01-08 20:24:40.354797
55	w8in6cwo0j2bbxqu6pxxz5nqgnur	Europe Cup.png	image/png	{"identified":true,"analyzed":true}	local	91972	GZm4Cdrn+sNSx4Ue4CPbpg==	2022-01-11 06:45:30.800739
56	expkv0yasd1urijwc5y78r5mfty7	EuroCup Women Transparent.png	image/png	{"identified":true,"analyzed":true}	local	188781	dpZ+ivUUwosVC7BmwhkQJQ==	2022-01-11 06:47:29.644295
57	xw5ec4sb75s5k9jzqoqhdou8y2qu	London_Lions (1).png	image/png	{"identified":true,"analyzed":true}	local	14747	zV9a1bADAgJqkKsHFJXksg==	2022-01-11 06:48:48.327707
58	314wo3blbgjj4k211h148im1hxcd	Sheffield College Logo Sq.png	image/png	{"identified":true,"analyzed":true}	local	80467	HWhmjFAYSsuvGPnO7sVIaA==	2022-01-12 05:26:50.754855
59	59yhi2jhjams01azv6sowsgyesme	Leicester-Riders-2.png	image/png	{"identified":true,"analyzed":true}	local	267605	OwMLW57QZsYG6ZZbNmkkdQ==	2022-01-12 05:29:18.97762
62	90wt6517lv8ko6see7ogutnvo6ws	Castors Braine.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	44660	9BHaPBaHuz0LoeMg7CoMcw==	2022-01-18 05:35:40.909589
63	eyxa0l5cgv6n41ppioxczvlgxeo6	Bourges Basket Logo Square.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	41811	f6IxNZ3D08LGuWE972MIBw==	2022-01-18 05:36:03.826825
66	3wmtqy0s9mb7a8osrvuc5zg9eoh3	Spar Gran Canaria Logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	46396	uN8u1atb5+VKu7TEhoR+FA==	2022-01-18 05:59:09.937687
67	2ud7vkptwffyv36o8yccy58jxp2n	Donar_Groningen_logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	229579	+N1mxEKUGn01uUzu82wbqA==	2022-01-19 06:01:07.291947
68	4jgmox6zopd076a1kwargofpzvkn	Kapfenberg Bulls.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	23007	ZjB4ztzLORIcW0o2s/JMdA==	2022-01-19 06:03:11.607608
69	3m0b8cwzwf22razag3jzfv9vtqyd	medi bayreuth logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	104544	w6Yh+CFL4Va7LY+qsTN57g==	2022-01-19 06:06:22.987768
70	xpfry77a9s36n71ewe03brljxlxu	Bahçeşehir-ogo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	113601	EzYovDJu1rQlWRccKj3SFA==	2022-01-19 06:08:50.481014
71	ne7bnxqjjauv1vi68vt68v5cvwnb	Avtodor_Saratov_logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	51412	ujGuyPqHQ2P4IkspFiGkjg==	2022-01-19 06:10:25.317242
73	jw1hncjw2vtd6kh65ou3fpx6y87c	Bakken Bears SQ.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	127627	95p5wUrQYRFza8HZPMSzVQ==	2022-01-19 06:13:15.540395
74	rre8ui8v6wwh84biebk0chvu0f89	James-Watt-Logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	82770	xJ1YI/PDV1fbdSkiViCOPQ==	2022-01-19 20:14:01.582119
75	kx14lkx8gl873okzovptubc68om2	Stockport Lapwings.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	228118	0mdIhrOoODOI9JGnIy6a4w==	2022-01-22 07:19:13.418778
76	4bf8jo6flx7uelyu7vqyttibepd0	Jnr NBL.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	116726	AaLR/095NjDbJrMmErggBg==	2022-01-22 07:30:08.222268
77	i5dxoxrdnjzrvt7sw0enzcogpw49	Manchester Magic.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	147941	CRPNsX8Ad3yFuX7ZR7BDcg==	2022-01-22 07:35:13.21701
78	28lxobsihh1qgvm4g3qy6sup0a4b	Sussex Storm Logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	163345	33tEQM60JmyPOpWC117JeQ==	2022-01-22 07:42:14.356428
79	by8jbih3hhy783g8o7gkxqib69ay	Richmond Knights 1600x1600.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	201125	HKFmpR3bdXUBgcrR1KCQtQ==	2022-01-22 07:54:53.017752
80	pof26nstv1ldwnxcc67tokv99dp8	Islington Panthers.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	102816	pBk4SHwzLuU0hVhh65xfBg==	2022-01-22 07:58:40.954914
81	8e589dlm1t42u5jtvcdlabe92qlt	Haringey Angels.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	278862	YiL2MVJEHNK8n/f20UX/yA==	2022-01-22 08:31:02.721944
82	050qzncxhjxljjyzv7x3z09r8wi3	BBL_Cup_logo.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	15001	UkfKRgu3yZXRxWGKcC+UHg==	2022-01-26 07:33:40.129385
83	imh1o89pu60m561yfg76ivq0prcu	BBL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	195408	kgEYJs7JDvNWhmsgFZVnEA==	2022-01-29 06:22:24.387179
84	5v2llxbu6rlju4zz8phkf2g33ygv	Leicester-Riders.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	304714	0ButaYWmcQ39+NV555aqYw==	2022-02-03 05:59:59.095839
85	3wasfzy8ntxg70gf6hg6murzk2z5	London Lions.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	14747	zV9a1bADAgJqkKsHFJXksg==	2022-02-05 05:20:34.225723
86	aipm8b64wil6hgohx13x84sjdfxe	BE_Primary_Logo_Red.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	100324	I5AlEo6R9CtqtLCRYVeGcg==	2022-02-05 06:04:00.900724
87	l677kice7h43zyqupb365s3zpanu	WBBL-Logo-1600x1600.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	166799	MFcNr+z6xbj8t8peKYdcNQ==	2022-02-05 06:04:35.152117
88	m9yveqm4gnwxxbd2sz2z1qqycoff	FIBA-logo Square.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	165546	z5qJ+CaCAe2eHgpPhpHGBw==	2022-02-05 06:06:12.196455
89	n9jnx3g8faqy2g4salb6wbgo6mv4	BUCS Logo 300x300.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	68991	VEgZtTg1S5NNGbcRJUH7mg==	2022-02-05 06:07:20.585324
90	2e52gwg4bx17k28lg5bb8iql1lkv	BBL trophy.png	image/png	{"identified":true,"analyzed":true}	amazon_dev	19619	Aoszxfpjm061/lXvZJzJtg==	2022-02-09 05:14:18.055163
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-11-01 04:55:28.359706	2021-11-01 04:55:28.359706
\.


--
-- Data for Name: clubs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clubs (id, name, website, youtube, facebook, twitter, instagram, tiktok, abbreviation, created_at, updated_at, slug) FROM stdin;
1	Leicester Riders							LEI	2022-02-03 05:59:59.041643	2022-02-03 05:59:59.130396	leicester-riders
2	London Lions	https://www.thelondonlions.com/	https://www.youtube.com/user/LondonBasketball	https://www.facebook.com/LondonLions	https://twitter.com/LondonLions	https://www.instagram.com/londonlions/	https://vm.tiktok.com/ZMJqeJTtH	LDN	2022-02-05 05:20:34.200444	2022-02-05 05:20:34.234814	london-lions
\.


--
-- Data for Name: competitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competitions (id, name, website, created_at, updated_at, slug, youtube, facebook, twitter, instagram, tiktok, organisation_id) FROM stdin;
11	FIBA Europe Cup	https://www.fiba.basketball/europecup/	2022-01-11 06:43:39.231542	2022-01-11 06:45:30.807114	fiba-europe-cup	https://www.youtube.com/c/FIBA	https://www.facebook.com/FIBAEuropeCup	https://twitter.com/FIBAEuropeCup	https://www.instagram.com/fibaeuropecup/		\N
12	EuroCup Women	https://www.fiba.basketball/eurocupwomen	2022-01-11 06:47:29.634702	2022-01-11 06:47:29.647304	eurocup-women	https://www.youtube.com/fiba		https://twitter.com/eurocupwomen	https://www.instagram.com/eurocupwomen/		\N
13	Jnr. NBL	https://www.basketballengland.co.uk/leagues/nbl/	2022-01-22 07:30:08.206333	2022-01-22 07:30:08.227192	jnr-nbl	https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA	https://www.facebook.com/NBLengland/	https://twitter.com/NBLengland	https://instagram.com/nblengland		\N
14	BBL Cup		2022-01-26 07:32:24.315562	2022-01-26 07:33:40.140566	bbl-cup						\N
15	BBL Trophy		2022-02-09 05:14:18.031679	2022-02-09 05:14:18.066269	bbl-trophy						1
16	BBL Play-Offs		2022-02-09 06:20:06.334682	2022-02-09 06:20:06.334682	bbl-play-offs						1
1	BBL	https://www.bbl.org.uk	2021-11-01 05:32:31.140643	2022-01-07 05:30:18.05125	bbl	https://www.youtube.com/channel/UCMdM4nJ7TJn0ZKwbLG5IPug	https://www.facebook.com/BBLofficial/	https://twitter.com/BBLofficial	https://www.instagram.com/bblofficial	https://www.tiktok.com/@britishbasketballleague	\N
2	WBBL	https://www.wbbl.org.uk	2021-11-01 05:32:44.449328	2022-01-07 05:41:19.067503	wbbl	https://www.youtube.com/channel/UCCCT9UtlzXTDTQR5GFGRUZg	https://www.facebook.com/WBBLofficial/	https://twitter.com/WBBLofficial	https://www.instagram.com/wbblofficial		\N
4	EABL	https://www.eabl.org	2021-11-20 05:08:07.057683	2022-01-07 05:42:39.790322	eabl	https://www.youtube.com/channel/UC7egjV1vaO6j_jJ3yd3E-bg	https://www.facebook.com/OfficialEABL/	https://twitter.com/OfficialEABL	https://www.instagram.com/OfficialEABL/		\N
5	WEABL	https://www.weabl.org	2021-11-20 05:08:27.675988	2022-01-07 05:43:47.378186	weabl	https://www.youtube.com/channel/UCGGS9kxcFMR26ES0sg66Wxg	https://www.facebook.com/WEABL/	https://twitter.com/WEABL	https://www.instagram.com/weabl/		\N
7	BUCS	https://www.bucs.org.uk/sports-page/basketball.html	2021-11-20 05:11:07.993051	2022-01-07 05:50:00.606544	bucs	https://www.youtube.com/user/BUCSsport	https://www.facebook.com/BUCS/	https://twitter.com/BUCSsport	https://www.instagram.com/bucssport		\N
9	International	https://www.fiba.basketball	2022-01-02 07:31:28.183253	2022-01-07 05:51:06.969386	international	https://www.youtube.com/channel/UCtInrnU3QbWqFGsdKT1GZtg	https://www.facebook.com/FIBA/	https://twitter.com/FIBA	https://www.instagram.com/fiba/	https://www.tiktok.com/@fiba	\N
3	NBL	https://www.basketballengland.co.uk/leagues/nbl/	2021-11-14 20:06:18.301963	2022-01-08 20:22:01.523026	nbl	https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA	https://www.facebook.com/NBLengland	https://www.twitter.com/NBLengland	https://www.instagram.com/nblengland/		\N
6	WNBL	https://www.basketballengland.co.uk/leagues/nbl/	2021-11-20 05:09:16.455161	2022-01-08 20:24:40.36479	wnbl	https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA	https://www.facebook.com/NBLengland	https://www.twitter.com/NBLengland	https://www.instagram.com/nblengland/		\N
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, date, competition_id, home_team_id, away_team_id, live_stat_url, stream_url, created_at, updated_at, status, tip_time, slug, season_id) FROM stdin;
47	2022-01-08	2	18	26	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902136/	https://www.youtube.com/watch?v=pt9u_giTkt0	2022-01-08 20:03:40.159548	2022-01-08 20:03:55.17212	1	1515	cardiff-met-archers-vs-sheffield-hatters	1
79	2022-01-15	6	36	14	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942993/	https://www.youtube.com/watch?v=Hjt8TPtrVas	2022-01-15 13:28:18.880394	2022-01-15 20:30:12.53325	1	1930	ipswich-basketball-vs-barking-abbey	1
77	2022-01-15	3	7	29	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936788/	https://www.youtube.com/watch?v=XOTajPNgkvA	2022-01-14 20:54:26.810945	2022-01-15 20:30:10.44744	1	1800	team-solent-kestrels-vs-derby-trailblazers	1
81	2022-01-21	1	9	2		https://www.youtube.com/watch?v=ceq3OYxnFU8	2022-01-17 05:23:19.958786	2022-01-17 05:23:39.567034	1	1930	sheffield-sharks-vs-bristol-flyers	1
74	2022-01-16	2	8	18	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902138/	https://www.youtube.com/watch?v=PrK48UK7keI	2022-01-12 05:21:05.440527	2022-01-12 05:21:24.243586	1	1700	leicester-riders-vs-cardiff-met-archers	1
75	2022-01-15	2	22	26	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902212/	https://www.youtube.com/watch?v=W1UrQAn3PO4	2022-01-12 05:22:25.086499	2022-01-12 05:22:33.891947	1	1500	manchester-met-mystics-vs-sheffield-hatters	1
76	2022-01-12	4	39	40		https://www.youtube.com/watch?v=IPT-ITYK_cs	2022-01-12 05:30:03.056717	2022-01-12 05:30:25.462703	1	1600	sheffield-college-vs-charnwood-college	1
31	2022-01-02	3	29	30	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027580/	https://www.youtube.com/watch?v=IF-Dolwai2g	2022-01-02 09:00:39.518535	2022-01-02 09:00:59.213495	1	1200	derby-trailblazers-vs-team-newcastle-university	1
80	2022-01-15	6	7	2	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942987/	https://www.youtube.com/watch?v=X4FFezO20go	2022-01-15 13:29:21.973973	2022-01-15 20:30:03.070406	1	1530	team-solent-kestrels-vs-bristol-flyers	1
40	2022-01-09	6	15	18		https://www.youtube.com/watch?v=F_bpXRLTW_M	2022-01-08 06:12:30.827723	2022-01-08 06:13:01.399007	1	1400	loughborough-riders-vs-cardiff-met-archers	1
41	2022-01-09	3	7	14	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027582/	https://www.youtube.com/watch?v=s1imzEZcLvY	2022-01-08 06:15:27.919826	2022-01-08 06:15:49.536697	1	1600	team-solent-kestrels-vs-barking-abbey	1
42	2022-01-08	3	15	31	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936778/	https://www.youtube.com/watch?v=uQrvcAzZKNs	2022-01-08 06:17:03.256829	2022-01-08 06:17:09.334814	1	1500	loughborough-riders-vs-nottingham-hoods	1
44	2022-01-08	6	2	35	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942982/	https://www.youtube.com/watch?v=xDkKZaJ6tec	2022-01-08 06:25:41.536811	2022-01-08 06:25:47.876808	1	1700	bristol-flyers-vs-worcester-wolves	1
45	2022-01-08	2	19	23	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902133/	https://www.youtube.com/watch?v=uIvw1BM2nRY	2022-01-08 20:01:00.815462	2022-01-08 20:01:08.195294	1	1300	durham-palatinates-vs-nottingham-wildcats	1
46	2022-01-08	2	22	10	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902134/	 https://www.youtube.com/watch?v=uADpg4RmXWs	2022-01-08 20:02:25.477953	2022-01-08 20:02:31.38713	1	1400	manchester-met-mystics-vs-newcastle-eagles	1
92	2022-01-19	5	39	40		https://www.youtube.com/watch?v=OqE8ysTTEYU	2022-01-19 20:12:08.540849	2022-01-19 20:12:14.714619	1	1600	sheffield-college-vs-charnwood-college-2	1
93	2022-01-19	4	39	52		https://www.youtube.com/watch?v=mjTBV0hVJkA	2022-01-19 20:14:41.388936	2022-01-19 20:14:47.032462	1	1400	sheffield-college-vs-james-watt-college	1
78	2022-01-14	1	13	12	https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907478/	https://www.youtube.com/watch?v=ceq3OYxnFU8	2022-01-14 21:10:48.984972	2022-01-21 05:32:46.166922	1	1930	plymouth-city-patriots-vs-surrey-scorchers	1
82	2021-10-13	11	46	1	https://www.fiba.basketball/europecup/21-22/game/1310/Donar-Groningen-London-Lions#|tab=boxscore	https://www.youtube.com/watch?v=_0EHHbV6Bwo	2022-01-19 06:14:49.625932	2022-01-21 05:35:15.47095	1	1900	donar-groningen-vs-london-lions	1
83	2021-10-20	11	1	47	https://www.fiba.basketball/europecup/21-22/game/2010/London-Lions-Kapfenberg-Bulls#|tab=boxscore	https://www.youtube.com/watch?v=4O4meA0_f9E	2022-01-19 06:17:35.195395	2022-01-21 05:42:46.687228	1	1900	london-lions-vs-kapfenberg-bulls	1
84	2021-10-27	11	1	48	https://www.fiba.basketball/europecup/21-22/game/2710/London-Lions-medi-Bayreuth	https://www.youtube.com/watch?v=_8FBTACtLAk	2022-01-19 06:19:06.523974	2022-01-21 05:42:49.113177	1	1900	london-lions-vs-medi-bayreuth	1
85	2021-11-03	11	1	46	https://www.fiba.basketball/europecup/21-22/game/0311/London-Lions-Donar-Groningen	https://www.youtube.com/watch?v=s3VVf2y_g78	2022-01-19 06:19:55.274543	2022-01-21 05:42:50.540448	1	1900	london-lions-vs-donar-groningen	1
86	2021-11-10	11	47	1	https://www.fiba.basketball/europecup/21-22/game/1011/Kapfenberg-Bulls-London-Lions	https://www.youtube.com/watch?v=4fH5ktmIn1E	2022-01-19 06:20:57.559582	2022-01-21 05:42:52.196304	1	1900	kapfenberg-bulls-vs-london-lions	1
87	2021-11-17	11	48	1	https://www.fiba.basketball/europecup/21-22/game/1711/medi-Bayreuth-London-Lions	https://www.youtube.com/watch?v=qaDMs5WHSbw	2022-01-19 06:22:18.637715	2022-01-21 05:42:53.541515	1	1900	medi-bayreuth-vs-london-lions	1
88	2021-12-08	11	49	1	https://www.fiba.basketball/europecup/21-22/game/0812/London-Lions-Bahcesehir-College-	https://www.youtube.com/watch?v=7UJqGzS_Iek	2022-01-19 06:23:13.741422	2022-01-21 05:42:55.743561	1	1900	bahcesehir-college-vs-london-lions	1
43	2022-01-07	1	2	8	https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2006067/	https://www.youtube.com/watch?v=PSnfmnDiRhc	2022-01-08 06:19:09.865048	2022-01-21 05:43:17.070876	1	1930	bristol-flyers-vs-leicester-riders	1
89	2022-01-08	11	50	1	https://www.fiba.basketball/europecup/21-22/game/1512/Avtodor-Saratov-London-Lions	https://www.youtube.com/watch?v=niEjT-MQelA	2022-01-19 06:24:01.55817	2022-01-21 05:43:18.328507	1	1900	avtodor-saratov-vs-london-lions	1
90	2022-01-12	11	51	1	https://www.fiba.basketball/europecup/21-22/game/1201/London-Lions-Bakken-Bears	https://www.youtube.com/watch?v=vt9C2oGtAb4	2022-01-19 06:24:56.616879	2022-01-21 05:43:20.220915	1	1700	bakken-bears-vs-london-lions	1
96	2021-09-30	12	45	1	https://www.fiba.basketball/eurocupwomen/21-22/game/3009/Spar-Gran-Canaria-London-Lions	https://www.youtube.com/watch?v=mzpERpA9xFE	2022-01-21 05:49:09.094597	2022-01-21 05:57:24.237849	1	1900	gran-canaria-vs-london-lions	1
105	2022-02-05	2	8	19		https://www.youtube.com/watch?v=QYdqXURQ6nI	2022-01-22 07:11:07.55841	2022-01-22 07:11:15.742416	1	1900	leicester-riders-vs-durham-palatinates	1
95	2021-09-23	12	1	45	https://www.fiba.basketball/eurocupwomen/21-22/game/2309/London-Lions-Spar-Gran-Canaria	https://www.youtube.com/watch?v=Q5Pg2-zbZvI&t=483s	2022-01-21 05:48:04.363875	2022-01-21 05:57:22.835427	1	1900	london-lions-vs-gran-canaria	1
97	2021-10-14	12	44	1	https://www.fiba.basketball/eurocupwomen/21-22/game/1410/Rutronik-Stars-Keltern-London-Lions	https://www.youtube.com/watch?v=cU5G9zmf-DQ	2022-01-21 05:50:03.278485	2022-01-21 05:57:25.436288	1	1900	rutronik-stars-keltern-vs-london-lions	1
98	2021-10-20	12	1	43	https://www.fiba.basketball/eurocupwomen/21-22/game/2110/London-Lions-Zabiny-Brno	https://www.youtube.com/watch?v=BKp6ZSmgnTI	2022-01-21 05:51:08.649329	2022-01-21 05:57:26.328585	1	1900	london-lions-vs-zabiny-brno	1
99	2021-10-27	12	1	42	https://www.fiba.basketball/eurocupwomen/21-22/game/2810/London-Lions-Castors-Braine	https://www.youtube.com/watch?v=2oLpH2rRilU	2022-01-21 05:52:23.541395	2022-01-21 05:57:27.177614	1	1900	london-lions-vs-castors-braine	1
100	2021-11-03	12	1	44	https://www.fiba.basketball/eurocupwomen/21-22/game/0311/London-Lions-Rutronik-Stars-Keltern	https://www.youtube.com/watch?v=iRPwp9YxkQQ	2022-01-21 05:53:11.183076	2022-01-21 05:57:28.011071	1	1900	london-lions-vs-rutronik-stars-keltern	1
101	2021-11-24	12	43	1	https://www.fiba.basketball/eurocupwomen/21-22/game/2411/Zabiny-Brno-London-Lions	https://www.youtube.com/watch?v=bmlbyn5tjtI	2022-01-21 05:54:08.350321	2022-01-21 05:57:29.081154	1	1900	zabiny-brno-vs-london-lions	1
102	2021-12-01	12	42	1	https://www.fiba.basketball/eurocupwomen/21-22/game/0112/Castors-Braine-London-Lions	https://www.youtube.com/watch?v=7M-spRHcEAo	2022-01-21 05:54:56.641254	2022-01-21 05:57:30.729271	1	1900	castors-braine-vs-london-lions	1
103	2021-12-15	12	1	41	https://www.fiba.basketball/eurocupwomen/21-22/game/1512/London-Lions-Tango-Bourges	https://www.youtube.com/watch?v=pqH5Qt0nNZU	2022-01-21 05:56:09.344906	2022-01-21 05:57:31.781299	1	1900	london-lions-vs-bourges-basket	1
104	2022-01-05	12	41	1	https://www.fiba.basketball/eurocupwomen/21-22/game/2212/Tango-Bourges-London-Lions	https://www.youtube.com/watch?v=DJqI7sDypy4	2022-01-21 05:56:56.834724	2022-01-21 05:57:33.387915	1	1900	bourges-basket-vs-london-lions	1
91	2022-01-26	11	1	49	https://www.fiba.basketball/europecup/21-22/game/2601/Bahcesehir-College--London-Lions	https://www.youtube.com/watch?v=tHNaxF-jhNk	2022-01-19 06:26:48.269352	2022-01-22 07:12:06.974296	1	1930	london-lions-vs-bahcesehir-college	1
110	2022-01-22	13	36	17	https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048963/	https://www.youtube.com/watch?v=vH4ruegoLxw	2022-01-22 08:13:51.862687	2022-01-22 08:14:04.306616	1	1530	ipswich-basketball-vs-southwark-pride	1
107	2022-01-23	6	53	7	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027611/	https://www.youtube.com/watch?v=WlOqxw5FQCU	2022-01-22 07:20:42.91885	2022-01-22 07:20:50.787796	1	1300	stockport-lapwings-vs-team-solent-kestrels	1
106	2022-01-23	3	30	7	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027583/	https://www.youtube.com/watch?v=RHWdjO-fo7Q	2022-01-22 07:14:25.391684	2022-01-22 07:20:52.556219	1	1530	team-newcastle-university-vs-team-solent-kestrels	1
108	2022-01-22	13	54	55	https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048947/	https://www.youtube.com/watch?v=Ue3rJTfNRf4	2022-01-22 07:45:42.990848	2022-01-22 07:47:47.774783	1	1745	manchester-magic-vs-sussex-storm	1
109	2022-01-22	13	56	57	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2048964/	https://www.youtube.com/watch?v=LBwQilt4rGU	2022-01-22 07:59:37.448632	2022-01-22 07:59:46.81524	1	1315	richmond-knights-vs-islington-panthers	1
111	2022-01-22	13	54	58	https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048962/	https://www.youtube.com/watch?v=HLwY7syEQ6U	2022-01-22 08:36:56.929463	2022-01-22 08:37:40.413835	1	1100	manchester-magic-vs-gca-haringey-angels	1
113	2022-01-22	6	2	15	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942927/	https://www.youtube.com/watch?v=srxAnS1OuoI	2022-01-22 08:41:17.617316	2022-01-22 08:41:26.583813	1	1245	bristol-flyers-vs-loughborough-riders	1
112	2022-01-22	6	35	32	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942999/	https://www.youtube.com/watch?v=6V5NTMFIj-M	2022-01-22 08:40:16.674371	2022-01-22 08:41:28.359778	1	1600	worcester-wolves-vs-reading-rockets	1
117	2022-01-22	2	23	3	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902141/	https://www.youtube.com/watch?v=T-N5quqMI24	2022-01-22 09:54:55.045875	2022-01-22 09:55:20.529507	1	1745	nottingham-wildcats-vs-caledonia-pride	1
114	2022-01-22	2	25	22	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2010552/	https://www.youtube.com/watch?v=Zn3uDQU8HSA	2022-01-22 09:50:37.720404	2022-01-22 09:55:22.243272	1	1900	sevenoaks-suns-vs-manchester-met-mystics	1
115	2022-01-23	2	8	1	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902143/	https://www.youtube.com/watch?v=N4jXNIFRKeU	2022-01-22 09:52:25.192155	2022-01-22 09:55:23.855899	1	1730	leicester-riders-vs-london-lions	1
116	2022-01-23	2	25	20	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902142/	https://www.youtube.com/watch?v=Myl4h5LFuuI	2022-01-22 09:53:26.185159	2022-01-22 09:55:25.393082	1	1800	sevenoaks-suns-vs-essex-rebels	1
120	2022-01-29	3	29	6	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936804/	https://www.youtube.com/watch?v=RakMomN5Qj8	2022-01-29 05:12:01.543857	2022-01-29 05:12:10.771096	1	1900	derby-trailblazers-vs-hemel-storm	1
118	2022-01-29	6	7	15	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942996/	https://www.youtube.com/watch?v=jrA8d61qJpk	2022-01-29 05:09:34.500214	2022-01-29 05:12:11.962151	1	1530	team-solent-kestrels-vs-loughborough-riders	1
119	2022-01-29	3	15	32	https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936806/	https://www.youtube.com/watch?v=rng4yjSC6ZQ	2022-01-29 05:11:07.457291	2022-01-29 05:12:13.466829	1	1600	loughborough-riders-vs-reading-rockets	1
121	2022-01-30	2	10	1	https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2035495/	https://www.youtube.com/watch?v=v8rHzuC_MAA	2022-01-29 05:13:54.909137	2022-01-29 05:14:07.852651	1	1130	newcastle-eagles-vs-london-lions	1
122	2022-01-30	1	5	8	https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2035494/	https://www.youtube.com/watch?v=RH_bCTnSy4E	2022-01-29 05:15:21.026997	2022-01-29 05:15:27.793508	1	1445	manchester-giants-vs-leicester-riders	1
\.


--
-- Data for Name: memberships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.memberships (id, team_id, competition_id, created_at, updated_at) FROM stdin;
1	3	2	2021-11-11 06:49:03.156028	2021-11-11 06:49:03.156028
2	5	1	2021-11-12 13:59:34.041947	2021-11-12 13:59:34.041947
4	1	1	2021-11-15 05:48:15.485738	2021-11-15 05:48:15.485738
5	1	2	2021-11-15 05:48:15.49249	2021-11-15 05:48:15.49249
6	6	3	2021-11-15 05:50:12.627966	2021-11-15 05:50:12.627966
7	2	1	2021-11-15 05:51:03.983785	2021-11-15 05:51:03.983785
8	7	3	2021-11-15 05:54:43.735038	2021-11-15 05:54:43.735038
9	8	1	2021-11-20 05:15:14.836402	2021-11-20 05:15:14.836402
10	8	2	2021-11-20 05:15:14.840685	2021-11-20 05:15:14.840685
11	9	1	2021-11-20 05:17:01.587338	2021-11-20 05:17:01.587338
14	10	1	2021-11-20 05:20:15.217484	2021-11-20 05:20:15.217484
15	10	2	2021-11-20 05:20:15.241044	2021-11-20 05:20:15.241044
16	11	1	2021-11-20 05:21:58.364898	2021-11-20 05:21:58.364898
17	12	1	2021-11-20 05:23:18.232763	2021-11-20 05:23:18.232763
18	4	1	2021-11-20 05:23:36.235523	2021-11-20 05:23:36.235523
19	13	1	2021-11-20 05:30:49.067362	2021-11-20 05:30:49.067362
21	14	4	2021-11-20 05:34:06.392087	2021-11-20 05:34:06.392087
22	14	5	2021-11-20 05:34:06.395988	2021-11-20 05:34:06.395988
23	15	7	2021-11-20 05:35:34.032108	2021-11-20 05:35:34.032108
24	16	7	2021-11-20 05:36:04.978955	2021-11-20 05:36:04.978955
25	17	6	2021-12-05 06:14:26.139248	2021-12-05 06:14:26.139248
26	18	2	2021-12-06 05:52:41.490028	2021-12-06 05:52:41.490028
27	19	2	2021-12-06 05:54:55.339012	2021-12-06 05:54:55.339012
28	20	2	2021-12-06 05:57:20.720337	2021-12-06 05:57:20.720337
29	21	2	2021-12-06 05:59:44.567883	2021-12-06 05:59:44.567883
30	22	2	2021-12-06 06:03:22.008126	2021-12-06 06:03:22.008126
31	23	2	2021-12-06 06:05:24.748342	2021-12-06 06:05:24.748342
32	24	2	2021-12-06 06:08:04.240246	2021-12-06 06:08:04.240246
33	25	2	2021-12-06 06:10:35.903517	2021-12-06 06:10:35.903517
34	26	2	2021-12-06 06:12:19.45444	2021-12-06 06:12:19.45444
35	27	3	2021-12-06 06:15:55.928347	2021-12-06 06:15:55.928347
36	28	3	2021-12-06 06:18:18.187057	2021-12-06 06:18:18.187057
37	29	3	2021-12-06 06:19:58.67419	2021-12-06 06:19:58.67419
38	30	3	2021-12-06 06:22:04.802314	2021-12-06 06:22:04.802314
39	31	3	2021-12-06 06:23:40.782081	2021-12-06 06:23:40.782081
40	32	3	2021-12-06 06:25:04.229729	2021-12-06 06:25:04.229729
41	33	3	2021-12-06 06:26:25.490043	2021-12-06 06:26:25.490043
42	15	3	2021-12-06 06:26:55.131586	2021-12-06 06:26:55.131586
43	34	3	2021-12-06 06:28:18.061632	2021-12-06 06:28:18.061632
44	24	3	2021-12-06 06:28:46.439245	2021-12-06 06:28:46.439245
45	20	3	2021-12-06 06:28:58.444695	2021-12-06 06:28:58.444695
46	15	6	2022-01-08 06:11:26.390706	2022-01-08 06:11:26.390706
47	18	6	2022-01-08 06:11:54.898447	2022-01-08 06:11:54.898447
48	14	3	2022-01-08 06:14:15.841871	2022-01-08 06:14:15.841871
49	14	6	2022-01-08 06:14:15.846637	2022-01-08 06:14:15.846637
50	2	3	2022-01-08 06:22:19.572006	2022-01-08 06:22:19.572006
51	2	6	2022-01-08 06:22:19.58301	2022-01-08 06:22:19.58301
52	35	3	2022-01-08 06:24:55.154109	2022-01-08 06:24:55.154109
53	35	6	2022-01-08 06:24:55.157238	2022-01-08 06:24:55.157238
54	28	6	2022-01-08 06:28:56.150349	2022-01-08 06:28:56.150349
55	7	6	2022-01-08 06:29:33.163808	2022-01-08 06:29:33.163808
56	32	6	2022-01-08 06:30:05.789108	2022-01-08 06:30:05.789108
57	36	3	2022-01-08 06:31:57.553209	2022-01-08 06:31:57.553209
58	36	6	2022-01-08 06:31:57.556645	2022-01-08 06:31:57.556645
59	37	6	2022-01-08 06:34:17.083055	2022-01-08 06:34:17.083055
60	38	6	2022-01-08 06:36:45.506648	2022-01-08 06:36:45.506648
61	1	11	2022-01-11 06:44:00.250437	2022-01-11 06:44:00.250437
62	1	12	2022-01-11 06:48:48.311821	2022-01-11 06:48:48.311821
63	39	4	2022-01-12 05:26:50.741839	2022-01-12 05:26:50.741839
64	40	4	2022-01-12 05:29:18.95892	2022-01-12 05:29:18.95892
65	40	5	2022-01-12 05:29:18.963535	2022-01-12 05:29:18.963535
66	41	12	2022-01-17 06:00:56.704838	2022-01-17 06:00:56.704838
67	42	12	2022-01-18 05:23:41.704724	2022-01-18 05:23:41.704724
68	43	12	2022-01-18 05:52:49.349742	2022-01-18 05:52:49.349742
69	44	12	2022-01-18 05:55:36.560732	2022-01-18 05:55:36.560732
70	45	12	2022-01-18 05:59:09.920899	2022-01-18 05:59:09.920899
71	46	11	2022-01-19 06:01:07.270141	2022-01-19 06:01:07.270141
72	47	11	2022-01-19 06:03:11.601705	2022-01-19 06:03:11.601705
73	48	11	2022-01-19 06:06:22.981545	2022-01-19 06:06:22.981545
74	49	11	2022-01-19 06:08:50.470627	2022-01-19 06:08:50.470627
75	50	11	2022-01-19 06:10:25.310345	2022-01-19 06:10:25.310345
76	51	11	2022-01-19 06:12:23.231735	2022-01-19 06:12:23.231735
77	39	5	2022-01-19 20:11:50.004202	2022-01-19 20:11:50.004202
78	52	4	2022-01-19 20:14:01.538139	2022-01-19 20:14:01.538139
79	53	6	2022-01-22 07:19:13.397172	2022-01-22 07:19:13.397172
80	54	13	2022-01-22 07:35:13.208916	2022-01-22 07:35:13.208916
81	54	3	2022-01-22 07:35:13.210935	2022-01-22 07:35:13.210935
82	55	13	2022-01-22 07:42:14.334041	2022-01-22 07:42:14.334041
83	56	13	2022-01-22 07:54:53.008268	2022-01-22 07:54:53.008268
84	57	13	2022-01-22 07:57:12.013906	2022-01-22 07:57:12.013906
85	17	13	2022-01-22 08:11:31.751299	2022-01-22 08:11:31.751299
86	36	13	2022-01-22 08:12:04.883284	2022-01-22 08:12:04.883284
87	58	13	2022-01-22 08:31:02.706074	2022-01-22 08:31:02.706074
\.


--
-- Data for Name: organisations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organisations (id, name, abbreviation, slug, created_at, updated_at) FROM stdin;
1	British Basketball League	BBL	british-basketball-league	2022-01-29 06:19:19.852829	2022-01-29 06:22:24.398798
2	Basketball England	BE	basketball-england	2022-02-05 06:04:00.868393	2022-02-05 06:04:00.909909
3	Women's British Basketball League	WBBL	women-s-british-basketball-league	2022-02-05 06:04:35.106077	2022-02-05 06:04:35.168214
4	FIBA	FIBA	fiba	2022-02-05 06:06:12.179051	2022-02-05 06:06:12.202362
5	British Universities and Colleges Sport	BUCS	british-universities-and-colleges-sport	2022-02-05 06:07:20.575176	2022-02-05 06:07:20.590499
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20211024043025
20211024043345
20211024043346
20211024043511
20211027040448
20211204050516
20211204052619
20211223053235
20211231063700
20211231141428
20220101044643
20220101045056
20220107051145
20220117053150
20220126053235
20220129060436
20220129062959
20220129064306
20220129071136
20220129090609
20220131061438
20220202053225
20220202060148
20220202061458
20220203052959
20220203055456
\.


--
-- Data for Name: season_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.season_records (id, season_id, competition_id, created_at, updated_at) FROM stdin;
3	1	14	2022-02-07 05:34:21.887145	2022-02-07 05:34:21.887145
4	1	1	2022-02-08 05:42:58.958144	2022-02-08 05:42:58.958144
5	1	11	2022-02-08 05:43:18.001083	2022-02-08 05:43:18.001083
6	1	12	2022-02-08 05:43:18.007263	2022-02-08 05:43:18.007263
7	1	13	2022-02-08 05:43:18.011696	2022-02-08 05:43:18.011696
8	1	2	2022-02-08 05:43:18.018459	2022-02-08 05:43:18.018459
9	1	4	2022-02-08 05:43:18.022925	2022-02-08 05:43:18.022925
10	1	5	2022-02-08 05:43:18.026969	2022-02-08 05:43:18.026969
11	1	7	2022-02-08 05:43:18.030633	2022-02-08 05:43:18.030633
12	1	9	2022-02-08 05:43:18.035338	2022-02-08 05:43:18.035338
13	1	3	2022-02-08 05:43:18.040151	2022-02-08 05:43:18.040151
14	1	6	2022-02-08 05:43:18.043833	2022-02-08 05:43:18.043833
\.


--
-- Data for Name: seasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seasons (id, name, created_at, updated_at) FROM stdin;
1	2021/22	2022-01-29 07:21:17.830979	2022-01-29 07:21:17.830979
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, name, website, youtube, facebook, twitter, instagram, tiktok, created_at, updated_at, slug, abbreviation) FROM stdin;
4	Cheshire Phoenix	https://cheshirephoenix.com/	https://www.youtube.com/channel/UCW9Wcg5SKSzBa-RPR-_ZGBQ	https://www.facebook.com/CheshirePhoenix	https://twitter.com/cheshirenix	https://www.instagram.com/bblcheshirephoenix/	https://www.tiktok.com/@cheshirephoenix	2021-11-12 05:27:47.574612	2022-02-02 06:55:33.008072	cheshire-phoenix	CHE
3	Caledonia Pride	http://caledoniapride.co.uk/	https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg	https://www.facebook.com/CaledoniaPride/	https://twitter.com/Caledonia_Pride	https://www.instagram.com/caledonia_pride/		2021-11-11 06:49:03.138444	2022-02-02 06:55:33.002359	caledonia-pride	CAL
6	Hemel Storm	https://stormbasketball.net/	https://www.youtube.com/channel/UCf4ykU9tVcrMMSnfa-oc-ag	https://www.facebook.com/hemelstormbasketball	https://twitter.com/hemelstorm	https://www.instagram.com/hemelstorm/		2021-11-15 05:50:12.601411	2022-02-02 06:55:33.027784	hemel-storm	HEM
5	Manchester Giants	https://www.manchestergiants.com/	https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg	https://www.facebook.com/mcrgiants	https://twitter.com/mcrgiants	https://www.instagram.com/mcrgiants/	https://www.tiktok.com/@mcrgiants	2021-11-12 13:59:34.028579	2022-02-02 06:55:33.016145	manchester-giants	MCR
9	Sheffield Sharks	https://sheffieldsharks.co.uk/	https://www.youtube.com/user/TheSheffieldSharks	https://www.facebook.com/SheffieldSharks	https://twitter.com/SheffieldSharks	https://www.instagram.com/sheffieldsharks/	https://www.tiktok.com/@sheffieldsharks?	2021-11-20 05:17:01.572686	2022-02-02 06:55:33.066458	sheffield-sharks	SHE
11	Glasgow Rocks	https://glasgowrocks.co.uk/	https://www.youtube.com/user/GlasgowRocksTV	https://www.facebook.com/GlasgowRocks/	https://twitter.com/GlasgowRocks	https://www.instagram.com/glasgowrocks/	https://www.tiktok.com/@glasgowrocks	2021-11-20 05:21:58.36121	2022-02-02 06:55:33.081969	glasgow-rocks	GLA
10	Newcastle Eagles	https://newcastle-eagles.com/	https://www.youtube.com/NewcastleEagles	https://www.facebook.com/NewcastleEagles	https://twitter.com/NewcastleEagle	https://www.instagram.com/NewcastleEagles/	https://www.tiktok.com/@newcastleeagles	2021-11-20 05:20:15.206019	2022-02-02 06:55:33.076341	newcastle-eagles	NEW
12	Surrey Scorchers	https://www.surreyscorchers.co.uk/	https://www.youtube.com/channel/UCJbNe4IrOSPG07QdR5mtOzg	https://www.facebook.com/surreyscorchersbasketball/	https://twitter.com/surreyscorchers	https://www.instagram.com/scorchersbasketball/	https://www.tiktok.com/@surreyscorchers	2021-11-20 05:23:18.225384	2022-02-02 06:55:33.091504	surrey-scorchers	SUR
14	Barking Abbey	https://www.barkingabbeyschool.co.uk/sports-academies/basketball/	https://www.youtube.com/user/AbbeyBasketball	https://www.facebook.com/abbeybasketball/	https://twitter.com/abbeybasketball	https://www.instagram.com/abbeynation		2021-11-20 05:34:06.380393	2022-02-02 06:55:33.100187	barking-abbey	BA
7	Team Solent Kestrels	http://www.solentkestrels.co.uk/	https://www.youtube.com/channel/UCemfyFsoksvKjBb35rKzRFw	https://www.facebook.com/TeamSolentKestrels/	https://twitter.com/SolentKestrels	https://www.instagram.com/solent_kestrels		2021-11-15 05:54:43.722892	2022-02-02 06:55:33.037791	team-solent-kestrels	TSK
8	Leicester Riders	https://riders.basketball/	https://www.youtube.com/user/leicesterriders1	https://www.facebook.com/ridersbball/	https://twitter.com/ridersbball	https://www.instagram.com/ridersbball/	https://www.tiktok.com/@ridersbball	2021-11-20 05:15:14.831489	2022-02-02 06:55:33.055881	leicester-riders	LEI
15	Loughborough Riders							2021-11-20 05:35:34.024803	2022-02-02 06:55:33.110614	loughborough-riders	LOU
1	London Lions	https://www.thelondonlions.com/	https://www.youtube.com/user/LondonBasketball	https://www.facebook.com/LondonLions/	https://twitter.com/London_Lions	https://www.instagram.com/londonlions/	https://www.tiktok.com/@londonlions	2021-11-02 05:13:27.674653	2022-02-02 06:55:33.268966	london-lions	LDN
18	Cardiff Met Archers	https://cardiffmetarchers.leaguerepublic.com/index.html	https://www.youtube.com/user/cardiffmetarchers	https://www.facebook.com/archersbasket/	https://twitter.com/ArchersBasket	https://www.instagram.com/archersbasket		2021-12-06 05:52:41.478582	2022-02-02 06:55:33.130042	cardiff-met-archers	CAR
19	Durham Palatinates	https://www.dur.ac.uk/teamdurham/		https://www.facebook.com/DurhamPalatinates/	https://twitter.com/du_palatinates	https://www.instagram.com/durhampalatinateswbbl/		2021-12-06 05:54:55.33446	2022-02-02 06:55:33.139121	durham-palatinates	DUR
21	Gloucester City Queens	https://www.gloucestercitybasketball.co.uk/		https://www.facebook.com/gloucestercityqueens	https://twitter.com/GlosCityQueens	https://www.instagram.com/GlosCityQueens/		2021-12-06 05:59:44.564552	2022-02-02 06:55:33.153538	gloucester-city-queens	GLO
22	Manchester Met Mystics	http://www.manchestermagicandmystics.co.uk/			https://twitter.com/McrMetMystics	https://www.instagram.com/mcrmetmystics/		2021-12-06 06:03:22.005343	2022-02-02 06:55:33.163908	manchester-met-mystics	MAN
24	Oaklands Wolves	https://oaklandswolves.com/	https://www.youtube.com/channel/UCY6xelFGK7ftzqu_6kyq6LA	https://www.facebook.com/OaklandsballWBBL/	https://twitter.com/Oaklandsball	https://www.instagram.com/oaklandsball_wbbl		2021-12-06 06:08:04.236421	2022-02-02 06:55:33.175322	oaklands-wolves	OAK
25	Sevenoaks Suns	https://www.sevenoakssuns.com/	https://www.youtube.com/channel/UC98mEbb7h4RaBcv2rZO0oRw	https://www.facebook.com/sevenoakssuns	https://twitter.com/SevenoaksSuns	https://www.instagram.com/7oakssuns/		2021-12-06 06:10:35.90022	2022-02-02 06:55:33.179842	sevenoaks-suns	SEV
26	Sheffield Hatters	http://sheffieldhatters.com/		https://www.facebook.com/groups/129803227078351/	https://twitter.com/Hatters_BC	https://www.instagram.com/hatters_bc/		2021-12-06 06:12:19.450511	2022-02-02 06:55:33.189443	sheffield-hatters	SHE
27	Worthing Thunder	https://worthingthunder.club/	https://www.youtube.com/channel/UCAA4-L4cA_J1_ZPqhKBA5iw	https://www.facebook.com/worthingthunder	https://twitter.com/WorthingThunder	https://www.instagram.com/worthing.thunder.basketball/		2021-12-06 06:15:55.917252	2022-02-02 06:55:33.198377	worthing-thunder	WOR
28	Thames Valley Cavaliers	https://tvc-basketball.com/	https://www.youtube.com/channel/UCeF8quD7p0WQOC7-gE8U-zg	https://www.facebook.com/ThamesValleyCavaliers/	https://twitter.com/ThamesValleyCav	https://www.instagram.com/thames_valley_cavaliers		2021-12-06 06:18:18.161499	2022-02-02 06:55:33.202349	thames-valley-cavaliers	TVC
29	Derby Trailblazers	https://www.derbytrailblazers.com/		https://www.facebook.com/DerbyTrailblazersClub/	https://twitter.com/derbyblazers	https://www.instagram.com/trailblazersbball/		2021-12-06 06:19:58.658705	2022-02-02 06:55:33.212726	derby-trailblazers	DER
17	Southwark Pride							2021-12-05 06:14:26.113453	2022-02-02 06:55:33.243327	southwark-pride	SOU
16	University of East London							2021-11-20 05:36:04.971464	2022-02-02 06:55:33.116191	university-of-east-london	UEL
2	Bristol Flyers	https://www.bristolflyers.co.uk/	https://www.youtube.com/user/bristolacademyflyers	https://www.facebook.com/BristolFlyers	https://twitter.com/BristolFlyers	https://www.instagram.com/bristolflyers/	https://www.tiktok.com/@bristolflyers	2021-11-08 05:48:47.678372	2022-02-02 06:55:32.994587	bristol-flyers	BRI
39	Sheffield College	https://sheffieldelite.co.uk/https-sheffieldelite-co-uk-sheffield-college/				https://www.instagram.com/sheffield_elite_bball/		2022-01-12 05:26:50.7336	2022-02-02 06:55:33.271696	sheffield-college	SHE
42	Castors Braine	https://www.castorsbraine.be/	https://www.youtube.com/channel/UCKO2Ip_wXPXrFVnrMCrn2eg	https://www.facebook.com/Royal-Castors-Braine-101091776666338	https://twitter.com/CastorsBraine	https://www.instagram.com/castorsbraine		2022-01-18 05:23:41.69525	2022-02-02 06:55:33.297651	castors-braine	CAS
20	Essex Rebels	https://www.essexrebels.co.uk/	https://www.youtube.com/channel/UCwpHNMiMmz_Zhci2J3QKqPA	https://www.facebook.com/EssexRebels	https://twitter.com/EssexRebels	https://www.instagram.com/essexrebelsbasketball/	https://www.tiktok.com/@essexrebels	2021-12-06 05:57:20.688507	2022-02-02 06:55:33.149024	essex-rebels	ESX
40	Charnwood College	https://riders.basketball/charnwood/		https://www.facebook.com/CharnwoodBasketball/	https://twitter.com/charnwoodbball	https://www.instagram.com/charnwoodbball		2022-01-12 05:29:18.95554	2022-02-02 06:55:33.277075	charnwood-college	CHN
46	Donar Groningen	https://www.donar.nl/	https://www.youtube.com/c/donartv	https://www.facebook.com/donarbasketballgroningen	https://twitter.com/Donar_Official	https://www.instagram.com/donar_official/		2022-01-19 06:01:07.262995	2022-02-02 06:55:33.327301	donar-groningen	DON
30	Team Newcastle University			https://www.facebook.com/teamnewcastlebasketball/	https://twitter.com/teamnewcbball	https://www.instagram.com/nclbasketball		2021-12-06 06:22:04.795659	2022-02-02 06:55:33.218634	team-newcastle-university	TNU
31	Nottingham Hoods	http://www.hoodsbasketball.com/	https://www.youtube.com/user/leeenglish1980	https://www.facebook.com/hoodsbasketball/	https://twitter.com/hoodsbasketball	https://www.instagram.com/hoodsbasketball/		2021-12-06 06:23:40.769861	2022-02-02 06:55:33.224634	nottingham-hoods	NOT
32	Reading Rockets	https://readingrockets.co.uk/	https://www.youtube.com/user/RocketsReading	https://www.facebook.com/readingrocketsbasketball	https://twitter.com/rocketsreading	https://www.instagram.com/rocketsreading/		2021-12-06 06:25:04.223922	2022-02-02 06:55:33.227737	reading-rockets	RDG
33	Bradford Dragons	https://www.bradforddragons.co.uk/		https://www.facebook.com/bradforddragons	https://twitter.com/DragonsBradford	https://www.instagram.com/bradforddragonsbasketball/		2021-12-06 06:26:25.463742	2022-02-02 06:55:33.235583	bradford-dragons	BRA
34	Leicester Warriors	https://www.leicesterwarriors.com/		https://www.facebook.com/LeicesterWarriors	https://twitter.com/Leics_Warriors	https://www.instagram.com/leicesterwarriors/		2021-12-06 06:28:18.05594	2022-02-02 06:55:33.23914	leicester-warriors	LEI
35	Worcester Wolves	https://worcesterwolves.org/	https://www.youtube.com/worcesterwolvesofficial	https://www.facebook.com/NBLWolves	https://twitter.com/NBLWolves	https://www.instagram.com/nblwolves/	https://www.tiktok.com/@worcesterwolves	2022-01-08 06:24:55.144628	2022-02-02 06:55:33.2492	worcester-wolves	WCR
36	Ipswich Basketball	https://www.ipswichbasketball.co.uk/	https://www.youtube.com/channel/UCl0sfiH8ywJ0UbrS2cdN5zA	https://www.facebook.com/IpswichBasketball/	https://twitter.com/IpswichBball	https://www.instagram.com/ipswichbball/		2022-01-08 06:31:57.548395	2022-02-02 06:55:33.254505	ipswich-basketball	IPS
37	Anglia Ruskin University	https://aru.ac.uk/sport/sports/basketball		https://www.facebook.com/arubasketball/	https://twitter.com/ARU_Basketball	https://www.instagram.com/aru_basketball		2022-01-08 06:34:17.077726	2022-02-02 06:55:33.261317	anglia-ruskin-university	ARU
38	Nottingham Trent University	https://www.ntu.ac.uk/sport/get-involved/sports-clubs/sport-clubs/court-sports/womens-basketball			https://twitter.com/trentbasketball			2022-01-08 06:36:45.502814	2022-02-02 06:55:33.265497	nottingham-trent-university	NTU
47	Kapfenberg Bulls	https://bulls-basketball.eu/		https://www.facebook.com/BULLS.BBALL		https://www.instagram.com/bulls.bball/		2022-01-19 06:03:11.580393	2022-02-02 06:55:33.329501	kapfenberg-bulls	KAP
41	Bourges Basket	https://tangobourgesbasket.com/	https://www.youtube.com/user/TangoBourgesBasket	https://www.facebook.com/BourgesBasket/	https://twitter.com/bourgesbasket	https://www.instagram.com/BourgesBasket/		2022-01-17 06:00:56.697417	2022-02-02 06:55:33.310443	bourges-basket	BOU
43	Zabiny Brno	https://www.bkzabiny.cz/	https://www.youtube.com/channel/UCiWWQAwBH2U6Al2rqVrwDSA	https://www.facebook.com/zabiny	http://www.twitter.com/bkzabiny	https://www.instagram.com/zabiny/		2022-01-18 05:52:49.341991	2022-02-02 06:55:33.3141	zabiny-brno	BRN
44	Rutronik Stars Keltern	https://rutronik-stars-keltern.reservix.de/events				https://www.instagram.com/rutronikstarskelter		2022-01-18 05:55:36.546423	2022-02-02 06:55:33.31817	rutronik-stars-keltern	KLT
45	Gran Canaria	http://www.cbislascanarias.com/		https://www.facebook.com/CBIslasCanarias/	https://twitter.com/cbislascanarias	https://www.instagram.com/cbislascanarias/		2022-01-18 05:59:09.918045	2022-02-02 06:55:33.322998	gran-canaria	GC
48	Medi Bayreuth	https://www.medi-bayreuth.de/	https://www.youtube.com/channel/UCcS8dnmtFvTGRSpmn9mrSjg	https://www.facebook.com/medibayreuth	https://twitter.com/medibayreuth	https://www.instagram.com/medibayreuth/?hl=en		2022-01-19 06:06:22.97757	2022-02-02 06:55:33.334777	medi-bayreuth	BAY
13	Plymouth City Patriots	https://www.plymouthcitypatriots.com/	https://www.youtube.com/channel/UCto5GdtQh4neQEfBg8g-dyw	https://www.facebook.com/plymouthcitypatriots/	https://twitter.com/PlymCityPatriot	https://www.instagram.com/plymouthcitypatriots	https://www.tiktok.com/@plymouthcitypatriots	2021-11-20 05:30:49.06169	2022-02-02 06:55:33.096288	plymouth-city-patriots	PLY
50	Avtodor Saratov	http://avtodor.ru/en/		https://www.facebook.com/bcavtodor	http://twitter.com/AvtodorSaratov	https://www.instagram.com/bcavtodor/		2022-01-19 06:10:25.306983	2022-02-02 06:55:33.343214	avtodor-saratov	AVT
51	Bakken Bears	https://www.bakkenbears.com/	https://www.youtube.com/channel/UCI7rQUrj_r5taKDtbRzUQhA	https://www.facebook.com/bakkenbears	https://twitter.com/bakkenbears	https://www.instagram.com/bakkenbears_official/		2022-01-19 06:12:23.227339	2022-02-02 06:55:33.347498	bakken-bears	BAK
52	James Watt College							2022-01-19 20:14:01.516712	2022-02-02 06:55:33.351952	james-watt-college	JAM
53	Stockport Lapwings			https://www.facebook.com/stockportbasketballclub/		https://www.instagram.com/stockportlapwingsbasketball/		2022-01-22 07:19:13.390166	2022-02-02 06:55:33.360076	stockport-lapwings	STO
55	Sussex Storm	https://stormbasketballclub.com/			https://twitter.com/StormBballClub	https://www.instagram.com/stormbballclub/		2022-01-22 07:42:14.327725	2022-02-02 06:55:33.369066	sussex-storm	SUS
23	Nottingham Wildcats	https://nottinghamwildcats.com/	https://www.youtube.com/channel/UCbXSTb3JoDeYyciEosrtRlA	https://www.facebook.com/nottinghamwildcats1976/	https://twitter.com/NottmWildcats	https://www.instagram.com/nottmwildcats/		2021-12-06 06:05:24.734798	2022-02-02 06:55:33.169425	nottingham-wildcats	NOT
49	Bahcesehir College	https://www.bahcesehirsporkulubu.org/en		https://www.facebook.com/BKBasketbol/	https://twitter.com/BKBasketbol	https://www.instagram.com/bkbasketbol/		2022-01-19 06:08:50.46874	2022-02-02 06:55:33.338715	bahcesehir-college	BAH
54	Manchester	http://www.manchestermagicandmystics.co.uk/	https://www.youtube.com/channel/UCKknBsqcTNK0yIKA4cdJGKw	https://www.facebook.com/ManchesterMagicBasketball/	https://twitter.com/mcr_bball	https://www.instagram.com/mcr_bball/		2022-01-22 07:35:13.205993	2022-02-02 06:55:33.364092	manchester-magic	MCR
56	Richmond Knights	https://knightsbasketball.co.uk/	https://www.youtube.com/user/KnightsTVUK	https://en-gb.facebook.com/Knights-Basketball-293218347420952/	http://twitter.com/knightsbball09	https://www.instagram.com/knightsbball09/		2022-01-22 07:54:53.004557	2022-02-02 06:55:33.379854	richmond-knights	RIC
57	Islington Panthers	https://islingtonpanthers.co.uk/				https://www.instagram.com/islingtonpanthers/		2022-01-22 07:57:12.008326	2022-02-02 06:55:33.384796	islington-panthers	ISL
58	GCA Haringey Angels	http://www.haringeyangels.com/		https://www.facebook.com/Haringey-Angels-Basketball-102871834621105/	https://twitter.com/haringeyangels	https://www.instagram.com/haringey_angels_basketball/		2022-01-22 08:31:02.701657	2022-02-02 06:55:33.406139	gca-haringey-angels	GCA
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, admin) FROM stdin;
1	sam@hoopsfix.com	$2a$12$r94H4DxqvUgGnOIF9W3bgeFYM.f1m691ErmkXq3PmWiRllwYbirZK	\N	\N	\N	2021-12-04 05:29:54.514844	2022-01-19 06:27:28.884426	t
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 90, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 90, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: clubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clubs_id_seq', 2, true);


--
-- Name: competitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.competitions_id_seq', 16, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 122, true);


--
-- Name: memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.memberships_id_seq', 87, true);


--
-- Name: organisations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organisations_id_seq', 5, true);


--
-- Name: season_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.season_records_id_seq', 14, true);


--
-- Name: seasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seasons_id_seq', 1, true);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_id_seq', 58, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: clubs clubs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: memberships memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (id);


--
-- Name: organisations organisations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations
    ADD CONSTRAINT organisations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: season_records season_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.season_records
    ADD CONSTRAINT season_records_pkey PRIMARY KEY (id);


--
-- Name: seasons seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_clubs_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_clubs_on_slug ON public.clubs USING btree (slug);


--
-- Name: index_competitions_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_competitions_on_name ON public.competitions USING btree (name);


--
-- Name: index_competitions_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_competitions_on_slug ON public.competitions USING btree (slug);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_type_and_sluggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type_and_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_type, sluggable_id);


--
-- Name: index_games_on_away_team_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_games_on_away_team_id ON public.games USING btree (away_team_id);


--
-- Name: index_games_on_competition_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_games_on_competition_id ON public.games USING btree (competition_id);


--
-- Name: index_games_on_home_team_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_games_on_home_team_id ON public.games USING btree (home_team_id);


--
-- Name: index_games_on_season_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_games_on_season_id ON public.games USING btree (season_id);


--
-- Name: index_games_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_games_on_slug ON public.games USING btree (slug);


--
-- Name: index_memberships_on_competition_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_memberships_on_competition_id ON public.memberships USING btree (competition_id);


--
-- Name: index_memberships_on_team_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_memberships_on_team_id ON public.memberships USING btree (team_id);


--
-- Name: index_season_records_on_competition_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_season_records_on_competition_id ON public.season_records USING btree (competition_id);


--
-- Name: index_season_records_on_season_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_season_records_on_season_id ON public.season_records USING btree (season_id);


--
-- Name: index_teams_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_teams_on_name ON public.teams USING btree (name);


--
-- Name: index_teams_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_teams_on_slug ON public.teams USING btree (slug);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: memberships fk_rails_1a169b8702; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT fk_rails_1a169b8702 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: memberships fk_rails_2410b5d7e1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT fk_rails_2410b5d7e1 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: season_records fk_rails_4f929ce5f2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.season_records
    ADD CONSTRAINT fk_rails_4f929ce5f2 FOREIGN KEY (season_id) REFERENCES public.seasons(id);


--
-- Name: games fk_rails_7642fa5138; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_7642fa5138 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: season_records fk_rails_78489adb20; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.season_records
    ADD CONSTRAINT fk_rails_78489adb20 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: games fk_rails_af8980af68; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_af8980af68 FOREIGN KEY (season_id) REFERENCES public.seasons(id);


--
-- Name: games fk_rails_be1b79f059; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_be1b79f059 FOREIGN KEY (home_team_id) REFERENCES public.teams(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: games fk_rails_e084c83188; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_e084c83188 FOREIGN KEY (away_team_id) REFERENCES public.teams(id);


--
-- PostgreSQL database dump complete
--

