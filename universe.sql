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
-- Name: constllation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constllation (
    name character varying(100) NOT NULL,
    constllation_id integer NOT NULL,
    zodiac text
);


ALTER TABLE public.constllation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    size integer,
    has_life boolean,
    shape text NOT NULL
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
    name character varying(100),
    discription text,
    planet_id integer,
    age integer NOT NULL
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
    name character varying(100),
    size numeric,
    star_id integer,
    description text NOT NULL
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
    name character varying(100),
    size integer,
    is_spherical boolean,
    galaxy_id integer,
    star_type text NOT NULL
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constllation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constllation VALUES ('cancer', 1, 'crab');
INSERT INTO public.constllation VALUES ('taures', 2, 'bull');
INSERT INTO public.constllation VALUES ('virgo', 3, 'maiden');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 110000, false, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'virgo_a', 15000000, false, 'irregular');
INSERT INTO public.galaxy VALUES (3, 'milky_way', 10000000, true, 'elliptical');
INSERT INTO public.galaxy VALUES (4, 'black_eye_galaxy', 1000000, false, 'coma');
INSERT INTO public.galaxy VALUES (5, 'ciricunis', 400000, true, 'circle');
INSERT INTO public.galaxy VALUES (6, 'cigar_galaxy', 7000000, false, 'cigar');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'month', 1, 1234);
INSERT INTO public.moon VALUES (2, 'phobos', 'god_of_fear', 2, 453);
INSERT INTO public.moon VALUES (3, 'deimos', 'god_of_dread', 3, 496);
INSERT INTO public.moon VALUES (4, 'lo', 'jupitor', 4, 921);
INSERT INTO public.moon VALUES (5, 'europa', 'little', 5, 564);
INSERT INTO public.moon VALUES (6, 'callisto', 'one_of_jupiters', 6, 809);
INSERT INTO public.moon VALUES (7, 'elara', 'mortal_princess', 7, 4836);
INSERT INTO public.moon VALUES (8, 'himalia', 'mountain', 8, 900);
INSERT INTO public.moon VALUES (9, 'ganymede', 'hero_of_troy', 9, 123);
INSERT INTO public.moon VALUES (10, 'sinope', 'daughter_of_aris', 10, 783);
INSERT INTO public.moon VALUES (11, 'ananke', 'force', 11, 873);
INSERT INTO public.moon VALUES (12, 'leda', 'spartan_queen', 12, 938);
INSERT INTO public.moon VALUES (13, 'carme', 'godess_of_mountains', 11, 223);
INSERT INTO public.moon VALUES (14, 'helen', 'grand_daughter_of_cronos', 10, 768);
INSERT INTO public.moon VALUES (15, 'pandora', 'gift_sender', 9, 789);
INSERT INTO public.moon VALUES (16, 'atlas', 'one_of_the_titans', 8, 695);
INSERT INTO public.moon VALUES (17, 'pan', 'god_of_the_wild', 7, 437);
INSERT INTO public.moon VALUES (18, 'juliet', 'romeo_and_juliet', 6, 988);
INSERT INTO public.moon VALUES (19, 'ersa', 'daughter_of_zeus', 5, 204);
INSERT INTO public.moon VALUES (20, 'valetudo', 'god_of_health', 3, 983);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 7777777, 1, 'Home');
INSERT INTO public.planet VALUES (2, 'mars', 88888, 1, 'brown');
INSERT INTO public.planet VALUES (3, 'venus', 288899, 2, 'light');
INSERT INTO public.planet VALUES (4, 'mercury', 220000, 2, 'gemini');
INSERT INTO public.planet VALUES (5, 'jupiter', 9999999, 3, 'big');
INSERT INTO public.planet VALUES (6, 'uranus', 555555, 3, 'aquarius');
INSERT INTO public.planet VALUES (7, 'neptune', 888888, 4, 'piceses');
INSERT INTO public.planet VALUES (8, 'saturn', 888888, 4, 'capricorn');
INSERT INTO public.planet VALUES (9, 'pluto', 1111111, 5, 'scorpion');
INSERT INTO public.planet VALUES (10, 'ceres', 333333, 5, 'virgo');
INSERT INTO public.planet VALUES (11, 'eris', 22222, 6, 'aries');
INSERT INTO public.planet VALUES (12, 'sedna', 77777, 6, 'quaoar');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mirach', 35000, true, 2, 'Hot_blue_star');
INSERT INTO public.star VALUES (2, 'almach', 723000, false, 1, 'red_dwarf_star');
INSERT INTO public.star VALUES (3, 'nembus', 500000, true, 5, 'red_giant_star');
INSERT INTO public.star VALUES (4, 'sadiradra', 8093300, true, 3, 'whiet_dwarf');
INSERT INTO public.star VALUES (5, 'titawin', 525000, false, 4, 'neuron_star');
INSERT INTO public.star VALUES (6, 'adhil', 30000, true, 6, 'procyon');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: constllation constllation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constllation
    ADD CONSTRAINT constllation_name_key UNIQUE (name);


--
-- Name: constllation constllation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constllation
    ADD CONSTRAINT constllation_pkey PRIMARY KEY (constllation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_shape_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_shape_key UNIQUE (shape);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


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

