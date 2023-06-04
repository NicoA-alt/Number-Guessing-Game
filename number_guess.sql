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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 11);
INSERT INTO public.games VALUES (2, 1, 14);
INSERT INTO public.games VALUES (3, 2, 11);
INSERT INTO public.games VALUES (4, 1, 9);
INSERT INTO public.games VALUES (5, 3, 957);
INSERT INTO public.games VALUES (6, 3, 552);
INSERT INTO public.games VALUES (7, 4, 565);
INSERT INTO public.games VALUES (8, 4, 565);
INSERT INTO public.games VALUES (9, 3, 902);
INSERT INTO public.games VALUES (10, 3, 933);
INSERT INTO public.games VALUES (11, 3, 332);
INSERT INTO public.games VALUES (12, 5, 895);
INSERT INTO public.games VALUES (13, 5, 118);
INSERT INTO public.games VALUES (14, 6, 561);
INSERT INTO public.games VALUES (15, 6, 386);
INSERT INTO public.games VALUES (16, 5, 53);
INSERT INTO public.games VALUES (17, 5, 839);
INSERT INTO public.games VALUES (18, 5, 925);
INSERT INTO public.games VALUES (19, 7, 560);
INSERT INTO public.games VALUES (20, 8, 95);
INSERT INTO public.games VALUES (21, 8, 531);
INSERT INTO public.games VALUES (22, 7, 416);
INSERT INTO public.games VALUES (23, 7, 974);
INSERT INTO public.games VALUES (24, 7, 536);
INSERT INTO public.games VALUES (25, 9, 540);
INSERT INTO public.games VALUES (26, 9, 502);
INSERT INTO public.games VALUES (27, 10, 552);
INSERT INTO public.games VALUES (28, 10, 406);
INSERT INTO public.games VALUES (29, 9, 818);
INSERT INTO public.games VALUES (30, 9, 587);
INSERT INTO public.games VALUES (31, 9, 353);
INSERT INTO public.games VALUES (32, 11, 986);
INSERT INTO public.games VALUES (33, 12, 805);
INSERT INTO public.games VALUES (34, 12, 571);
INSERT INTO public.games VALUES (35, 11, 26);
INSERT INTO public.games VALUES (36, 11, 93);
INSERT INTO public.games VALUES (37, 11, 364);
INSERT INTO public.games VALUES (38, 13, 968);
INSERT INTO public.games VALUES (39, 13, 827);
INSERT INTO public.games VALUES (40, 14, 804);
INSERT INTO public.games VALUES (41, 14, 411);
INSERT INTO public.games VALUES (42, 13, 465);
INSERT INTO public.games VALUES (43, 13, 798);
INSERT INTO public.games VALUES (44, 13, 517);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Juan');
INSERT INTO public.users VALUES (2, 'Nico');
INSERT INTO public.users VALUES (3, 'user_1685845912880');
INSERT INTO public.users VALUES (4, 'user_1685845912879');
INSERT INTO public.users VALUES (5, 'user_1685845980101');
INSERT INTO public.users VALUES (6, 'user_1685845980100');
INSERT INTO public.users VALUES (7, 'user_1685845998591');
INSERT INTO public.users VALUES (8, 'user_1685845998590');
INSERT INTO public.users VALUES (9, 'user_1685846011354');
INSERT INTO public.users VALUES (10, 'user_1685846011353');
INSERT INTO public.users VALUES (11, 'user_1685846377836');
INSERT INTO public.users VALUES (12, 'user_1685846377835');
INSERT INTO public.users VALUES (13, 'user_1685846387296');
INSERT INTO public.users VALUES (14, 'user_1685846387295');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
