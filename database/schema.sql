--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

--
-- Name: statusprazo; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.statusprazo AS ENUM (
    'em_andamento',
    'vencido'
);


--
-- Name: statusprocesso; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.statusprocesso AS ENUM (
    'em_andamento',
    'aguradando_decisao',
    'sentenciado',
    'arquivado'
);


--
-- Name: tipodocumento; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.tipodocumento AS ENUM (
    'peticao_inicial',
    'contestacao',
    'recurso',
    'despacho'
);


--
-- Name: tipoprazo; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.tipoprazo AS ENUM (
    'contestacao',
    'recurso',
    'manisfestacao'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    cpf character varying NOT NULL,
    nome character varying NOT NULL,
    id integer NOT NULL
);


--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: distribuicao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.distribuicao (
    id integer NOT NULL,
    processo_id integer NOT NULL,
    procurador_antigo_id integer NOT NULL,
    procurador_novo_id integer NOT NULL,
    data_mudanca date NOT NULL
);


--
-- Name: distribuicao_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.distribuicao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: distribuicao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.distribuicao_id_seq OWNED BY public.distribuicao.id;


--
-- Name: documento; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.documento (
    nome character varying NOT NULL,
    tipo public.tipodocumento NOT NULL,
    caminho character varying NOT NULL,
    id integer NOT NULL,
    processo_id integer NOT NULL
);


--
-- Name: documento_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.documento_id_seq OWNED BY public.documento.id;


--
-- Name: prazo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prazo (
    tipo public.tipoprazo NOT NULL,
    data_vencimento date NOT NULL,
    status public.statusprazo NOT NULL,
    id integer NOT NULL,
    processo_id integer NOT NULL
);


--
-- Name: prazo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.prazo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prazo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.prazo_id_seq OWNED BY public.prazo.id;


--
-- Name: processo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.processo (
    numero character varying NOT NULL,
    orgao character varying NOT NULL,
    assunto character varying NOT NULL,
    status public.statusprocesso NOT NULL,
    id integer NOT NULL,
    procurador_id integer NOT NULL
);


--
-- Name: processo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.processo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: processo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.processo_id_seq OWNED BY public.processo.id;


--
-- Name: processo_partes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.processo_partes (
    processo_id integer NOT NULL,
    cliente_id integer NOT NULL
);


--
-- Name: procurador; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.procurador (
    cpf character varying NOT NULL,
    nome character varying NOT NULL,
    id integer NOT NULL,
    oab character varying NOT NULL
);


--
-- Name: procurador_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.procurador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: procurador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.procurador_id_seq OWNED BY public.procurador.id;


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: distribuicao id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.distribuicao ALTER COLUMN id SET DEFAULT nextval('public.distribuicao_id_seq'::regclass);


--
-- Name: documento id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documento ALTER COLUMN id SET DEFAULT nextval('public.documento_id_seq'::regclass);


--
-- Name: prazo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prazo ALTER COLUMN id SET DEFAULT nextval('public.prazo_id_seq'::regclass);


--
-- Name: processo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo ALTER COLUMN id SET DEFAULT nextval('public.processo_id_seq'::regclass);


--
-- Name: procurador id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procurador ALTER COLUMN id SET DEFAULT nextval('public.procurador_id_seq'::regclass);


--
-- Name: cliente cliente_cpf_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpf_key UNIQUE (cpf);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: distribuicao distribuicao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.distribuicao
    ADD CONSTRAINT distribuicao_pkey PRIMARY KEY (id);


--
-- Name: documento documento_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documento
    ADD CONSTRAINT documento_pkey PRIMARY KEY (id);


--
-- Name: prazo prazo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prazo
    ADD CONSTRAINT prazo_pkey PRIMARY KEY (id);


--
-- Name: processo processo_numero_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo
    ADD CONSTRAINT processo_numero_key UNIQUE (numero);


--
-- Name: processo_partes processo_partes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo_partes
    ADD CONSTRAINT processo_partes_pkey PRIMARY KEY (processo_id, cliente_id);


--
-- Name: processo processo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo
    ADD CONSTRAINT processo_pkey PRIMARY KEY (id);


--
-- Name: procurador procurador_cpf_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procurador
    ADD CONSTRAINT procurador_cpf_key UNIQUE (cpf);


--
-- Name: procurador procurador_oab_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procurador
    ADD CONSTRAINT procurador_oab_key UNIQUE (oab);


--
-- Name: procurador procurador_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procurador
    ADD CONSTRAINT procurador_pkey PRIMARY KEY (id);


--
-- Name: distribuicao distribuicao_processo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.distribuicao
    ADD CONSTRAINT distribuicao_processo_id_fkey FOREIGN KEY (processo_id) REFERENCES public.processo(id);


--
-- Name: distribuicao distribuicao_procurador_antigo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.distribuicao
    ADD CONSTRAINT distribuicao_procurador_antigo_id_fkey FOREIGN KEY (procurador_antigo_id) REFERENCES public.procurador(id);


--
-- Name: distribuicao distribuicao_procurador_novo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.distribuicao
    ADD CONSTRAINT distribuicao_procurador_novo_id_fkey FOREIGN KEY (procurador_novo_id) REFERENCES public.procurador(id);


--
-- Name: documento documento_processo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documento
    ADD CONSTRAINT documento_processo_id_fkey FOREIGN KEY (processo_id) REFERENCES public.processo(id);


--
-- Name: prazo prazo_processo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prazo
    ADD CONSTRAINT prazo_processo_id_fkey FOREIGN KEY (processo_id) REFERENCES public.processo(id);


--
-- Name: processo_partes processo_partes_cliente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo_partes
    ADD CONSTRAINT processo_partes_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- Name: processo_partes processo_partes_processo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo_partes
    ADD CONSTRAINT processo_partes_processo_id_fkey FOREIGN KEY (processo_id) REFERENCES public.processo(id);


--
-- Name: processo processo_procurador_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processo
    ADD CONSTRAINT processo_procurador_id_fkey FOREIGN KEY (procurador_id) REFERENCES public.procurador(id);


--
-- PostgreSQL database dump complete
--

