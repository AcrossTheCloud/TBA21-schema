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

-- S3 objects metadata table
CREATE TABLE tba21.s3uploads
(
	sha512 varchar(128) PRIMARY KEY,
	all_s3_keys varchar[] , --all duplicate keys, if any, go here
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
    exif jsonb, -- for things that don't go into other columns
	machine_recognition_tags varchar[],
	md5_hash varchar(32),
	image_hash varchar
);

-- Items metadata table
CREATE TABLE tba21.items
(
	ID bigserial PRIMARY KEY,
	s3uploads_sha512 varchar(128)  references s3uploads(sha512),
	s3_key varchar , --s3 key, if any, associated to this particular item
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
	time_produced timestamp with time zone,
	status boolean,
	concept_tags bigint[],
	keyword_tags bigint[],
	recognition_tags varchar[],
	place varchar(128),
	country_or_ocean varchar(128),
	type bigint references types(id),
	creators varchar(256)[],
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
	cast_ varchar(256),
	license tba21.licence_type,
	title varchar(256),
	description varchar(256)
);

--Types metadata
CREATE TABLE tba21.types
(
	ID bigserial PRIMARY KEY,
	type_name varchar(256)
);

--Collections metadata
CREATE TABLE tba21.collections
(
	ID bigserial PRIMARY KEY,
	s3_prefix varchar,
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
	time_produced timestamp with time zone,
	status boolean,
	concept_tags bigint[],
	keyword_tags bigint[],
	recognition_tags varchar(128),
	place varchar(128),
	country_or_ocean varchar(128),
	creators varchar(256)[],
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
	cast_ varchar(256),
    title varchar(256),
	description varchar(256)
);

-- Geo stuff

SELECT AddGeometryColumn ('tba21','s3uploads','location',4326,'POINT',2); -- s3uploads location column
CREATE INDEX s3uploads_gix ON tba21.s3uploads USING GIST (location); -- s3uploads location GIST index

SELECT AddGeometryColumn ('tba21','items','location',4326,'POINT',2); -- items location column
CREATE INDEX items_gix ON tba21.items USING GIST (location); -- items location GIST index

SELECT AddGeometryColumn ('tba21','collections','geom',4326,'LINESTRING',2); -- collections geom column
CREATE INDEX collections_gix ON tba21.collections USING GIST (geom); -- collections geom GIST index

-- Collection items cross-references
CREATE TABLE tba21.collections_items
(
	collection_ID bigint references collections(ID),
	item_ID bigint references items(ID)
);

--Concept tags metadata
CREATE TABLE tba21.concept_tags
(
	ID bigserial PRIMARY KEY,
	tag varchar(128)
);

--Keyword tags metadata
CREATE TABLE tba21.keyword_tags
(
	ID bigserial PRIMARY KEY,
	tag varchar(128)
);

--Collections and collections_items joins
SELECT tba21.collections_items.ID, tba21.collections.ID FROM tba21.collections_items INNER JOIN tba21.collections ON tba21.collections_items.ID = tba21.collections.ID;

-- People and collections example joins
-- SELECT tba21.collections_people.ID, tba21.tba21.people.ID FROM tba21.collections_people INNER JOIN tba21.tba21.people ON tba21.collections_people.ID = tba21.people.ID;
-- SELECT tba21.collections_people.sha512, tba21.items.sha512 FROM tba21.collections_people INNER JOIN tba21.items ON tba21.collections_people.sha512 = tba21.items.sha512;
