-- script to drop and create DB (can be run on another DB)
-- (if DB does not exists yet, comment "DROP DATABASE car_demo_db;")
-- (database can be created also direct in DB tool (e.g. DBeaver))

DROP DATABASE car_demo_db;

-- (can be run on another DB):
CREATE DATABASE "car_demo_db"
WITH OWNER "postgres"
ENCODING 'UTF8'
LC_COLLATE = 'en-GB.UTF8'
LC_CTYPE = 'en-GB.UTF8'
TEMPLATE template0;
