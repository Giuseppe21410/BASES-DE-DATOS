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
-- Name: diameter_unit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.diameter_unit (
    diameter_unit_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.diameter_unit OWNER TO freecodecamp;

--
-- Name: diameter_unit_diameter_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.diameter_unit_diameter_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diameter_unit_diameter_unit_id_seq OWNER TO freecodecamp;

--
-- Name: diameter_unit_diameter_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.diameter_unit_diameter_unit_id_seq OWNED BY public.diameter_unit.diameter_unit_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth_in_light_years integer,
    is_spherical boolean,
    has_life boolean,
    description text,
    diameter numeric(5,1),
    diameter_unit_id integer
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
    age_in_million_years integer NOT NULL,
    distance_from_earth_in_light_years integer,
    has_life boolean,
    is_extragalactic boolean,
    description text,
    diameter numeric(5,1),
    diameter_unit_id integer,
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
    age_in_million_years integer NOT NULL,
    distance_from_earth_in_light_years integer,
    has_life boolean,
    is_extragalactic boolean,
    description text,
    diameter numeric(5,1),
    diameter_unit_id integer,
    star_id integer
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
    age_in_million_years integer NOT NULL,
    distance_from_earth_in_light_years integer,
    emits_light boolean,
    is_extragalactic boolean,
    description text,
    diameter numeric(5,1),
    diameter_unit_id integer,
    galaxy_id integer
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
-- Name: diameter_unit diameter_unit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.diameter_unit ALTER COLUMN diameter_unit_id SET DEFAULT nextval('public.diameter_unit_diameter_unit_id_seq'::regclass);


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
-- Data for Name: diameter_unit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.diameter_unit VALUES (1, 'km', 'Kilómetros, unidad común para cuerpos celestes pequeños como lunas y planetas');
INSERT INTO public.diameter_unit VALUES (2, 'mi', 'Millas, ocasionalmente usada en astronomía popular');
INSERT INTO public.diameter_unit VALUES (3, 'AU', 'Unidades Astronómicas, útiles para distancias dentro del sistema solar');
INSERT INTO public.diameter_unit VALUES (4, 'ly', 'Años luz, común para distancias interestelares y galácticas');
INSERT INTO public.diameter_unit VALUES (5, 'pc', 'Pársecs, utilizados en astronomía profesional para distancias a estrellas y galaxias');
INSERT INTO public.diameter_unit VALUES (6, 'kpc', 'Kilopársecs, útil para distancias dentro de galaxias grandes o entre galaxias cercanas');
INSERT INTO public.diameter_unit VALUES (7, 'mil años luz', 'Millares de años luz');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 13600, 0, true, true, 'Nuestra galaxia hogar.', 105.7, 7);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 10000, 2537000, true, false, 'Galaxia espiral más cercana.', 220.0, 6);
INSERT INTO public.galaxy VALUES (3, 'Triángulo', 12000, 2730000, true, false, 'Pequeña galaxia espiral.', 60.5, 6);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13500, 53000000, false, false, 'Enorme galaxia elíptica con agujero negro.', 240.3, 7);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 11000, 61000000, true, false, 'Galaxia espiral barrada.', 110.0, 6);
INSERT INTO public.galaxy VALUES (6, 'Hoag''s Object', 13000, 600000000, true, false, 'Rara galaxia anular.', 120.2, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 4500, 0, false, false, 'La luna de la Tierra.', 3474.8, 1, 1);
INSERT INTO public.moon VALUES (22, 'Fobos', 4500, 0, false, false, 'Luna más grande de Marte.', 22.4, 1, 2);
INSERT INTO public.moon VALUES (23, 'Deimos', 4500, 0, false, false, 'Segunda luna de Marte.', 12.4, 1, 2);
INSERT INTO public.moon VALUES (24, 'Europa', 4500, 0, false, false, 'Luna helada de Júpiter.', 3121.6, 1, 1);
INSERT INTO public.moon VALUES (25, 'Ío', 4500, 0, false, false, 'Luna volcánica de Júpiter.', 3643.2, 1, 1);
INSERT INTO public.moon VALUES (26, 'Ganímedes', 4500, 0, false, false, 'La luna más grande del sistema solar.', 5268.2, 1, 1);
INSERT INTO public.moon VALUES (27, 'Calisto', 4500, 0, false, false, 'Luna exterior de Júpiter.', 4820.6, 1, 1);
INSERT INTO public.moon VALUES (28, 'Titán', 4500, 0, false, false, 'Luna más grande de Saturno.', 5151.0, 1, 1);
INSERT INTO public.moon VALUES (29, 'Encélado', 4500, 0, false, false, 'Luna de Saturno con géiseres.', 504.2, 1, 1);
INSERT INTO public.moon VALUES (30, 'Tritón', 4500, 0, false, false, 'Luna de Neptuno.', 2706.8, 1, 1);
INSERT INTO public.moon VALUES (31, 'Charon', 4500, 0, false, false, 'Luna de Plutón.', 1212.0, 1, 1);
INSERT INTO public.moon VALUES (32, 'Kepler-22b I', 6000, 600, false, false, 'Hipotética luna de Kepler-22b.', 300.0, 1, 4);
INSERT INTO public.moon VALUES (33, 'TRAPPIST-1e I', 8000, 40, false, false, 'Posible luna de TRAPPIST-1e.', 250.0, 1, 10);
INSERT INTO public.moon VALUES (34, 'TRAPPIST-1f I', 8000, 40, false, false, 'Posible luna de TRAPPIST-1f.', 260.0, 1, 11);
INSERT INTO public.moon VALUES (35, 'TRAPPIST-1g I', 8000, 40, false, false, 'Posible luna de TRAPPIST-1g.', 280.0, 1, 12);
INSERT INTO public.moon VALUES (36, 'Proxima b I', 4500, 4, false, false, 'Hipotética luna de Proxima b.', 220.0, 1, 5);
INSERT INTO public.moon VALUES (37, 'HD 209458 b I', 4000, 150, false, false, 'Hipotética luna de HD 209458 b.', 310.0, 1, 7);
INSERT INTO public.moon VALUES (38, 'Gliese 581c I', 2000, 20, false, false, 'Hipotética luna de Gliese 581c.', 330.0, 1, 8);
INSERT INTO public.moon VALUES (39, 'WASP-12b I', 3000, 870, false, false, 'Luna de un Júpiter caliente.', 290.0, 1, 6);
INSERT INTO public.moon VALUES (40, 'Icarus I I', 7000, 90000, false, true, 'Luna en una galaxia lejana.', 100.0, 1, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 4500, 0, true, false, 'Nuestro planeta.', 12.7, 7, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 4500, 0, false, false, 'Planeta rojo.', 6.8, 7, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4500, 0, false, false, 'Segundo planeta desde el Sol.', 12.1, 7, 1);
INSERT INTO public.planet VALUES (4, 'Kepler-22b', 6000, 600, false, false, 'Exoplaneta en zona habitable.', 24.0, 7, 2);
INSERT INTO public.planet VALUES (5, 'Proxima b', 4500, 4, false, false, 'Orbita Proxima Centauri.', 11.2, 7, 2);
INSERT INTO public.planet VALUES (6, 'WASP-12b', 3000, 870, false, false, 'Júpiter caliente muy cercano a su estrella.', 18.1, 7, 2);
INSERT INTO public.planet VALUES (7, 'HD 209458 b', 4000, 150, false, false, 'Primer exoplaneta en tránsito observado.', 14.0, 7, 3);
INSERT INTO public.planet VALUES (8, 'Gliese 581c', 2000, 20, false, false, 'Exoplaneta potencialmente habitable.', 12.0, 7, 3);
INSERT INTO public.planet VALUES (9, 'Icarus I', 7000, 100000, false, true, 'Planeta en otra galaxia.', 10.0, 7, 6);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 8000, 40, false, false, 'Exoplaneta rocoso en zona habitable.', 9.2, 7, 4);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1f', 8000, 40, false, false, 'Vecino de TRAPPIST-1e.', 10.4, 7, 4);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1g', 8000, 40, false, false, 'Otro planeta del sistema TRAPPIST.', 12.0, 7, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 0, true, false, 'Nuestra estrella.', 1.4, 1, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8000, 642, true, false, 'Gigante roja en Orión.', 887.0, 1, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 300, 8, true, false, 'La estrella más brillante del cielo nocturno.', 2.0, 1, 1);
INSERT INTO public.star VALUES (4, 'R136a1', 1000, 163000, true, false, 'Una de las estrellas más masivas conocidas.', 35.0, 1, 1);
INSERT INTO public.star VALUES (5, 'UY Scuti', 10000, 9500, true, false, 'Candidata a la estrella más grande.', 1708.0, 1, 1);
INSERT INTO public.star VALUES (6, 'Icarus', 9000, 9000, true, true, 'Estrella individual más lejana observada.', 0.1, 1, 1);


--
-- Name: diameter_unit_diameter_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.diameter_unit_diameter_unit_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: diameter_unit diameter_unit_diameter_unit_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.diameter_unit
    ADD CONSTRAINT diameter_unit_diameter_unit_id_key UNIQUE (diameter_unit_id);


--
-- Name: diameter_unit diameter_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.diameter_unit
    ADD CONSTRAINT diameter_unit_pkey PRIMARY KEY (diameter_unit_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: galaxy galaxy_diameter_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_diameter_unit_id_fkey FOREIGN KEY (diameter_unit_id) REFERENCES public.diameter_unit(diameter_unit_id);


--
-- Name: moon moon_diameter_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_diameter_unit_id_fkey FOREIGN KEY (diameter_unit_id) REFERENCES public.diameter_unit(diameter_unit_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_diameter_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_diameter_unit_id_fkey FOREIGN KEY (diameter_unit_id) REFERENCES public.diameter_unit(diameter_unit_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_diameter_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_diameter_unit_id_fkey FOREIGN KEY (diameter_unit_id) REFERENCES public.diameter_unit(diameter_unit_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

