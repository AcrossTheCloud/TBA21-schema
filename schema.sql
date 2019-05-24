-- SCHEMA: tba21

-- DROP SCHEMA tba21 ;

CREATE SCHEMA tba21
AUTHORIZATION postgres;

-- Geospatial support
CREATE EXTENSION postgis;

--License
CREATE TYPE tba21.licence_type AS ENUM ('CC BY', 'CC BY-SA', 'CC BY-ND', 'CC BY-NC', 'CC BY-NC-SA', 'CC BY-NC-ND', 'locked');

-- S3 objects metadata table
CREATE TABLE tba21.s3uploads
(
	ID_sha512 char(128) PRIMARY KEY,
	all_s3_keys varchar(1024)[] , --all keys go here, including any duplicates
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
    exif jsonb, -- for things that don't go into other columns
	machine_recognition_tags varchar[],
	md5 char(32),
	image_hash char(64)
);

--Types metadata
CREATE TABLE tba21.types
(
	ID bigserial PRIMARY KEY,
	type_name varchar(256)
);

-- Items metadata table
CREATE TABLE tba21.items
(
	ID bigserial PRIMARY KEY,
	s3uploads_sha512 varchar(128) references tba21.s3uploads(ID_sha512),
	s3_key varchar(1024), --s3 key, if any, associated to this particular item
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
	time_produced timestamp with time zone,
	status boolean, -- false=draft, true=public
	concept_tags bigint[],
	keyword_tags bigint[],
	place varchar(128),
	country_or_ocean varchar(128),
	item_type bigint references tba21.types(id),
	creators varchar(256)[],
	contributor uuid,
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

--Collections metadata
CREATE TABLE tba21.collections
(
	ID bigserial PRIMARY KEY,
	s3_prefix varchar(1024),
	created_at timestamp with time zone NOT NULL,
	updated_at timestamp with time zone NOT NULL,
	time_produced timestamp with time zone,
	status boolean,
	concept_tags bigint[],
	keyword_tags bigint[],
	place varchar(128),
	country_or_ocean varchar(128),
	creators varchar(256)[],
	contributor uuid,
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
	collection_ID bigint references tba21.collections(ID),
	item_ID bigint references tba21.items(ID)
);

--Concept tags metadata
CREATE TABLE tba21.concept_tags
(
	ID bigserial PRIMARY KEY,
	tag_name varchar(128)
);

--Keyword tags metadata
CREATE TABLE tba21.keyword_tags
(
	ID bigserial PRIMARY KEY,
	tag_name varchar(128)
);
