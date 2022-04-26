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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    temperature numeric(1,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    temperature numeric(1,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer,
    name character varying
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    more_info_id integer NOT NULL,
    name character varying,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    temperature numeric(1,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer,
    name character varying
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    temperature numeric(1,1),
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer,
    is_spherical boolean NOT NULL,
    name character varying
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 1, 1, 0.1, '1', true, true, 'name 1');
INSERT INTO public.galaxy VALUES (2, 2, 2, 0.2, '2', true, true, 'name 2');
INSERT INTO public.galaxy VALUES (3, 3, 3, 0.3, '3', true, true, 'name 3');
INSERT INTO public.galaxy VALUES (4, 4, 4, 0.4, '4', true, true, 'name 4');
INSERT INTO public.galaxy VALUES (5, 5, 5, 0.5, '5', true, true, 'name 5');
INSERT INTO public.galaxy VALUES (6, 6, 6, 0.6, '6', true, true, 'name 6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 1, 0.1, '1', true, true, 1, 'moon 1');
INSERT INTO public.moon VALUES (2, 2, 2, 0.2, '2', true, true, 1, 'moon 2');
INSERT INTO public.moon VALUES (3, 3, 3, 0.3, '3', true, true, 1, 'moon 3');
INSERT INTO public.moon VALUES (4, 4, 4, 0.4, '4', true, true, 1, 'moon 4');
INSERT INTO public.moon VALUES (5, 5, 5, 0.5, '5', true, true, 1, 'moon 5');
INSERT INTO public.moon VALUES (6, 6, 6, 0.6, '6', true, true, 1, 'moon 6');
INSERT INTO public.moon VALUES (7, 7, 7, 0.7, '7', true, true, 1, 'moon 7');
INSERT INTO public.moon VALUES (8, 8, 8, 0.8, '8', true, true, 1, 'moon 8');
INSERT INTO public.moon VALUES (9, 9, 9, 0.9, '9', true, true, 1, 'moon 9');
INSERT INTO public.moon VALUES (10, 10, 10, 0.9, '10', true, true, 1, 'moon 10');
INSERT INTO public.moon VALUES (11, 11, 11, 0.1, '11', true, true, 2, 'moon 11');
INSERT INTO public.moon VALUES (12, 12, 12, 0.2, '12', true, true, 2, 'moon 12');
INSERT INTO public.moon VALUES (13, 13, 13, 0.3, '13', true, true, 2, 'moon 13');
INSERT INTO public.moon VALUES (14, 14, 14, 0.4, '14', true, true, 2, 'moon 14');
INSERT INTO public.moon VALUES (15, 15, 15, 0.5, '15', true, true, 2, 'moon 15');
INSERT INTO public.moon VALUES (16, 16, 16, 0.6, '16', true, true, 2, 'moon 16');
INSERT INTO public.moon VALUES (17, 17, 17, 0.7, '17', true, true, 2, 'moon 17');
INSERT INTO public.moon VALUES (18, 18, 18, 0.8, '18', true, true, 2, 'moon 18');
INSERT INTO public.moon VALUES (19, 19, 19, 0.9, '19', true, true, 2, 'moon 19');
INSERT INTO public.moon VALUES (20, 20, 20, 0.9, '20', true, true, 2, 'moon 20');


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 1, 1, 1, 'info 1', '1', true, true);
INSERT INTO public.more_info VALUES (1, 1, 1, 2, 2, 'info 2', '2', true, true);
INSERT INTO public.more_info VALUES (1, 1, 1, 3, 3, 'info 3', '3', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 0.1, '1', true, true, 1, 'planet 1');
INSERT INTO public.planet VALUES (2, 2, 2, 0.2, '2', true, true, 1, 'planet 2');
INSERT INTO public.planet VALUES (3, 3, 3, 0.3, '3', true, true, 1, 'planet 3');
INSERT INTO public.planet VALUES (4, 4, 4, 0.4, '4', true, true, 1, 'planet 4');
INSERT INTO public.planet VALUES (5, 5, 5, 0.5, '5', true, true, 1, 'planet 5');
INSERT INTO public.planet VALUES (6, 6, 6, 0.6, '6', true, true, 1, 'planet 6');
INSERT INTO public.planet VALUES (7, 7, 7, 0.1, '7', true, true, 2, 'planet 7');
INSERT INTO public.planet VALUES (8, 8, 8, 0.2, '8', true, true, 2, 'planet 8');
INSERT INTO public.planet VALUES (9, 9, 9, 0.3, '9', true, true, 2, 'planet 9');
INSERT INTO public.planet VALUES (10, 10, 10, 0.4, '10', true, true, 2, 'planet 10');
INSERT INTO public.planet VALUES (11, 11, 11, 0.5, '11', true, true, 2, 'planet 11');
INSERT INTO public.planet VALUES (12, 12, 12, 0.6, '12', true, true, 2, 'planet 12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 0.1, '1', true, 1, true, 'star 1');
INSERT INTO public.star VALUES (2, 2, 2, 0.2, '2', true, 1, true, 'star 2');
INSERT INTO public.star VALUES (3, 3, 3, 0.3, '3', true, 1, true, 'star 3');
INSERT INTO public.star VALUES (4, 4, 4, 0.4, '4', true, 2, true, 'star 4');
INSERT INTO public.star VALUES (5, 5, 5, 0.5, '5', true, 2, true, 'star 5');
INSERT INTO public.star VALUES (6, 6, 6, 0.6, '6', true, 2, true, 'star 6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_description_key UNIQUE (description);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

