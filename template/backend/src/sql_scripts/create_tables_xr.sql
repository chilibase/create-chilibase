-- not used for car_demo yet

-- xr tables (r stands for reports)
-- xr tables reference tables x_user, x_enum, xs_group_by_field (these tables can stay empty, if they are not used)

CREATE TABLE xr_report (
    id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    entity VARCHAR NOT NULL,
    sql_query VARCHAR, -- readOnly, generated sql is logged here for debug purposes

    modif_date TIMESTAMP,
    modif_x_user_id INT,
    version INT NOT NULL
);

CREATE TABLE xr_report_column (
    id SERIAL PRIMARY KEY,
    header VARCHAR NOT NULL,
    field VARCHAR NOT NULL,
    field_type_id INT, -- x_enum "xFieldType" - XFieldType = "string" | "decimal" | "date" | "datetime" | "interval" | "boolean" - used if field is not field name, but some sql expression
    width INT,
    column_order INT NOT NULL,
    xr_report_id INT NOT NULL
);

CREATE TABLE xr_report_where_item (
    id SERIAL PRIMARY KEY,
    item_type_id INT NOT NULL, -- x_enum "xrWhereItemType": groupByField | dateFromTo | filter
    xs_group_by_field_id INT, -- used if item_type_id = groupByField
    label VARCHAR, -- used in dialog
    date_field VARCHAR, -- used if item_type_id = dateFromTo
    where_item VARCHAR, -- used if item_type_id = filter
    item_order INT NOT NULL,
    xr_report_id INT NOT NULL
);

CREATE TABLE xr_report_sort_field (
    id SERIAL PRIMARY KEY,
    field VARCHAR NOT NULL,
    order_id INT NOT NULL, -- x_enum "xOrderType": "asc" | "desc"
    field_order INT NOT NULL,
    xr_report_id INT NOT NULL
);

-- xr_report
ALTER TABLE xr_report ADD UNIQUE (label);
ALTER TABLE xr_report ADD FOREIGN KEY (modif_x_user_id) REFERENCES x_user (id);
CREATE INDEX ON xr_report (modif_x_user_id);

-- xr_report_column
ALTER TABLE xr_report_column ADD FOREIGN KEY (field_type_id) REFERENCES x_enum (id);
CREATE INDEX ON xr_report_column (field_type_id);
ALTER TABLE xr_report_column ADD FOREIGN KEY (xr_report_id) REFERENCES xr_report (id);
CREATE INDEX ON xr_report_column (xr_report_id);

-- xr_report_where_item
ALTER TABLE xr_report_where_item ADD FOREIGN KEY (item_type_id) REFERENCES x_enum (id);
CREATE INDEX ON xr_report_where_item (item_type_id);
ALTER TABLE xr_report_where_item ADD FOREIGN KEY (xs_group_by_field_id) REFERENCES xs_group_by_field (id);
CREATE INDEX ON xr_report_where_item (xs_group_by_field_id);
ALTER TABLE xr_report_where_item ADD FOREIGN KEY (xr_report_id) REFERENCES xr_report (id);
CREATE INDEX ON xr_report_where_item (xr_report_id);

-- xr_report_sort_field
ALTER TABLE xr_report_sort_field ADD FOREIGN KEY (order_id) REFERENCES x_enum (id);
CREATE INDEX ON xr_report_sort_field (order_id);
ALTER TABLE xr_report_sort_field ADD FOREIGN KEY (xr_report_id) REFERENCES xr_report (id);
CREATE INDEX ON xr_report_sort_field (xr_report_id);
