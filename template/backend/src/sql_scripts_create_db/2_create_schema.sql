-- run these commands on created DB
-- drop schema public (it is recommended to use the own schema)
DROP SCHEMA public;

-- create schema
CREATE SCHEMA {{schemaName}};

ALTER SCHEMA {{schemaName}} OWNER TO postgres;

-- functions unaccent used by full-text search
CREATE EXTENSION unaccent schema {{schemaName}};
