--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    description text,
    name character varying(255) NOT NULL,
    does_spin boolean,
    splat character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: imperium; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.imperium (
    imperium_id integer NOT NULL,
    segmentum_name character varying(255) NOT NULL,
    planets character varying(255),
    name character varying(255),
    splat character varying(255)
);


ALTER TABLE public.imperium OWNER TO freecodecamp;

--
-- Name: imperium_imperium_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.imperium_imperium_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imperium_imperium_id_seq OWNER TO freecodecamp;

--
-- Name: imperium_imperium_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.imperium_imperium_id_seq OWNED BY public.imperium.imperium_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    inhabited boolean NOT NULL,
    planet_id integer NOT NULL,
    orbiting_planet character varying(255) NOT NULL,
    splat character varying(255)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size numeric,
    peace boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    splat character varying(255)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    splat character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: imperium imperium_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperium ALTER COLUMN imperium_id SET DEFAULT nextval('public.imperium_imperium_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Ultramar', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Fenris', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'Nocturne', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Calphonia', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Sol', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Deliverence', NULL, NULL);


--
-- Data for Name: imperium; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.imperium VALUES (1, 'frig', 'many', 'frig2', 'frig3');
INSERT INTO public.imperium VALUES (2, 'frig', 'many2', 'frig2', 'frig4');
INSERT INTO public.imperium VALUES (3, 'frig', 'many3', 'frig2', 'frig5');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', false, 5, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', false, 5, 'Jupiter1', NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', false, 6, 'Saturn1', NULL);
INSERT INTO public.moon VALUES (4, 'Moon3', false, 6, 'Saturn', NULL);
INSERT INTO public.moon VALUES (6, 'Moon2', false, 5, 'Jupiter2', NULL);
INSERT INTO public.moon VALUES (7, 'Moon3', false, 6, 'Saturn2', NULL);
INSERT INTO public.moon VALUES (8, 'Moon3', false, 6, 'Saturn3', NULL);
INSERT INTO public.moon VALUES (9, 'Moon2', false, 5, 'Jupiter3', NULL);
INSERT INTO public.moon VALUES (10, 'Moon3', false, 6, 'Saturn5', NULL);
INSERT INTO public.moon VALUES (11, 'Moon3', false, 6, 'Saturn4', NULL);
INSERT INTO public.moon VALUES (12, 'Moon2', false, 5, 'Earth', NULL);
INSERT INTO public.moon VALUES (13, 'Moon3', false, 6, 'Mars', NULL);
INSERT INTO public.moon VALUES (14, 'Moon3', false, 6, 'Calph', NULL);
INSERT INTO public.moon VALUES (15, 'Moon2', false, 5, 'Earth2', NULL);
INSERT INTO public.moon VALUES (16, 'Moon3', false, 6, 'Mars1', NULL);
INSERT INTO public.moon VALUES (17, 'Moon3', false, 6, 'Calph2', NULL);
INSERT INTO public.moon VALUES (18, 'Moon2', false, 5, 'Earth3', NULL);
INSERT INTO public.moon VALUES (19, 'Moon3', false, 6, 'Mars2', NULL);
INSERT INTO public.moon VALUES (20, 'Moon3', false, 6, 'Calph3', NULL);
INSERT INTO public.moon VALUES (5, 'Mooney', false, 6, 'Earth22', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (6, 'neptune', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (10, 'Calph', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Cadia', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Beta Garmond', NULL, false, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 1092, 'Red', 'Bazel', 1, NULL);
INSERT INTO public.star VALUES (3, 11, 'Blue', 'Lyla', 2, NULL);
INSERT INTO public.star VALUES (4, 5, 'Red', 'Sam', 2, NULL);
INSERT INTO public.star VALUES (5, 42, 'Gold', 'Erica', 3, NULL);
INSERT INTO public.star VALUES (6, 38, 'Silver', 'Ben', 3, NULL);
INSERT INTO public.star VALUES (7, 2023, 'Yellow', 'Sol', 4, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: imperium_imperium_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.imperium_imperium_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_splat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_splat_key UNIQUE (splat);


--
-- Name: imperium imperium_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperium
    ADD CONSTRAINT imperium_pkey PRIMARY KEY (imperium_id);


--
-- Name: imperium imperium_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperium
    ADD CONSTRAINT imperium_planets_key UNIQUE (planets);


--
-- Name: imperium imperium_splat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperium
    ADD CONSTRAINT imperium_splat_key UNIQUE (splat);


--
-- Name: moon moon_orbiting_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbiting_planet_key UNIQUE (orbiting_planet);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_splat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_splat_key UNIQUE (splat);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_splat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_splat_key UNIQUE (splat);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_splat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_splat_key UNIQUE (splat);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

