CREATE DATABASE some_db_name;
DROP DATABASE some_db_name;
USE some_db_name;

--show warnings
SHOW WARNINGS;

--creating tables
CREATE TABLE tablename (
  column_name data_type,
  column_name data_type
);
--creating tables and not permited to be empty
CREATE TABLE tablename (
  column_name data_type NOT NULL,
  column_name data_type NOT NULL
);

--creating tables with default values
CREATE TABLE tablename (
  column_name data_type DEFAULT 'VALUE1',
  column_name data_type DEFAULT 'VALUE2'
);

--creating tables with PRIMARY KEY
CREATE TABLE tablename (
  column_name_id INT NOT NULL,
  column_name_1 data_type DEFAULT 'VALUE1',
  column_name_2 data_type DEFAULT 'VALUE2',
  PRIMARY KEY (column_name_id)
);

--HOW TO CHECK COLUMN INFO
SHOW COLUMNS
FROM
  tablename;
--or
  DESC tablename;

--delete table
  DROP TABLE tablename;

-- Add data to the table
INSERT INTO
  tablename(column_name, column_name)
VALUES
  (value1, value2);
