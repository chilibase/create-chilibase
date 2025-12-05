-- script to (drop) create DB (can be run on another existing DB)
-- (database can be created also direct in DB tool (e.g. DBeaver))

--DROP DATABASE car_demo_db;

-- (can be run on another DB):
CREATE DATABASE "car_demo_db"
WITH OWNER "postgres"
ENCODING 'UTF8'
LC_COLLATE = 'en-GB.UTF8'
LC_CTYPE = 'en-GB.UTF8'
TEMPLATE template0;
