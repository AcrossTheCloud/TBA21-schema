-- SCHEMA: tba21

-- DROP SCHEMA tba21 ;

CREATE SCHEMA tba21
AUTHORIZATION postgres;

CREATE EXTENSION plpgsql;

-- Geospatial support
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

-- Cryptographic support
CREATE extension pgcrypto;

--License
CREATE TYPE tba21.licence_type AS ENUM ('CC BY', 'CC BY-SA', 'CC BY-ND', 'CC BY-NC', 'CC BY-NC-SA', 'CC BY-NC-ND', 'locked');

--Create gender type
CREATE TYPE tba21.gender AS ENUM ('male', 'female', 'other');

-- Items metadata table
CREATE TABLE tba21.items
(
	sha512 varchar(128) PRIMARY KEY,
	decodedSrcKey varchar,
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
	time_produced timestamp with time zone,
	concept_tags bigserial,
	keyword_tags bigserial,
	recognition_tags varchar(128),
	location geography(point),
	place varchar(128),
	country_or_ocean varchar(128),
	creators bigserial,
	contributor_login uuid,
	directors varchar(256)[],
	writers varchar(256)[],
	collaborators varchar(256),
	exhibited_at varchar(256),
	series varchar(256),
	ISBN numeric(13),
	edition numeric(3),
	publisher varchar(256)[],
	interviewers varchar(256)[],
	interviewees varchar(256)[],
	cast_ varchar(256)
);

--People metadata table
CREATE TABLE tba21.people
(
	ID bigserial,
	family_name varchar(128),
	given_names varchar(128),
	organisation varchar(128),
	gender tba21.gender NOT NULL,
	date_of_birth timestamp with time zone NOT NULL,
	email varchar(256),
	affiliation varchar(128),
	job_role varchar(128),
	website varchar(128),
	address varchar(128)
);

--Types metadata
CREATE TABLE tba21.types
(
	ID bigserial,
	type_name varchar(256)
);

--Collections metadata
CREATE TABLE tba21.collections
(
	ID bigserial,
	title varchar(128),
	description varchar,
	image varchar,
	location geography(linestring)
);

--Collection items metadata
CREATE TABLE tba21.collections_items
(
	ID bigserial,
	sha512 varchar(128)
);

--Collection people metadata
CREATE TABLE tba21.collections_people
(
	ID bigserial,
	sha512 varchar(128)
);

--Concept tags metadata
CREATE TABLE tba21.concept_tags
(
	ID bigserial,
	tag varchar(128)
);

--Keyword tags metadata
CREATE TABLE tba21.keyword_tags
(
	ID bigserial,
	tag varchar(128)
);

--Collections and collections_items joins
SELECT tba21.collections_items.ID, tba21.collections.ID FROM tba21.collections_items INNER JOIN tba21.collections ON tba21.collections_items.ID = tba21.collections.ID;

-- People and collections example joins
-- SELECT tba21.collections_people.ID, tba21.tba21.people.ID FROM tba21.collections_people INNER JOIN tba21.tba21.people ON tba21.collections_people.ID = tba21.people.ID;
-- SELECT tba21.collections_people.sha512, tba21.items.sha512 FROM tba21.collections_people INNER JOIN tba21.items ON tba21.collections_people.sha512 = tba21.items.sha512;
