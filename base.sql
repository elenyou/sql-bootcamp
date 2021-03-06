--DARABASE
CREATE DATABASE some_db_name;
DROP DATABASE some_db_name;
USE some_db_name;

--show warnings SHOW WARNINGS;

--TABLES
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

--HOW TO CHECK COLUMN INFO  - SHOW COLUMNS FROM tablename;
--or DESC tablename;

--delete table
DROP TABLE tablename;

--TABLE DATA
-- Add data to the table
INSERT INTO tablename(column_name, column_name) VALUES (value1, value2);

--show all columns from table
SELECT * FROM tablename;

--show all info from column
SELECT column_name FROM tablename;

--show all  columns from table with condition (example, with value = 0)
SELECT * FROM tablename WHERE value_of_column_name = 0;

--using aliases(example with ID)
SELECT column_name_id AS id FROM tablename;

--update
UPDATE tablename SET value_of_column_name_1 = 0 WHERE column_name = "column_name_1";

--delete
DELETE FROM tablename WHERE column_name = "column_name_1";

--combine data CONCAT
CONCAT(column_name_1, column_name_2);

-- work with parts of string SUBSTRING (title will be 10 simbols from 1 to 10)
SELECT SUBSTRING(column_name, 1, 10) from tablename;

--replace parts of strings REPLACE
SELECT REPLACE ('column_name_value', 'what_we_remove', 'what_we_trying_to_replace_with');

--REVERSE
SELECT SEVERSE('HELLO'); --OLLEH

--CHAR_LENGTH counts Characters in String
SELECT CHAR_LENGRH('HELLO'); --5

--UPPER() and LOWER() change a string case
SELECT UPPER('hello');

--DISTINCT give us unique data without dublicates
SELECT DISTINCT author_lname FROM books;

--ORDER BY sortings results
--DESC or ASC

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT title, author_lname, author_fname, FROM books ORDER BY 2; --autor_lname

--LIMIT
SELECT title FROM books LIMIT 3;

--LIKE nice for searching
SELECT author_fname FROM books WHERE author_fname LIKE '%da%';
-- '____' wildcard  four characters in a row

--Aggregate Functions

--count rows
SELECT COUNT(*) FROM books;
--uniqe count
SELECT COUNT(DISTINCT author_fname, author_lname ) FROM books;

--GROUP BY summarizes or aggregates identical data into single rows
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

--Min and Max
SELECT Min(released_year) FROM books;
SELECT MAX(pages) FROM books;

--SUM
SELECT SUM(pages) FROM books;

--AVG
SELECT AVG(pages) FROM books;

-- DATA types

--CHAR has fixed length
--INT whole numbers
-- DECIMAL
-- DATE "YYYY-MM-DD"
--TIME "HH:MM:SS"
-- DATETIME


--CURTIME(), CURDATE(), NOW() - current
--DAY(),DAYNAME(),DAYOFWEEK(),DAYOFYEAR()

--DATEMATH: DATEDIFF() and DATE_ADD()

--TIMESTAMPS
--example
CREATE TABLE comments (
  content VARCHAR(100),
  created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE comments2 (
  content VARCHAR(100),
  created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);


