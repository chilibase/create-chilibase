-- not used for car_demo yet

-- xs tables (s stands for statistical)
-- xs tables reference tables x_user, x_enum, x_field_set_meta (these tables can stay empty, if they are not used)

CREATE TABLE xs_group_by_field (
    id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    width INT, -- width of the cell, where the label is displayed
    field_type_id INT NOT NULL, -- x_enum "xGroupByType"
    entity VARCHAR, -- entita enum-u napr. Sluzba
    display_field VARCHAR,
    x_enum_enum_id INT, -- pouzivany (a povinny) ak fieldType = xEnum
    xs_interval_set_id INT, -- pouzivany (a povinny) ak fieldType = age, intervalSet
    filter VARCHAR, -- pouzivany (zatial) ak fieldType = xEnum/entityEnum

    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

CREATE TABLE xs_group_by_field_by_entity (
    id SERIAL PRIMARY KEY,
    xs_group_by_field_id INT NOT NULL,
    entity VARCHAR NOT NULL,
    field VARCHAR NOT NULL
);

CREATE TABLE xs_stat_field (
    id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    field_type_id INT NOT NULL, -- x_enum "xsStatFieldType"
    aggregate_function_id INT, -- x_enum "xAggregateFunction" (MIN, MAX, SUM, AVG)
    entity VARCHAR NOT NULL,
    field VARCHAR,
    date_field VARCHAR,
    year_for_age_from_dialog BOOLEAN NOT NULL default false, -- if true, the age in group by criterium is calculated as (<year from dialog> - <year of birth date>),
                                                            -- because sometimes it is not possible to use <date_field> for the calculation of the age
    filter VARCHAR,

    x_field_set_meta_id INT, -- pouzivany (a povinny) ak fieldType = fieldSetRowCount/fieldSetFieldCount (mozno aj fieldSetAggregateField)
    x_field_set_fields JSONB, -- zoznam fieldov (aj s hodnotami napr. true, tak ako ich vytvara XFieldSet), tento zoznam sa pouziva pri fieldSetRowCount/fieldSetFieldCount
                            -- (pre fieldSetAggregateField by mal byt presne 1 field typu decimal/int)
    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

CREATE TABLE xs_table (
    id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    row_access_type_id INT NOT NULL, -- x_enum "xsRowAccessType" - controls which user has access to the statistic (only admin, all users, specific users, ...)
    stat_field_label_width INT,
    value_columns_width INT,

    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

-- manyToMany xs_table_sluzba
CREATE TABLE xs_table_sluzba (
    id SERIAL PRIMARY KEY,
    xs_table_id INT NOT NULL,
    sluzba_id INT NOT NULL
);

CREATE TABLE xs_table_subtable (
    id SERIAL PRIMARY KEY,
    xs_table_id INT NOT NULL,
    xs_stat_field_id INT NOT NULL,
    subtable_order INT NOT NULL,
    create_sum_row BOOLEAN NOT NULL default false, -- if true, creates row with sum values on the bottom of the subtable
    create_sum_column BOOLEAN NOT NULL default false,  -- if true, creates column with sum values on the right side of the subtable
    filter VARCHAR,
    label VARCHAR, -- overrides label from xs_stat_field_id
    sql_query VARCHAR -- readOnly, generated sql is logged here for debug purposes
);

CREATE TABLE xs_table_group_by_field_for_columns (
    id SERIAL PRIMARY KEY,
    xs_table_id INT NOT NULL,
    xs_group_by_field_id INT NOT NULL,
    field_order INT NOT NULL,
    filter VARCHAR -- for HAVING clause
);

-- TODO - nechce sa mi riesit 2 tabulky vo formulari nad jednou DB tabulkou, tak zatial takto zduplikujeme predchadzajucu tabulku
CREATE TABLE xs_table_group_by_field_for_rows (
    id SERIAL PRIMARY KEY,
    xs_table_id INT NOT NULL,
    xs_group_by_field_id INT NOT NULL,
    field_order INT NOT NULL,
    filter VARCHAR, -- for HAVING clause
    width INT -- width of the cell, where the label is displayed (overrides attribute xsGroupByField.width)
);

CREATE TABLE xs_interval_set (
    id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    use_label_and_less BOOLEAN NOT NULL default false,
    use_label_and_more BOOLEAN NOT NULL default false,
    value_for_unknown_value INT, -- this value (if present) will be used as replacement for null values

    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

CREATE TABLE xs_interval_item (
    id SERIAL PRIMARY KEY,
    xs_interval_set_id INT NOT NULL,
    value_from INT NOT NULL,
    value_to INT NOT NULL
);

-- xs_group_by_field
ALTER TABLE xs_group_by_field ADD FOREIGN KEY (field_type_id) REFERENCES x_enum (id);
CREATE INDEX ON xs_group_by_field (field_type_id);
ALTER TABLE xs_group_by_field ADD FOREIGN KEY (x_enum_enum_id) REFERENCES x_enum_enum (id);
CREATE INDEX ON xs_group_by_field (x_enum_enum_id);
ALTER TABLE xs_group_by_field ADD FOREIGN KEY (xs_interval_set_id) REFERENCES xs_interval_set (id);
CREATE INDEX ON xs_group_by_field (xs_interval_set_id);
ALTER TABLE xs_group_by_field ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON xs_group_by_field (modif_x_user_id);

-- xs_group_by_field_by_entity
ALTER TABLE xs_group_by_field_by_entity ADD UNIQUE (xs_group_by_field_id, entity);
ALTER TABLE xs_group_by_field_by_entity ADD FOREIGN KEY (xs_group_by_field_id) REFERENCES xs_group_by_field (id);
CREATE INDEX ON xs_group_by_field_by_entity (xs_group_by_field_id);

-- xs_stat_field
ALTER TABLE xs_stat_field ADD FOREIGN KEY (field_type_id) REFERENCES x_enum (id);
CREATE INDEX ON xs_stat_field (field_type_id);
ALTER TABLE xs_stat_field ADD FOREIGN KEY (aggregate_function_id) REFERENCES x_enum (id);
CREATE INDEX ON xs_stat_field (aggregate_function_id);
ALTER TABLE xs_stat_field ADD FOREIGN KEY (x_field_set_meta_id) REFERENCES x_field_set_meta (id);
CREATE INDEX ON xs_stat_field (x_field_set_meta_id);
ALTER TABLE xs_stat_field ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON xs_stat_field (modif_x_user_id);

-- xs_table
ALTER TABLE xs_table ADD UNIQUE (label);
ALTER TABLE xs_table ADD FOREIGN KEY (row_access_type_id) REFERENCES x_enum (id);
CREATE INDEX ON xs_table (row_access_type_id);
ALTER TABLE xs_table ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON xs_table (modif_x_user_id);

-- manyToMany xs_table_sluzba
ALTER TABLE xs_table_sluzba ADD UNIQUE (xs_table_id, sluzba_id);
ALTER TABLE xs_table_sluzba ADD FOREIGN KEY (xs_table_id) REFERENCES xs_table (id) ON DELETE CASCADE;
CREATE INDEX ON xs_table_sluzba (xs_table_id);
ALTER TABLE xs_table_sluzba ADD FOREIGN KEY (sluzba_id) REFERENCES sluzba (id);
CREATE INDEX ON xs_table_sluzba (sluzba_id);

-- xs_table_subtable
ALTER TABLE xs_table_subtable ADD FOREIGN KEY (xs_table_id) REFERENCES xs_table (id);
CREATE INDEX ON xs_table_subtable (xs_table_id);
ALTER TABLE xs_table_subtable ADD FOREIGN KEY (xs_stat_field_id) REFERENCES xs_stat_field (id);
CREATE INDEX ON xs_table_subtable (xs_stat_field_id);

-- xs_table_group_by_field_for_columns
ALTER TABLE xs_table_group_by_field_for_columns ADD UNIQUE (xs_table_id, xs_group_by_field_id);
ALTER TABLE xs_table_group_by_field_for_columns ADD FOREIGN KEY (xs_table_id) REFERENCES xs_table (id);
CREATE INDEX ON xs_table_group_by_field_for_columns (xs_table_id);
ALTER TABLE xs_table_group_by_field_for_columns ADD FOREIGN KEY (xs_group_by_field_id) REFERENCES xs_group_by_field (id);
CREATE INDEX ON xs_table_group_by_field_for_columns (xs_group_by_field_id);

-- xs_table_group_by_field_for_rows
ALTER TABLE xs_table_group_by_field_for_rows ADD UNIQUE (xs_table_id, xs_group_by_field_id);
ALTER TABLE xs_table_group_by_field_for_rows ADD FOREIGN KEY (xs_table_id) REFERENCES xs_table (id);
CREATE INDEX ON xs_table_group_by_field_for_rows (xs_table_id);
ALTER TABLE xs_table_group_by_field_for_rows ADD FOREIGN KEY (xs_group_by_field_id) REFERENCES xs_group_by_field (id);
CREATE INDEX ON xs_table_group_by_field_for_rows (xs_group_by_field_id);

-- xs_interval_set
ALTER TABLE xs_interval_set ADD UNIQUE (label);
ALTER TABLE xs_interval_set ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON xs_interval_set (modif_x_user_id);

-- xs_interval_item
ALTER TABLE xs_interval_item ADD FOREIGN KEY (xs_interval_set_id) REFERENCES xs_interval_set (id);
CREATE INDEX ON xs_interval_item (xs_interval_set_id);
