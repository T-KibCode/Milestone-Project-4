--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO yrzmkyyu;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO yrzmkyyu;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO yrzmkyyu;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO yrzmkyyu;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO yrzmkyyu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO yrzmkyyu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO yrzmkyyu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO yrzmkyyu;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO yrzmkyyu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO yrzmkyyu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO yrzmkyyu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: bag_mymodel; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.bag_mymodel (
    id bigint NOT NULL,
    money_currency character varying(3) NOT NULL,
    money numeric(5,2) NOT NULL
);


ALTER TABLE public.bag_mymodel OWNER TO yrzmkyyu;

--
-- Name: bag_mymodel_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.bag_mymodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bag_mymodel_id_seq OWNER TO yrzmkyyu;

--
-- Name: bag_mymodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.bag_mymodel_id_seq OWNED BY public.bag_mymodel.id;


--
-- Name: checkout_order; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.checkout_order (
    id bigint NOT NULL,
    order_number character varying(32) NOT NULL,
    full_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    phone_number character varying(20) NOT NULL,
    country character varying(2) NOT NULL,
    postcode character varying(20),
    town_or_city character varying(40) NOT NULL,
    street_address1 character varying(80) NOT NULL,
    street_address2 character varying(80),
    county character varying(80),
    date timestamp with time zone NOT NULL,
    delivery_cost numeric(6,2) NOT NULL,
    order_total numeric(10,2) NOT NULL,
    grand_total numeric(10,2) NOT NULL,
    original_bag text NOT NULL,
    stripe_pid character varying(254) NOT NULL,
    user_profile_id bigint
);


ALTER TABLE public.checkout_order OWNER TO yrzmkyyu;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.checkout_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_order_id_seq OWNER TO yrzmkyyu;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.checkout_order_id_seq OWNED BY public.checkout_order.id;


--
-- Name: checkout_orderlineitem; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.checkout_orderlineitem (
    id bigint NOT NULL,
    product_size character varying(2),
    quantity integer NOT NULL,
    lineitem_total numeric(6,2) NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.checkout_orderlineitem OWNER TO yrzmkyyu;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.checkout_orderlineitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_orderlineitem_id_seq OWNER TO yrzmkyyu;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.checkout_orderlineitem_id_seq OWNED BY public.checkout_orderlineitem.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO yrzmkyyu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO yrzmkyyu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO yrzmkyyu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO yrzmkyyu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO yrzmkyyu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO yrzmkyyu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO yrzmkyyu;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO yrzmkyyu;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO yrzmkyyu;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: exchange_exchangebackend; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.exchange_exchangebackend (
    name character varying(255) NOT NULL,
    last_update timestamp with time zone NOT NULL,
    base_currency character varying(3) NOT NULL
);


ALTER TABLE public.exchange_exchangebackend OWNER TO yrzmkyyu;

--
-- Name: exchange_rate; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.exchange_rate (
    id bigint NOT NULL,
    currency character varying(3) NOT NULL,
    value numeric(20,6) NOT NULL,
    backend_id character varying(255) NOT NULL
);


ALTER TABLE public.exchange_rate OWNER TO yrzmkyyu;

--
-- Name: exchange_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.exchange_rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exchange_rate_id_seq OWNER TO yrzmkyyu;

--
-- Name: exchange_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.exchange_rate_id_seq OWNED BY public.exchange_rate.id;


--
-- Name: pastwork_videos; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.pastwork_videos (
    id bigint NOT NULL,
    video character varying(200) NOT NULL
);


ALTER TABLE public.pastwork_videos OWNER TO yrzmkyyu;

--
-- Name: pastwork_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.pastwork_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pastwork_videos_id_seq OWNER TO yrzmkyyu;

--
-- Name: pastwork_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.pastwork_videos_id_seq OWNED BY public.pastwork_videos.id;


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.products_category (
    id bigint NOT NULL,
    name character varying(254) NOT NULL,
    friendly_name character varying(254)
);


ALTER TABLE public.products_category OWNER TO yrzmkyyu;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_id_seq OWNER TO yrzmkyyu;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products_category.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    sku character varying(254),
    name character varying(254) NOT NULL,
    description text NOT NULL,
    price numeric(6,2) NOT NULL,
    rating numeric(6,2),
    image_url character varying(1024),
    image character varying(100),
    category_id bigint
);


