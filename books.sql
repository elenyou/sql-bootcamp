CREATE TABLE books
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

--HOW MANY TITLES CONTAINE 'THE' (exercise)
SELECT
COUNT(title)
FROM books
WHERE title
LIKE '%the%';

--title of the lagest book
SELECT title, pages
FROM books
WHERE pages = (SELECT MAX(pages)
				FROM books);
--or
SELECT title, pages
FROM books
ORDER BY pages
ASC LIMIT 1;

--find the year each author published their first book
SELECT author_lname,
	   author_fname,
	   Min(released_year)
FROM books
GROUP BY author_lname,
		 author_fname;

--list with authora and longest book
SELECT
	CONCAT(author_lname, ' ', author_fname) AS author,
	MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
		 author_fname;

--SUM all pages each author has written
SELECT author_lname,
	   author_fname,
	   SUM(pages)
FROM books
GROUP BY author_lname,
		 author_fname;

--CALCULATE the average stock quantity for books released in the same released_year
SELECT released_year,
	   AVG(stock_quantity)
FROM books
GROUP BY released_year;

--Print the number of books in the database
SELECT COUNT(*) FROM books;

--How many books was released each year
SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;

--PRINT out the total number of books in stock_quantity
SELECT SUM(stock_quantity) FROM books;

--FIND the average realeased_year for each author
SELECT
	CONCAT(author_lname,' ', author_fname) AS author,
	AVG(released_year) AS 'avarage released year'
FROM books
GROUP BY author_lname,
		 author_fname;

-- FIND FULL name of the author who wrote the longest book
SELECT
	CONCAT(author_lname,' ', author_fname) AS author,
	pages
FROM books
WHERE pages = (SELECT MAX(pages) AS 'longest book' FROM books);

--

