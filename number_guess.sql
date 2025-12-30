--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 41, 91);
INSERT INTO public.games VALUES (2, 42, 986);
INSERT INTO public.games VALUES (3, 41, 933);
INSERT INTO public.games VALUES (4, 41, 50);
INSERT INTO public.games VALUES (5, 41, 664);
INSERT INTO public.games VALUES (6, 43, 299);
INSERT INTO public.games VALUES (7, 44, 792);
INSERT INTO public.games VALUES (8, 43, 311);
INSERT INTO public.games VALUES (9, 43, 705);
INSERT INTO public.games VALUES (10, 43, 151);
INSERT INTO public.games VALUES (11, 45, 708);
INSERT INTO public.games VALUES (12, 45, 410);
INSERT INTO public.games VALUES (13, 46, 819);
INSERT INTO public.games VALUES (14, 46, 870);
INSERT INTO public.games VALUES (15, 45, 486);
INSERT INTO public.games VALUES (16, 45, 592);
INSERT INTO public.games VALUES (17, 45, 51);
INSERT INTO public.games VALUES (18, 47, 739);
INSERT INTO public.games VALUES (19, 47, 683);
INSERT INTO public.games VALUES (20, 48, 294);
INSERT INTO public.games VALUES (21, 48, 611);
INSERT INTO public.games VALUES (22, 47, 815);
INSERT INTO public.games VALUES (23, 47, 747);
INSERT INTO public.games VALUES (24, 47, 783);
INSERT INTO public.games VALUES (25, 49, 837);
INSERT INTO public.games VALUES (26, 49, 262);
INSERT INTO public.games VALUES (27, 50, 965);
INSERT INTO public.games VALUES (28, 50, 559);
INSERT INTO public.games VALUES (29, 49, 169);
INSERT INTO public.games VALUES (30, 49, 799);
INSERT INTO public.games VALUES (31, 49, 446);
INSERT INTO public.games VALUES (32, 51, 606);
INSERT INTO public.games VALUES (33, 51, 12);
INSERT INTO public.games VALUES (34, 52, 50);
INSERT INTO public.games VALUES (35, 52, 139);
INSERT INTO public.games VALUES (36, 51, 67);
INSERT INTO public.games VALUES (37, 51, 463);
INSERT INTO public.games VALUES (38, 51, 126);
INSERT INTO public.games VALUES (39, 53, 223);
INSERT INTO public.games VALUES (40, 53, 218);
INSERT INTO public.games VALUES (41, 54, 155);
INSERT INTO public.games VALUES (42, 54, 647);
INSERT INTO public.games VALUES (43, 53, 393);
INSERT INTO public.games VALUES (44, 53, 587);
INSERT INTO public.games VALUES (45, 53, 797);
INSERT INTO public.games VALUES (46, 55, 606);
INSERT INTO public.games VALUES (47, 55, 148);
INSERT INTO public.games VALUES (48, 56, 330);
INSERT INTO public.games VALUES (49, 56, 130);
INSERT INTO public.games VALUES (50, 55, 106);
INSERT INTO public.games VALUES (51, 55, 280);
INSERT INTO public.games VALUES (52, 55, 63);
INSERT INTO public.games VALUES (53, 57, 484);
INSERT INTO public.games VALUES (54, 57, 613);
INSERT INTO public.games VALUES (55, 58, 186);
INSERT INTO public.games VALUES (56, 58, 631);
INSERT INTO public.games VALUES (57, 57, 299);
INSERT INTO public.games VALUES (58, 57, 33);
INSERT INTO public.games VALUES (59, 57, 52);
INSERT INTO public.games VALUES (60, 59, 765);
INSERT INTO public.games VALUES (61, 59, 903);
INSERT INTO public.games VALUES (62, 60, 982);
INSERT INTO public.games VALUES (63, 60, 825);
INSERT INTO public.games VALUES (64, 59, 646);
INSERT INTO public.games VALUES (65, 59, 356);
INSERT INTO public.games VALUES (66, 59, 804);
INSERT INTO public.games VALUES (67, 61, 522);
INSERT INTO public.games VALUES (68, 61, 586);
INSERT INTO public.games VALUES (69, 62, 705);
INSERT INTO public.games VALUES (70, 62, 617);
INSERT INTO public.games VALUES (71, 61, 366);
INSERT INTO public.games VALUES (72, 61, 225);
INSERT INTO public.games VALUES (73, 61, 632);
INSERT INTO public.games VALUES (74, 63, 12);
INSERT INTO public.games VALUES (75, 64, 187);
INSERT INTO public.games VALUES (76, 64, 423);
INSERT INTO public.games VALUES (77, 65, 647);
INSERT INTO public.games VALUES (78, 65, 75);
INSERT INTO public.games VALUES (79, 64, 959);
INSERT INTO public.games VALUES (80, 64, 442);
INSERT INTO public.games VALUES (81, 64, 290);
INSERT INTO public.games VALUES (82, 66, 788);
INSERT INTO public.games VALUES (83, 66, 964);
INSERT INTO public.games VALUES (84, 67, 68);
INSERT INTO public.games VALUES (85, 67, 68);
INSERT INTO public.games VALUES (86, 66, 170);
INSERT INTO public.games VALUES (87, 66, 127);
INSERT INTO public.games VALUES (88, 66, 696);
INSERT INTO public.games VALUES (89, 68, 21);
INSERT INTO public.games VALUES (90, 69, 862);
INSERT INTO public.games VALUES (91, 69, 342);
INSERT INTO public.games VALUES (92, 70, 585);
INSERT INTO public.games VALUES (93, 70, 636);
INSERT INTO public.games VALUES (94, 69, 986);
INSERT INTO public.games VALUES (95, 69, 909);
INSERT INTO public.games VALUES (96, 69, 265);
INSERT INTO public.games VALUES (97, 71, 882);
INSERT INTO public.games VALUES (98, 71, 757);
INSERT INTO public.games VALUES (99, 72, 265);
INSERT INTO public.games VALUES (100, 72, 429);
INSERT INTO public.games VALUES (101, 71, 39);
INSERT INTO public.games VALUES (102, 71, 622);
INSERT INTO public.games VALUES (103, 71, 330);
INSERT INTO public.games VALUES (104, 73, 274);
INSERT INTO public.games VALUES (105, 73, 69);
INSERT INTO public.games VALUES (106, 74, 67);
INSERT INTO public.games VALUES (107, 74, 44);
INSERT INTO public.games VALUES (108, 73, 574);
INSERT INTO public.games VALUES (109, 73, 382);
INSERT INTO public.games VALUES (110, 73, 539);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1767098707023');
INSERT INTO public.users VALUES (3, 'user_1767098707022');
INSERT INTO public.users VALUES (8, 'user_1767099184370');
INSERT INTO public.users VALUES (10, 'user_1767099184369');
INSERT INTO public.users VALUES (15, 'user_1767099191308');
INSERT INTO public.users VALUES (17, 'user_1767099191307');
INSERT INTO public.users VALUES (22, 'user_1767099659580');
INSERT INTO public.users VALUES (24, 'user_1767099659579');
INSERT INTO public.users VALUES (29, 'user_1767099666011');
INSERT INTO public.users VALUES (31, 'user_1767099666010');
INSERT INTO public.users VALUES (36, 'shloka');
INSERT INTO public.users VALUES (37, 's');
INSERT INTO public.users VALUES (40, 'shlok');
INSERT INTO public.users VALUES (41, 'user_1767100388373');
INSERT INTO public.users VALUES (42, 'user_1767100388372');
INSERT INTO public.users VALUES (43, 'user_1767100468143');
INSERT INTO public.users VALUES (44, 'user_1767100468142');
INSERT INTO public.users VALUES (45, 'user_1767100697585');
INSERT INTO public.users VALUES (46, 'user_1767100697584');
INSERT INTO public.users VALUES (47, 'user_1767100841351');
INSERT INTO public.users VALUES (48, 'user_1767100841350');
INSERT INTO public.users VALUES (49, 'user_1767101028666');
INSERT INTO public.users VALUES (50, 'user_1767101028665');
INSERT INTO public.users VALUES (51, 'user_1767101086606');
INSERT INTO public.users VALUES (52, 'user_1767101086605');
INSERT INTO public.users VALUES (53, 'user_1767101125556');
INSERT INTO public.users VALUES (54, 'user_1767101125555');
INSERT INTO public.users VALUES (55, 'user_1767101295380');
INSERT INTO public.users VALUES (56, 'user_1767101295379');
INSERT INTO public.users VALUES (57, 'user_1767101315235');
INSERT INTO public.users VALUES (58, 'user_1767101315234');
INSERT INTO public.users VALUES (59, 'user_1767101441245');
INSERT INTO public.users VALUES (60, 'user_1767101441244');
INSERT INTO public.users VALUES (61, 'user_1767101670372');
INSERT INTO public.users VALUES (62, 'user_1767101670371');
INSERT INTO public.users VALUES (63, 'honey');
INSERT INTO public.users VALUES (64, 'user_1767102523688');
INSERT INTO public.users VALUES (65, 'user_1767102523687');
INSERT INTO public.users VALUES (66, 'user_1767102824207');
INSERT INTO public.users VALUES (67, 'user_1767102824206');
INSERT INTO public.users VALUES (68, 'nishu');
INSERT INTO public.users VALUES (69, 'user_1767103042597');
INSERT INTO public.users VALUES (70, 'user_1767103042596');
INSERT INTO public.users VALUES (71, 'user_1767103108949');
INSERT INTO public.users VALUES (72, 'user_1767103108948');
INSERT INTO public.users VALUES (73, 'user_1767103243968');
INSERT INTO public.users VALUES (74, 'user_1767103243967');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 110, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 74, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

