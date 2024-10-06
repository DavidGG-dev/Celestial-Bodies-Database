--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(20),
    description character varying(20) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    has_life boolean,
    description character varying(20) NOT NULL,
    coordinates character varying(20) NOT NULL
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
    name character varying(20),
    planet_id integer,
    nice_rating integer,
    description character varying(20) NOT NULL
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
    name character varying(20),
    star_id integer,
    has_life boolean,
    description text NOT NULL,
    nice_rating integer,
    distance_from_earth numeric
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
    name character varying(20),
    galaxy_id integer NOT NULL,
    coordinates character varying(20) NOT NULL,
    description character varying(20) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Cygnus X-1', 'Black hole');
INSERT INTO public.black_hole VALUES (2, 'M87*', 'Massive black hole');
INSERT INTO public.black_hole VALUES (3, 'Sag A*', 'Black hole in MW');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Home Galaxy', 'RA 17h 45m 40s');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Nearest Galaxy', 'RA 00h 42m 44s');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Small Spiral', 'RA 01h 33m 50s');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', false, 'Bright Core', 'RA 12h 39m 59s');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', true, 'Interacting Galaxy', 'RA 13h 29m 52s');
INSERT INTO public.galaxy VALUES (6, 'Messier 81', false, 'Active Nucleus', 'RA 09h 55m 33s');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (17, 'Phobos', 27, 8, 'Mars moon 1');
INSERT INTO public.moon VALUES (18, 'Deimos', 27, 7, 'Mars moon 2');
INSERT INTO public.moon VALUES (19, 'Aphro', 28, 9, 'Venus moon 1');
INSERT INTO public.moon VALUES (20, 'Vesper', 28, 6, 'Venus moon 2');
INSERT INTO public.moon VALUES (21, 'Prox I', 29, 9, 'Proxima moon 1');
INSERT INTO public.moon VALUES (22, 'Prox II', 29, 8, 'Proxima moon 2');
INSERT INTO public.moon VALUES (23, 'Alpha I', 30, 7, 'Alpha moon 1');
INSERT INTO public.moon VALUES (24, 'Alpha II', 30, 6, 'Alpha moon 2');
INSERT INTO public.moon VALUES (25, 'Kepl I', 31, 8, 'Kepler moon 1');
INSERT INTO public.moon VALUES (26, 'Kepl II', 31, 7, 'Kepler moon 2');
INSERT INTO public.moon VALUES (27, 'Pol I', 32, 6, 'Polaris moon 1');
INSERT INTO public.moon VALUES (28, 'Pol II', 32, 5, 'Polaris moon 2');
INSERT INTO public.moon VALUES (29, 'Rigel I', 33, 9, 'Rigel moon 1');
INSERT INTO public.moon VALUES (30, 'Rigel II', 33, 8, 'Rigel moon 2');
INSERT INTO public.moon VALUES (31, 'Vega I', 34, 6, 'Vega moon 1');
INSERT INTO public.moon VALUES (32, 'Vega II', 34, 7, 'Vega moon 2');
INSERT INTO public.moon VALUES (33, 'Bet I', 35, 5, 'Betelgeuse moon 1');
INSERT INTO public.moon VALUES (34, 'Bet II', 35, 4, 'Betelgeuse moon 2');
INSERT INTO public.moon VALUES (35, 'Sirius I', 36, 8, 'Sirius moon 1');
INSERT INTO public.moon VALUES (36, 'Sirius II', 36, 7, 'Sirius moon 2');
INSERT INTO public.moon VALUES (37, 'Barn I', 37, 9, 'Barnard moon 1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (27, 'Mars', 2, false, 'Red planet with potential for life', 7, 225);
INSERT INTO public.planet VALUES (28, 'Venus', 3, false, 'Extreme temperatures and atmosphere', 3, 162);
INSERT INTO public.planet VALUES (29, 'Proxima b', 4, NULL, 'Exoplanet in the habitable zone', 9, 4.24);
INSERT INTO public.planet VALUES (30, 'Alpha Centauri Bb', 5, false, 'Potentially rocky exoplanet', 6, 4.37);
INSERT INTO public.planet VALUES (31, 'Kepler-22b', 6, NULL, 'First planet found in the habitable zone', 8, 600);
INSERT INTO public.planet VALUES (32, 'Polaris Ab', 5, false, 'Gas giant orbiting Polaris', 434, 434);
INSERT INTO public.planet VALUES (33, 'Rigel b', 6, false, 'Massive gas giant', 4, 860);
INSERT INTO public.planet VALUES (34, 'Vega I', 6, false, 'Hot planet near Vega', 3, 25);
INSERT INTO public.planet VALUES (35, 'Betelgeuse I', 2, false, 'Molten planet near Betelgeuse', 2, 642);
INSERT INTO public.planet VALUES (36, 'Sirius C', 2, false, 'Cold planet orbiting Sirius', 6, 8.6);
INSERT INTO public.planet VALUES (37, 'Barnard b', 7, false, 'Exoplanet around Barnard star', 5, 5.96);
INSERT INTO public.planet VALUES (38, 'GJ 357 d', 4, true, 'Potentially habitable exoplanet', 9, 31.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 1, 'RA 06h 45m 09s', 'Brightest star');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'RA 05h 55m 10s', 'Red supergiant');
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1, 'RA 14h 39m 35s', 'Closest star system');
INSERT INTO public.star VALUES (5, 'Polaris', 2, 'RA 02h 31m 49s', 'North Star');
INSERT INTO public.star VALUES (6, 'Rigel', 2, 'RA 05h 14m 32s', 'Blue supergiant');
INSERT INTO public.star VALUES (7, 'Vega', 3, 'RA 18h 36m 56s', 'Bright star in Lyra');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 38, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_coordinates_key UNIQUE (coordinates);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_description UNIQUE (description);


--
-- Name: black_hole unique_description_black_hole; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_description_black_hole UNIQUE (description);


--
-- Name: galaxy unique_description_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_description_galaxy UNIQUE (description);


--
-- Name: moon unique_description_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_description_moon UNIQUE (description);


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

