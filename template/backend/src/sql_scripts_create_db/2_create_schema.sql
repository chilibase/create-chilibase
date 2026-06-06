-- run these commands on created DB
-- drop schema public (it is recommended to use the own schema)
DROP SCHEMA public;

-- create schema
CREATE SCHEMA {{schemaName}};

ALTER SCHEMA {{schemaName}} OWNER TO postgres;

-- function unaccent used by full-text search (using: <schema>.unaccent(<VARCHAR>))
CREATE EXTENSION unaccent schema {{schemaName}};
