/* Schema for TBA21 items */

-- Schema name
CREATE SCHEMA tba21;

-- Geospatial support
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

-- Cryptographic support
CREATE extension pgcrypto;

-- Items metadata table
CREATE TABLE tba21.itemsmetadata
(
  sha512 varchar(128) PRIMARY KEY,
  decodedSrcKey varchar,
  created_at timestamp with time zone NOT NULL,
  updated_at timestamp with time zone NOT NULL,
  metadata jsonb NOT NULL
);

-- Events geometry
SELECT AddGeometryColumn ('tba21','itemsmetadata','the_geom',4326,'POINT',2);
-- ALTER TABLE tba21.itemsmetadata ALTER COLUMN the_geom SET NOT NULL;
