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
    name character varying NOT NULL,
    size_light_year numeric,
    number_of_stars character varying,
    constellation character varying
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
    name character varying NOT NULL,
    equotorial_diameter numeric,
    mass numeric,
    planet_id integer
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
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    order_from_sun integer,
    planet_types text,
    equotorial_diameter numeric
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
    name character varying NOT NULL,
    brightness numeric,
    galaxy_id integer,
    constellation character varying
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying NOT NULL,
    year_established integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, '100-400 billion', 'Sagittarius');
INSERT INTO public.galaxy VALUES (34, 'Andoromeda Galaxy', 152000, '~1 trillion', 'Andromeda');
INSERT INTO public.galaxy VALUES (35, 'Whirlpool Galaxy', 76000, NULL, 'Canes Vanatici');
INSERT INTO public.galaxy VALUES (36, 'Sombrero Galaxy', 49000, NULL, 'Virgo');
INSERT INTO public.galaxy VALUES (37, 'Large MAgellanic Cloud', 32200, NULL, 'Dorado/Mensa');
INSERT INTO public.galaxy VALUES (38, 'Small Magellanic Cloud', 18900, NULL, 'Tucano and Hydrus');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.272, 0.0123, 3);
INSERT INTO public.moon VALUES (2, 'Io', 0.285, 0.0150, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 0.246, 0.00804, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 0.413, 0.0248, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 0.378, 0.0180, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', 0.031, 0.00000628, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 0.04, 0.0000181, 6);
INSERT INTO public.moon VALUES (8, 'Tethys', 0.084, 0.000103, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 0.088, 0.000183, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 0.12, 0.000386, 6);
INSERT INTO public.moon VALUES (11, 'Titan', 0.404, 0.0225, 6);
INSERT INTO public.moon VALUES (12, 'Lapetus', 0.115, 0.000302, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 0.037, 0.0000110, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 0.091, 0.000226, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 0.092, 0.00020, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 0.124, 0.00059, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 0.119, 0.000505, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 0.212, 0.00358, 8);
INSERT INTO public.moon VALUES (19, 'Charon', 0.095, 0.000255, 9);
INSERT INTO public.moon VALUES (20, 'Unknown', 1, 1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, true, 1, 'planet', 0.383);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 2, 'planet', 0.949);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 3, 'planet', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 4, 'planet', 0.532);
INSERT INTO public.planet VALUES (5, 'Jupitar', false, true, 5, 'planet', 11.209);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 6, 'planet', 9.449);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 7, 'planet', 4.007);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 8, 'planet', 3.883);
INSERT INTO public.planet VALUES (9, 'Ceres', false, true, NULL, 'dwarf planet', 0.0742);
INSERT INTO public.planet VALUES (10, 'Orcus', false, true, NULL, 'dwarf planet', 0.072);
INSERT INTO public.planet VALUES (11, 'Pluto', false, true, NULL, 'dwarf planet', 0.186);
INSERT INTO public.planet VALUES (12, 'Haumea', false, true, NULL, 'dwarf planet', 0.13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (12, 'Betelgeuse', 0.42, 1, 'Orion');
INSERT INTO public.star VALUES (11, 'Procyon', 0.37, 1, 'Canis Minor');
INSERT INTO public.star VALUES (10, 'Rigel', 0.13, 1, 'Orion');
INSERT INTO public.star VALUES (9, 'Vega', 0.03, 1, 'Lyra');
INSERT INTO public.star VALUES (8, 'Arcturus', -0.05, 1, 'Bootes');
INSERT INTO public.star VALUES (7, 'Sirius', -1.46, 1, 'Canis Major');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Big Bang', 1927);
INSERT INTO public.universe VALUES (2, 'Geicenntrism', 0);
INSERT INTO public.universe VALUES (3, 'Heliocentrism', 1514);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 38, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 41, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 45, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

