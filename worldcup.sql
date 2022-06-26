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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (25, 2018, 'Final', 268, 269, 4, 2);
INSERT INTO public.games VALUES (26, 2018, 'Third Place', 270, 271, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Semi-Final', 269, 271, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Semi-Final', 268, 270, 1, 0);
INSERT INTO public.games VALUES (29, 2018, 'Quarter-Final', 269, 272, 3, 2);
INSERT INTO public.games VALUES (30, 2018, 'Quarter-Final', 271, 273, 2, 0);
INSERT INTO public.games VALUES (31, 2018, 'Quarter-Final', 270, 274, 2, 1);
INSERT INTO public.games VALUES (32, 2018, 'Quarter-Final', 268, 275, 2, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 271, 276, 2, 1);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 273, 277, 1, 0);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 270, 278, 3, 2);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 274, 279, 2, 0);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 269, 280, 2, 1);
INSERT INTO public.games VALUES (38, 2018, 'Eighth-Final', 272, 281, 2, 1);
INSERT INTO public.games VALUES (39, 2018, 'Eighth-Final', 275, 282, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Eighth-Final', 268, 283, 4, 3);
INSERT INTO public.games VALUES (41, 2014, 'Final', 284, 283, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Third Place', 285, 274, 3, 0);
INSERT INTO public.games VALUES (43, 2014, 'Semi-Final', 283, 285, 1, 0);
INSERT INTO public.games VALUES (44, 2014, 'Semi-Final', 284, 274, 7, 1);
INSERT INTO public.games VALUES (45, 2014, 'Quarter-Final', 285, 286, 1, 0);
INSERT INTO public.games VALUES (46, 2014, 'Quarter-Final', 283, 270, 1, 0);
INSERT INTO public.games VALUES (47, 2014, 'Quarter-Final', 274, 276, 2, 1);
INSERT INTO public.games VALUES (48, 2014, 'Quarter-Final', 284, 268, 1, 0);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 274, 287, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 276, 275, 2, 0);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 268, 288, 2, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 284, 289, 2, 1);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 285, 279, 2, 1);
INSERT INTO public.games VALUES (54, 2014, 'Eighth-Final', 286, 290, 2, 1);
INSERT INTO public.games VALUES (55, 2014, 'Eighth-Final', 283, 277, 1, 0);
INSERT INTO public.games VALUES (56, 2014, 'Eighth-Final', 270, 291, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (268, 'France');
INSERT INTO public.teams VALUES (269, 'Croatia');
INSERT INTO public.teams VALUES (270, 'Belgium');
INSERT INTO public.teams VALUES (271, 'England');
INSERT INTO public.teams VALUES (272, 'Russia');
INSERT INTO public.teams VALUES (273, 'Sweden');
INSERT INTO public.teams VALUES (274, 'Brazil');
INSERT INTO public.teams VALUES (275, 'Uruguay');
INSERT INTO public.teams VALUES (276, 'Colombia');
INSERT INTO public.teams VALUES (277, 'Switzerland');
INSERT INTO public.teams VALUES (278, 'Japan');
INSERT INTO public.teams VALUES (279, 'Mexico');
INSERT INTO public.teams VALUES (280, 'Denmark');
INSERT INTO public.teams VALUES (281, 'Spain');
INSERT INTO public.teams VALUES (282, 'Portugal');
INSERT INTO public.teams VALUES (283, 'Argentina');
INSERT INTO public.teams VALUES (284, 'Germany');
INSERT INTO public.teams VALUES (285, 'Netherlands');
INSERT INTO public.teams VALUES (286, 'Costa Rica');
INSERT INTO public.teams VALUES (287, 'Chile');
INSERT INTO public.teams VALUES (288, 'Nigeria');
INSERT INTO public.teams VALUES (289, 'Algeria');
INSERT INTO public.teams VALUES (290, 'Greece');
INSERT INTO public.teams VALUES (291, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 291, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

