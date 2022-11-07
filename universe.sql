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
    name character varying(50) NOT NULL,
    fact text,
    has_life boolean,
    galaxy_types_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    fact text,
    year_discovered integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    radius_in_km integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer,
    period numeric(6,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 'Milky Way', 'Home of Earth', true, 0);
INSERT INTO public.galaxy VALUES (1, 'Large Magellanic Cloud', 'also known as LMC', false, 0);
INSERT INTO public.galaxy VALUES (2, 'Small Magellanic Cloud', 'also known as SMC', false, 1);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'contains supermassive black hole', false, 2);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'set to collide with the milky way in 4-5 billion years', false, 0);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'discovered before 1654', false, 0);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (0, 'spiral', 'circular symmetry');
INSERT INTO public.galaxy_types VALUES (1, 'irregular', 'No noticable symmatry');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'complete rotational symmetry');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 'Moon', 'The moon of Earth', NULL, 2);
INSERT INTO public.moon VALUES (1, 'Phobos', 'First Moon of Mars', 1877, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Second Moon of Mars', 1877, 3);
INSERT INTO public.moon VALUES (3, 'Io', 'third largest moon of Jupiter', 1610, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'smallest of the Galilean moons of Jupiter', 1610, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'seventh largest moon of Jupiter', 1610, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Almost the same size as Mercury', 1610, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 'Second largest natural sattilite in the Milky Way', 1655, 5);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Second largest moon of Saturn', 1672, 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Sixth largest moon of Saturn', 1789, 5);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Outermost moon of Uranus', 1787, 6);
INSERT INTO public.moon VALUES (11, 'Titania', 'Largest moon of Uranus', 1787, 6);
INSERT INTO public.moon VALUES (12, 'Miranda', 'Smallest moon of Uranus', 1948, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Fourth largest moon of Uranus', 1851, 6);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Discovered along with Ariel', 1851, 6);
INSERT INTO public.moon VALUES (15, 'Triton', 'Largest Natural Satilite of Neptune', 1846, 7);
INSERT INTO public.moon VALUES (16, 'Charon', 'Largest of Plutos moons', 1978, 8);
INSERT INTO public.moon VALUES (17, 'Nix', 'Third moon away from Pluto', 2005, 8);
INSERT INTO public.moon VALUES (18, 'Hydra', 'Second largest moon of Pluto', 2005, 8);
INSERT INTO public.moon VALUES (19, 'Kerberos', 'Smallest moon of Pluto', 2011, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'Mercury', false, true, 0, 2440);
INSERT INTO public.planet VALUES (1, 'Venus', false, true, 0, 6052);
INSERT INTO public.planet VALUES (2, 'Earth', true, true, 0, 6378);
INSERT INTO public.planet VALUES (3, 'Mars', false, true, 0, 3403);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, true, 0, 71492);
INSERT INTO public.planet VALUES (5, 'Saturn', false, true, 0, 60268);
INSERT INTO public.planet VALUES (6, 'Uranus', false, true, 0, 25559);
INSERT INTO public.planet VALUES (7, 'Neptune', false, true, 0, 24764);
INSERT INTO public.planet VALUES (8, 'Pluto', false, true, 0, 1184);
INSERT INTO public.planet VALUES (9, 'Ceres', false, true, 0, 475);
INSERT INTO public.planet VALUES (10, 'Haumea', false, true, 0, 980);
INSERT INTO public.planet VALUES (11, 'Makemake', false, true, 0, 711);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 'Sun', 'Center and star of the Milky Way', 0, 609.10);
INSERT INTO public.star VALUES (1, 'Barnard’s Star', 'Red Dwarf', 0, 140.40);
INSERT INTO public.star VALUES (2, 'Tau Ceti', 'Main Sequence', 0, 34.00);
INSERT INTO public.star VALUES (3, 'Luyten’s Star', 'Roughly 1/4th the mass of the Sun', 0, 115.60);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in the Milky Way', 0, 50.12);
INSERT INTO public.star VALUES (5, 'Canopus', 'Third Brightest Star in the Milky Way', 0, 298.00);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

