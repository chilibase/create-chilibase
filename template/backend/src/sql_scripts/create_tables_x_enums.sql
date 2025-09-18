-- TODO - move to backend framework

/*
-- DROP TABLE
DROP TABLE x_enum;
DROP TABLE x_enum_enum;
DROP TABLE x_param;
*/

CREATE TABLE x_enum_enum (
    id SERIAL PRIMARY KEY,
    code varchar(64) NOT NULL,
    name varchar(128) NOT NULL,
    read_only BOOLEAN NOT NULL default false, -- if true, user cannot change this record and his child x_enum records (except name), because records are used in source code
    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

CREATE TABLE x_enum (
    id SERIAL PRIMARY KEY,
    code varchar(64) NOT NULL,
    name varchar(128) NOT NULL,
    enabled BOOLEAN NOT NULL default true, -- used only if needed (this field is usually not used in source code)
    read_only BOOLEAN NOT NULL default false, -- if true, user cannot change this record (except name), because record is used in source code
    enum_order INT,
    x_enum_enum_id INT NOT NULL
);

CREATE TABLE x_param (
    id SERIAL PRIMARY KEY,
    code varchar(64) NOT NULL,
    name varchar(128) NOT NULL,
    value varchar NOT NULL,
    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

-- FK constrainty v PostgreSQL nevytvaraju indexy, treba ich vytvorit explicitne
-- (unique constrainty vytvaraju indexy automaticky)
-- PostgreSQL vytvori defaultne nazvy constraintov a indexov (ak nespecifikujeme nazvy explicitne)

-- x_enum_enum
ALTER TABLE x_enum_enum ADD UNIQUE (code);
ALTER TABLE x_enum_enum ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON x_enum_enum (modif_x_user_id);

-- x_enum
ALTER TABLE x_enum ADD FOREIGN KEY (x_enum_enum_id) REFERENCES x_enum_enum (id);
CREATE INDEX ON x_enum (x_enum_enum_id);
ALTER TABLE x_enum ADD UNIQUE (x_enum_enum_id, code);

-- x_param
ALTER TABLE x_param ADD UNIQUE (code);
ALTER TABLE x_param ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON x_param (modif_x_user_id);