ALTER TABLE public.products_product OWNER TO yrzmkyyu;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO yrzmkyyu;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: profiles_userprofile; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.profiles_userprofile (
    id bigint NOT NULL,
    default_phone_number character varying(20),
    default_country character varying(2),
    default_postcode character varying(20),
    default_town_or_city character varying(40),
    default_street_address1 character varying(80),
    default_street_address2 character varying(80),
    default_county character varying(80),
    user_id integer NOT NULL
);


ALTER TABLE public.profiles_userprofile OWNER TO yrzmkyyu;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.profiles_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_userprofile_id_seq OWNER TO yrzmkyyu;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.profiles_userprofile_id_seq OWNED BY public.profiles_userprofile.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: yrzmkyyu
--

CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id bigint NOT NULL,
    app_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: yrzmkyyu
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO yrzmkyyu;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yrzmkyyu
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: bag_mymodel id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.bag_mymodel ALTER COLUMN id SET DEFAULT nextval('public.bag_mymodel_id_seq'::regclass);


--
-- Name: checkout_order id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_order ALTER COLUMN id SET DEFAULT nextval('public.checkout_order_id_seq'::regclass);


--
-- Name: checkout_orderlineitem id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_orderlineitem ALTER COLUMN id SET DEFAULT nextval('public.checkout_orderlineitem_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: exchange_rate id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.exchange_rate ALTER COLUMN id SET DEFAULT nextval('public.exchange_rate_id_seq'::regclass);


--
-- Name: pastwork_videos id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.pastwork_videos ALTER COLUMN id SET DEFAULT nextval('public.pastwork_videos_id_seq'::regclass);


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.products_category ALTER COLUMN id SET DEFAULT nextval('public.products_category_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: profiles_userprofile id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.profiles_userprofile ALTER COLUMN id SET DEFAULT nextval('public.profiles_userprofile_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	test@test.com	t	t	1
2	tkibirige94@gmail.com	t	t	1
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add email address	8	add_emailaddress
30	Can change email address	8	change_emailaddress
31	Can delete email address	8	delete_emailaddress
32	Can view email address	8	view_emailaddress
33	Can add email confirmation	9	add_emailconfirmation
34	Can change email confirmation	9	change_emailconfirmation
35	Can delete email confirmation	9	delete_emailconfirmation
36	Can view email confirmation	9	view_emailconfirmation
37	Can add social account	10	add_socialaccount
38	Can change social account	10	change_socialaccount
39	Can delete social account	10	delete_socialaccount
40	Can view social account	10	view_socialaccount
41	Can add social application	11	add_socialapp
42	Can change social application	11	change_socialapp
43	Can delete social application	11	delete_socialapp
44	Can view social application	11	view_socialapp
45	Can add social application token	12	add_socialtoken
46	Can change social application token	12	change_socialtoken
47	Can delete social application token	12	delete_socialtoken
48	Can view social application token	12	view_socialtoken
49	Can add exchange backend	13	add_exchangebackend
50	Can change exchange backend	13	change_exchangebackend
51	Can delete exchange backend	13	delete_exchangebackend
52	Can view exchange backend	13	view_exchangebackend
53	Can add rate	14	add_rate
54	Can change rate	14	change_rate
55	Can delete rate	14	delete_rate
56	Can view rate	14	view_rate
57	Can add videos	15	add_videos
58	Can change videos	15	change_videos
59	Can delete videos	15	delete_videos
60	Can view videos	15	view_videos
61	Can add category	16	add_category
62	Can change category	16	change_category
63	Can delete category	16	delete_category
64	Can view category	16	view_category
65	Can add product	17	add_product
66	Can change product	17	change_product
67	Can delete product	17	delete_product
68	Can view product	17	view_product
69	Can add my model	18	add_mymodel
70	Can change my model	18	change_mymodel
71	Can delete my model	18	delete_mymodel
72	Can view my model	18	view_mymodel
73	Can add order	19	add_order
74	Can change order	19	change_order
75	Can delete order	19	delete_order
76	Can view order	19	view_order
77	Can add order line item	20	add_orderlineitem
78	Can change order line item	20	change_orderlineitem
79	Can delete order line item	20	delete_orderlineitem
80	Can view order line item	20	view_orderlineitem
81	Can add user profile	21	add_userprofile
82	Can change user profile	21	change_userprofile
83	Can delete user profile	21	delete_userprofile
84	Can view user profile	21	view_userprofile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$TYoDf0dMUZOguB79iZNLNl$IzHnXJ1c/y8ZFa03j+yIImm1HErBPvIjNwe0l7N00Xg=	2023-08-07 11:48:52.82558+00	t	t-kibcode			tkibirige94@gmail.com	t	t	2023-08-07 11:03:32.213374+00
1	pbkdf2_sha256$260000$TVVQArphNEcchpi2A707rk$EWxQctmY2ojAmuFWd8ZnlyFQuHa+Yeyx+zA11Fdblxg=	2023-08-07 15:22:39.113815+00	t	tkibcode			tkibirige94@gmail.com	t	t	2023-08-06 23:44:09.960185+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: bag_mymodel; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.bag_mymodel (id, money_currency, money) FROM stdin;
\.


--
-- Data for Name: checkout_order; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.checkout_order (id, order_number, full_name, email, phone_number, country, postcode, town_or_city, street_address1, street_address2, county, date, delivery_cost, order_total, grand_total, original_bag, stripe_pid, user_profile_id) FROM stdin;
\.


--
-- Data for Name: checkout_orderlineitem; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.checkout_orderlineitem (id, product_size, quantity, lineitem_total, order_id, product_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-08-07 11:57:54.775622+00	1	MusicProdServ	1	[{"added": {}}]	16	2
2	2023-08-07 11:59:24.283235+00	2	VidServices	1	[{"added": {}}]	16	2
3	2023-08-07 12:04:26.888625+00	1	Video Recording + Editing	1	[{"added": {}}]	17	2
4	2023-08-07 12:15:21.658622+00	1	Video Recording + Editing	2	[{"changed": {"fields": ["Image url"]}}]	17	2
5	2023-08-07 20:08:11.302802+00	1	Video Recording + Editing	2	[{"changed": {"fields": ["Sku", "Image url"]}}]	17	1
6	2023-08-07 20:09:28.965649+00	2	Recording	1	[{"added": {}}]	17	1
7	2023-08-07 20:10:41.055019+00	3	Recording and Mixing	1	[{"added": {}}]	17	1
8	2023-08-07 20:11:42.469889+00	4	Editing	1	[{"added": {}}]	17	1
9	2023-08-07 20:13:01.704077+00	5	Editing + Mixing	1	[{"added": {}}]	17	1
10	2023-08-07 20:16:34.438811+00	6	Songwriting, Recording, Mixing and Video shoot service(Full Package)	1	[{"added": {}}]	17	1
11	2023-08-07 20:17:16.393576+00	5	Editing + Mixing	2	[{"changed": {"fields": ["Sku"]}}]	17	1
12	2023-08-07 20:17:24.537551+00	6	Songwriting, Recording, Mixing and Video shoot service(Full Package)	2	[{"changed": {"fields": ["Sku"]}}]	17	1
13	2023-08-07 20:17:29.365819+00	5	Editing + Mixing	2	[{"changed": {"fields": ["Sku"]}}]	17	1
14	2023-08-07 20:17:51.741916+00	1	ACharlesMusic.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	7	1
15	2023-08-07 20:25:19.651555+00	1	test@test.com	1	[{"added": {}}]	8	1
16	2023-08-07 20:26:13.856912+00	2	tkibirige94@gmail.com	1	[{"added": {}}]	8	1
17	2023-08-08 20:18:49.189011+00	1	Video Recording + Editing	2	[{"changed": {"fields": ["Image url", "Image"]}}]	17	2
18	2023-08-08 20:19:49.891648+00	2	Recording	2	[{"changed": {"fields": ["Image"]}}]	17	2
19	2023-08-08 20:19:52.459809+00	2	Recording	2	[]	17	2
20	2023-08-08 20:20:13.046256+00	3	Recording and Mixing	2	[{"changed": {"fields": ["Image"]}}]	17	2
21	2023-08-08 20:20:33.284406+00	4	Editing	2	[{"changed": {"fields": ["Image"]}}]	17	2
22	2023-08-08 20:20:52.130552+00	5	Editing + Mixing	2	[{"changed": {"fields": ["Image"]}}]	17	2
23	2023-08-08 20:21:20.187257+00	6	Songwriting, Recording, Mixing and Video shoot service(Full Package)	2	[{"changed": {"fields": ["Image"]}}]	17	2
24	2023-08-08 20:25:33.453548+00	3	Recording and Mixing	2	[{"changed": {"fields": ["Category"]}}]	17	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	account	emailaddress
9	account	emailconfirmation
10	socialaccount	socialaccount
11	socialaccount	socialapp
12	socialaccount	socialtoken
13	exchange	exchangebackend
14	exchange	rate
15	pastwork	videos
16	products	category
17	products	product
18	bag	mymodel
19	checkout	order
20	checkout	orderlineitem
21	profiles	userprofile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-08-06 20:21:10.555698+00
2	auth	0001_initial	2023-08-06 20:21:11.428242+00
3	account	0001_initial	2023-08-06 20:21:11.769121+00
4	account	0002_email_max_length	2023-08-06 20:21:11.874314+00
5	account	0003_auto_20230619_2032	2023-08-06 20:21:12.448243+00
6	admin	0001_initial	2023-08-06 20:21:12.717171+00
7	admin	0002_logentry_remove_auto_add	2023-08-06 20:21:12.790642+00
8	admin	0003_logentry_add_action_flag_choices	2023-08-06 20:21:12.884183+00
9	contenttypes	0002_remove_content_type_name	2023-08-06 20:21:13.033049+00
10	auth	0002_alter_permission_name_max_length	2023-08-06 20:21:13.149159+00
11	auth	0003_alter_user_email_max_length	2023-08-06 20:21:13.267625+00
12	auth	0004_alter_user_username_opts	2023-08-06 20:21:13.361702+00
13	auth	0005_alter_user_last_login_null	2023-08-06 20:21:13.475087+00
14	auth	0006_require_contenttypes_0002	2023-08-06 20:21:13.566965+00
15	auth	0007_alter_validators_add_error_messages	2023-08-06 20:21:13.660899+00
16	auth	0008_alter_user_username_max_length	2023-08-06 20:21:13.786553+00
17	auth	0009_alter_user_last_name_max_length	2023-08-06 20:21:13.903992+00
18	auth	0010_alter_group_name_max_length	2023-08-06 20:21:14.021131+00
19	auth	0011_update_proxy_permissions	2023-08-06 20:21:14.118832+00
20	auth	0012_alter_user_first_name_max_length	2023-08-06 20:21:14.234782+00
21	exchange	0001_initial	2023-08-06 20:21:14.547417+00
22	exchange	0002_alter_rate_id	2023-08-06 20:21:14.774687+00
23	pastwork	0001_initial	2023-08-06 20:21:14.893312+00
24	sessions	0001_initial	2023-08-06 20:21:15.097177+00
25	sites	0001_initial	2023-08-06 20:21:15.201495+00
26	sites	0002_alter_domain_unique	2023-08-06 20:21:15.349215+00
27	socialaccount	0001_initial	2023-08-06 20:21:15.95565+00
28	socialaccount	0002_token_max_lengths	2023-08-06 20:21:16.169731+00
29	socialaccount	0003_extra_data_default_dict	2023-08-06 20:21:16.267026+00
30	socialaccount	0004_auto_20230619_2032	2023-08-06 20:21:17.308009+00
31	bag	0001_initial	2023-08-06 22:32:35.309544+00
32	profiles	0001_initial	2023-08-06 22:32:35.487249+00
33	products	0001_initial	2023-08-06 22:32:35.681584+00
34	checkout	0001_initial	2023-08-06 22:32:35.983555+00
35	account	0003_auto_20230706_2126	2023-08-07 11:01:54.918695+00
36	bag	0002_auto_20230705_0236	2023-08-07 11:01:55.017623+00
37	socialaccount	0004_auto_20230706_2126	2023-08-07 11:01:55.689199+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
t21dck2b7gwol66n3jealnjvaf70ebt3	.eJxVzM0OwiAQBOB34WwIf2WpR-99BgLsIlVDk9KejO8uTXrQ63wz82Y-7Fvxe6PVz8iuTLHLbxZDelI9AB-h3heelrqtc-RHhZ_a-LQgvW5n9--ghFb6OhiRh1GPRmV0FpyUKmkCSg4GBdqlJHXuSCAIsQMp0lKEaA2ARck-X9J2N7I:1qTTGn:HOpgbXCtqeBko48EZ6YhqnNJMZhjrAqIF4QUrUolrH0	2023-08-22 20:25:33.713195+00
8z3nktyje5bjho4jz83vw14mskmhk9s3	e30:1qTSiG:Okl9P1BOSUBdBaL6fczyKIx4ePs7Pc9GrxAuq5USeek	2023-08-22 19:49:52.130109+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.django_site (id, domain, name) FROM stdin;
1	ACharlesMusic.com	ACharlesMusic.com
\.


--
-- Data for Name: exchange_exchangebackend; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.exchange_exchangebackend (name, last_update, base_currency) FROM stdin;
\.


--
-- Data for Name: exchange_rate; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.exchange_rate (id, currency, value, backend_id) FROM stdin;
\.


--
-- Data for Name: pastwork_videos; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.pastwork_videos (id, video) FROM stdin;
\.


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.products_category (id, name, friendly_name) FROM stdin;
1	MusicProdServ	Music Production Services
2	VidServices	Videography Services
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.products_product (id, sku, name, description, price, rating, image_url, image, category_id) FROM stdin;
3	3	Recording and Mixing	We record and mix your song, providing 3 revisions in the process. Please reach out directly if you are looking to record multiple songs with this purchase option.	200.00	\N	https://acharlesmusic.s3.eu-west-2.amazonaws.com/media/guitar_room.aa66bf937b92.JPG?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEMn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCWV1LXdlc3QtMiJGMEQCIAivDPz9bB80AWt%2B4agMB1gIsMbPNn%2BhziPEuvQmttBGAiAMMMvEoEgQfMiBMXDD7rZXnXXTessx29PXNyVD6uYEmCrkAghyEAAaDDg0OTUxODQxNDc2MSIMThEAt%2FEAzSxkpWBUKsECB2k9DS%2FK1%2FUMZxZiK5EyDx5AxlzIEKrhp5ifWSoPQmZwAH%2F%2FtjgpdI6g6Y2xQ7eFgOCw%2Fh9EqV9EYkL%2BfCnX2ASKZrfr4b8wK1eNEH3NA%2BXuXdeu62xeROwjEAkuF6%2Fb4yEb4uYSQd9DKQ%2F8iByvZQujpFf%2FFYz8D79lUFqI36%2BKldRT2J8oQchvbXnrmOgW8v3C1t3KP%2F9uy0p5oS4SKgHUQYjFHWqCmZzyU3V2gXwWwemgIrEH7dBwnLP0gcsWZydcCPPcv4szhqCB7p%2FCixk7930T%2FSYJK1PCmEDHgURfFMyZDD7xa3qzRFUYqfxMcFw222HcVU7qxgczHrRUWrmUl03HVdcu7dvj3qTCU%2BKz%2BYxjduxOZJUqztuKLLQJCCGb289PzWjhTelxdD37jsWvJZ6PQZw1AGyQhfInjrpfMIXowqYGOrQClvwyfTSXVTgZ%2FNpDgdRnlAPTVQJvqYQLFlfoUcqR57ktr%2Bqy6Z6cEbSdWUYqQVRvVhwYZv9PoViEA%2FhMsA1lvErCh7SQrfIzXQ0HOmlCjT5%2Fx7DCMsDiTmlfMlN9qRnb%2FGQzZZGoIEOppDLZ5uRpSgGHmQzG90y8JWYoLpY48L1gwDZ5Fhh0Rl6	control_room.JPG	1
2	2	Recording	Recording all your live music and compiling this in to a project you can take home to mix yourself.	200.00	\N	https://acharlesmusic.s3.eu-west-2.amazonaws.com/media/guitar_room.aa66bf937b92.JPG?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEMn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCWV1LXdlc3QtMiJGMEQCIAivDPz9bB80AWt%2B4agMB1gIsMbPNn%2BhziPEuvQmttBGAiAMMMvEoEgQfMiBMXDD7rZXnXXTessx29PXNyVD6uYEmCrkAghyEAAaDDg0OTUxODQxNDc2MSIMThEAt%2FEAzSxkpWBUKsECB2k9DS%2FK1%2FUMZxZiK5EyDx5AxlzIEKrhp5ifWSoPQmZwAH%2F%2FtjgpdI6g6Y2xQ7eFgOCw%2Fh9EqV9EYkL%2BfCnX2ASKZrfr4b8wK1eNEH3NA%2BXuXdeu62xeROwjEAkuF6%2Fb4yEb4uYSQd9DKQ%2F8iByvZQujpFf%2FFYz8D79lUFqI36%2BKldRT2J8oQchvbXnrmOgW8v3C1t3KP%2F9uy0p5oS4SKgHUQYjFHWqCmZzyU3V2gXwWwemgIrEH7dBwnLP0gcsWZydcCPPcv4szhqCB7p%2FCixk7930T%2FSYJK1PCmEDHgURfFMyZDD7xa3qzRFUYqfxMcFw222HcVU7qxgczHrRUWrmUl03HVdcu7dvj3qTCU%2BKz%2BYxjduxOZJUqztuKLLQJCCGb289PzWjhTelxdD37jsWvJZ6PQZw1AGyQhfInjrpfMIXowqYGOrQClvwyfTSXVTgZ%2FNpDgdRnlAPTVQJvqYQLFlfoUcqR57ktr%2Bqy6Z6cEbSdWUYqQVRvVhwYZv9PoViEA%2FhMsA1lvErCh7SQrfIzXQ0HOmlCjT5%2Fx7DCMsDiTmlfMlN9qRnb%2FGQzZZGoIEOppDLZ5uRpSgGHmQzG90y8JWYoLpY48L1gwDZ5Fhh0Rl6	robyn_headshot.JPG	1
1	1	Video Recording + Editing	Video Recording and editing services are provided for a song of your choosing.	150.00	\N	\N	TJ_CHURCH_PrPPcx5.jpg	2
4	4	Editing	Editing your self recorded work, providing realignment of guitar , vocal and drum takes.	100.00	\N	https://acharlesmusic.s3.eu-west-2.amazonaws.com/media/headshot.8fd0b7536de9.jpg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEMn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCWV1LXdlc3QtMiJGMEQCIAivDPz9bB80AWt%2B4agMB1gIsMbPNn%2BhziPEuvQmttBGAiAMMMvEoEgQfMiBMXDD7rZXnXXTessx29PXNyVD6uYEmCrkAghyEAAaDDg0OTUxODQxNDc2MSIMThEAt%2FEAzSxkpWBUKsECB2k9DS%2FK1%2FUMZxZiK5EyDx5AxlzIEKrhp5ifWSoPQmZwAH%2F%2FtjgpdI6g6Y2xQ7eFgOCw%2Fh9EqV9EYkL%2BfCnX2ASKZrfr4b8wK1eNEH3NA%2BXuXdeu62xeROwjEAkuF6%2Fb4yEb4uYSQd9DKQ%2F8iByvZQujpFf%2FFYz8D79lUFqI36%2BKldRT2J8oQchvbXnrmOgW8v3C1t3KP%2F9uy0p5oS4SKgHUQYjFHWqCmZzyU3V2gXwWwemgIrEH7dBwnLP0gcsWZydcCPPcv4szhqCB7p%2FCixk7930T%2FSYJK1PCmEDHgURfFMyZDD7xa3qzRFUYqfxMcFw222HcVU7qxgczHrRUWrmUl03HVdcu7dvj3qTCU%2BKz%2BYxjduxOZJUqztuKLLQJCCGb289PzWjhTelxdD37jsWvJZ6PQZw1AGyQhfInjrpfMIXowqYGOrQClvwyfTSXVTgZ%2FNpDgdRnlAPTVQJvqYQLFlfoUcqR57ktr%2Bqy6Z6cEbSdWUYqQVRvVhwYZv9PoViEA%2FhMsA1lvErCh7SQrfIzXQ0HOmlCjT5%2Fx7DCMsDiTmlfMlN9qRnb%2FGQzZZGoIEOppDLZ5uRpSgGHmQzG90y8JWYoLpY48L1gwDZ5Fhh0Rl6xNu	headshot_QNTTR9g.jpg	1
6	6	Songwriting, Recording, Mixing and Video shoot service(Full Package)	We provide a full service from inception to completion of your artistic vision. 2-week timescale per song with this package offer and unlimited song mix revision along with 3 Video edit revisions.	500.00	\N	https://acharlesmusic.s3.eu-west-2.amazonaws.com/media/P1040109.09c6a30b95e9.JPG?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEMn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCWV1LXdlc3QtMiJGMEQCIAivDPz9bB80AWt%2B4agMB1gIsMbPNn%2BhziPEuvQmttBGAiAMMMvEoEgQfMiBMXDD7rZXnXXTessx29PXNyVD6uYEmCrkAghyEAAaDDg0OTUxODQxNDc2MSIMThEAt%2FEAzSxkpWBUKsECB2k9DS%2FK1%2FUMZxZiK5EyDx5AxlzIEKrhp5ifWSoPQmZwAH%2F%2FtjgpdI6g6Y2xQ7eFgOCw%2Fh9EqV9EYkL%2BfCnX2ASKZrfr4b8wK1eNEH3NA%2BXuXdeu62xeROwjEAkuF6%2Fb4yEb4uYSQd9DKQ%2F8iByvZQujpFf%2FFYz8D79lUFqI36%2BKldRT2J8oQchvbXnrmOgW8v3C1t3KP%2F9uy0p5oS4SKgHUQYjFHWqCmZzyU3V2gXwWwemgIrEH7dBwnLP0gcsWZydcCPPcv4szhqCB7p%2FCixk7930T%2FSYJK1PCmEDHgURfFMyZDD7xa3qzRFUYqfxMcFw222HcVU7qxgczHrRUWrmUl03HVdcu7dvj3qTCU%2BKz%2BYxjduxOZJUqztuKLLQJCCGb289PzWjhTelxdD37jsWvJZ6PQZw1AGyQhfInjrpfMIXowqYGOrQClvwyfTSXVTgZ%2FNpDgdRnlAPTVQJvqYQLFlfoUcqR57ktr%2Bqy6Z6cEbSdWUYqQVRvVhwYZv9PoViEA%2FhMsA1lvErCh7SQrfIzXQ0HOmlCjT5%2Fx7DCMsDiTmlfMlN9qRnb%2FGQzZZGoIEOppDLZ5uRpSgGHmQzG90y8JWYoLpY48L1gwDZ5Fhh0Rl6xNu	robyn_QXgtwSh.png	2
5	5	Editing + Mixing	Providing all the benefits of the Editing category along with mixing of your work + 3 revisions.	200.00	\N	https://acharlesmusic.s3.eu-west-2.amazonaws.com/media/monitor_room_1.cbc56a59999a.JPG?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEMn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCWV1LXdlc3QtMiJGMEQCIAivDPz9bB80AWt%2B4agMB1gIsMbPNn%2BhziPEuvQmttBGAiAMMMvEoEgQfMiBMXDD7rZXnXXTessx29PXNyVD6uYEmCrkAghyEAAaDDg0OTUxODQxNDc2MSIMThEAt%2FEAzSxkpWBUKsECB2k9DS%2FK1%2FUMZxZiK5EyDx5AxlzIEKrhp5ifWSoPQmZwAH%2F%2FtjgpdI6g6Y2xQ7eFgOCw%2Fh9EqV9EYkL%2BfCnX2ASKZrfr4b8wK1eNEH3NA%2BXuXdeu62xeROwjEAkuF6%2Fb4yEb4uYSQd9DKQ%2F8iByvZQujpFf%2FFYz8D79lUFqI36%2BKldRT2J8oQchvbXnrmOgW8v3C1t3KP%2F9uy0p5oS4SKgHUQYjFHWqCmZzyU3V2gXwWwemgIrEH7dBwnLP0gcsWZydcCPPcv4szhqCB7p%2FCixk7930T%2FSYJK1PCmEDHgURfFMyZDD7xa3qzRFUYqfxMcFw222HcVU7qxgczHrRUWrmUl03HVdcu7dvj3qTCU%2BKz%2BYxjduxOZJUqztuKLLQJCCGb289PzWjhTelxdD37jsWvJZ6PQZw1AGyQhfInjrpfMIXowqYGOrQClvwyfTSXVTgZ%2FNpDgdRnlAPTVQJvqYQLFlfoUcqR57ktr%2Bqy6Z6cEbSdWUYqQVRvVhwYZv9PoViEA%2FhMsA1lvErCh7SQrfIzXQ0HOmlCjT5%2Fx7DCMsDiTmlfMlN9qRnb%2FGQzZZGoIEOppDLZ5uRpSgGHmQzG90y8JWYoLpY48L1gwDZ5Fhh0	bandshot.JPG	1
\.


--
-- Data for Name: profiles_userprofile; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.profiles_userprofile (id, default_phone_number, default_country, default_postcode, default_town_or_city, default_street_address1, default_street_address2, default_county, user_id) FROM stdin;
2	\N	\N	\N	\N	\N	\N	\N	2
1	\N	\N	\N	\N	\N	\N	\N	1
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: yrzmkyyu
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: bag_mymodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.bag_mymodel_id_seq', 1, false);


--
-- Name: checkout_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.checkout_order_id_seq', 1, false);


--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.checkout_orderlineitem_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 24, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: exchange_rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.exchange_rate_id_seq', 1, false);


--
-- Name: pastwork_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.pastwork_videos_id_seq', 1, false);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.products_category_id_seq', 2, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.products_product_id_seq', 6, true);


--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.profiles_userprofile_id_seq', 2, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yrzmkyyu
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: bag_mymodel bag_mymodel_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.bag_mymodel
    ADD CONSTRAINT bag_mymodel_pkey PRIMARY KEY (id);


--
-- Name: checkout_order checkout_order_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_pkey PRIMARY KEY (id);


--
-- Name: checkout_orderlineitem checkout_orderlineitem_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: exchange_exchangebackend exchange_exchangebackend_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.exchange_exchangebackend
    ADD CONSTRAINT exchange_exchangebackend_pkey PRIMARY KEY (name);


--
-- Name: exchange_rate exchange_rate_currency_backend_id_c6037b21_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.exchange_rate
    ADD CONSTRAINT exchange_rate_currency_backend_id_c6037b21_uniq UNIQUE (currency, backend_id);


--
-- Name: exchange_rate exchange_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.exchange_rate
    ADD CONSTRAINT exchange_rate_pkey PRIMARY KEY (id);


--
-- Name: pastwork_videos pastwork_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.pastwork_videos
    ADD CONSTRAINT pastwork_videos_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: profiles_userprofile profiles_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_pkey PRIMARY KEY (id);


--
-- Name: profiles_userprofile profiles_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: checkout_order_user_profile_id_949184a7; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX checkout_order_user_profile_id_949184a7 ON public.checkout_order USING btree (user_profile_id);


--
-- Name: checkout_orderlineitem_order_id_b4cfbe6b; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX checkout_orderlineitem_order_id_b4cfbe6b ON public.checkout_orderlineitem USING btree (order_id);


--
-- Name: checkout_orderlineitem_product_id_739c699d; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX checkout_orderlineitem_product_id_739c699d ON public.checkout_orderlineitem USING btree (product_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: exchange_exchangebackend_name_8f97aa6b_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX exchange_exchangebackend_name_8f97aa6b_like ON public.exchange_exchangebackend USING btree (name varchar_pattern_ops);


--
-- Name: exchange_rate_backend_id_d57e3a62; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX exchange_rate_backend_id_d57e3a62 ON public.exchange_rate USING btree (backend_id);


--
-- Name: exchange_rate_backend_id_d57e3a62_like; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX exchange_rate_backend_id_d57e3a62_like ON public.exchange_rate USING btree (backend_id varchar_pattern_ops);


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: yrzmkyyu
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_order checkout_order_user_profile_id_949184a7_fk_profiles_; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_user_profile_id_949184a7_fk_profiles_ FOREIGN KEY (user_profile_id) REFERENCES public.profiles_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineit_product_id_739c699d_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineit_product_id_739c699d_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id FOREIGN KEY (order_id) REFERENCES public.checkout_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exchange_rate exchange_rate_backend_id_d57e3a62_fk_exchange_; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.exchange_rate
    ADD CONSTRAINT exchange_rate_backend_id_d57e3a62_fk_exchange_ FOREIGN KEY (backend_id) REFERENCES public.exchange_exchangebackend(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profiles_userprofile profiles_userprofile_user_id_616bed88_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_user_id_616bed88_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk; Type: FK CONSTRAINT; Schema: public; Owner: yrzmkyyu
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

