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
-- Name: disasters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.disasters (
    disasters_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fiction boolean
);


ALTER TABLE public.disasters OWNER TO freecodecamp;

--
-- Name: disasters_disaster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.disasters_disaster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disasters_disaster_id_seq OWNER TO freecodecamp;

--
-- Name: disasters_disaster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.disasters_disaster_id_seq OWNED BY public.disasters.disasters_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_million_of_years numeric(4,1),
    galaxy_types character varying(30)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    age_in_million_of_years numeric(4,1),
    planet_id integer NOT NULL,
    number_of_craters integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    planet_type character varying(30),
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    distance_from_earth_in_lightyears integer,
    galaxy_id integer NOT NULL
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
-- Name: disasters disasters_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disasters ALTER COLUMN disasters_id SET DEFAULT nextval('public.disasters_disaster_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: disasters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.disasters VALUES (1, 'heat death', false);
INSERT INTO public.disasters VALUES (2, 'black hole', false);
INSERT INTO public.disasters VALUES (3, 'aliens', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galactus', true, 125.7, 'solid');
INSERT INTO public.galaxy VALUES (2, 'terraria', true, 0.5, 'solid');
INSERT INTO public.galaxy VALUES (3, 'subnautica', false, 5.9, 'liquid');
INSERT INTO public.galaxy VALUES (4, 'great orion', false, 546.0, 'gas');
INSERT INTO public.galaxy VALUES (5, 'star wars', true, 999.0, 'solid');
INSERT INTO public.galaxy VALUES (6, 'hell', false, 999.9, 'liquid');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', true, NULL, 1, 65);
INSERT INTO public.moon VALUES (2, 'juniper', true, NULL, 2, 5);
INSERT INTO public.moon VALUES (3, 'saturn 1', true, NULL, 3, 1);
INSERT INTO public.moon VALUES (4, 'saturn 2', true, NULL, 4, 1);
INSERT INTO public.moon VALUES (5, 'saturn 3', true, NULL, 5, 2);
INSERT INTO public.moon VALUES (6, 'saturn 4', true, NULL, 6, 3);
INSERT INTO public.moon VALUES (7, 'saturn 5', true, NULL, 6, 1);
INSERT INTO public.moon VALUES (8, 'saturn 6', true, NULL, 7, 2);
INSERT INTO public.moon VALUES (9, 'saturn 7', true, NULL, 8, 3);
INSERT INTO public.moon VALUES (10, 'saturn 8', true, NULL, 9, 1);
INSERT INTO public.moon VALUES (11, 'saturn 9', true, NULL, 10, 2);
INSERT INTO public.moon VALUES (12, 'saturn 10', true, NULL, 11, 3);
INSERT INTO public.moon VALUES (13, 'saturn 11', true, 1.0, 12, NULL);
INSERT INTO public.moon VALUES (14, 'saturn 12', true, 2.0, 10, NULL);
INSERT INTO public.moon VALUES (15, 'saturn 13', true, 3.0, 11, NULL);
INSERT INTO public.moon VALUES (16, 'saturn 14', true, 1.0, 9, NULL);
INSERT INTO public.moon VALUES (17, 'saturn 15', true, 2.0, 8, NULL);
INSERT INTO public.moon VALUES (18, 'saturn 16', true, 3.0, 7, NULL);
INSERT INTO public.moon VALUES (19, 'saturn 17', true, 1.0, 1, NULL);
INSERT INTO public.moon VALUES (20, 'saturn 18', true, 2.0, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 'the mother earth, house of dragons', 'earth', 6);
INSERT INTO public.planet VALUES (2, 'mars', false, 'The red planet', 'fire', 5);
INSERT INTO public.planet VALUES (3, 'planet 1', true, NULL, 'generic', 4);
INSERT INTO public.planet VALUES (4, 'planet 2', true, NULL, 'generic', 3);
INSERT INTO public.planet VALUES (5, 'planet 3', true, NULL, 'generic', 2);
INSERT INTO public.planet VALUES (6, 'planet 4', true, NULL, 'generic', 1);
INSERT INTO public.planet VALUES (7, 'planet 5', true, NULL, 'generic', 2);
INSERT INTO public.planet VALUES (8, 'planet 6', true, NULL, 'generic', 3);
INSERT INTO public.planet VALUES (9, 'planet 7', true, NULL, 'generic', 4);
INSERT INTO public.planet VALUES (10, 'planet 8', true, NULL, 'generic', 5);
INSERT INTO public.planet VALUES (11, 'planet 9', true, NULL, 'generic', 6);
INSERT INTO public.planet VALUES (12, 'planet 10', true, NULL, 'generic', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'north star', true, 25, 1);
INSERT INTO public.star VALUES (2, 'south star', true, 10, 3);
INSERT INTO public.star VALUES (3, 'east star', false, 4, 5);
INSERT INTO public.star VALUES (4, 'west star', false, 30, 2);
INSERT INTO public.star VALUES (5, 'light star', true, 100, 4);
INSERT INTO public.star VALUES (6, 'dark star', false, 100, 6);


--
-- Name: disasters_disaster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.disasters_disaster_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: disasters disasters_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disasters
    ADD CONSTRAINT disasters_name_key UNIQUE (name);


--
-- Name: disasters disasters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disasters
    ADD CONSTRAINT disasters_pkey PRIMARY KEY (disasters_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_foreignkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_foreignkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

