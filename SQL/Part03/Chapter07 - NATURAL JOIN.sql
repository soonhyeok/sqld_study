-- 실습준비
CREATE TABLE CATEGORIES
(
	CATEGORY_ID SERIAL PRIMARY KEY,
	CATEGORY_NAME VARCHAR(255) NOT NULL
)
;

CREATE TABLE PRODUCTS
(
	PRODUCT_ID SERIAL PRIMARY KEY,
	PRODUCT_NAME VARCHAR(255) NOT NULL,
	CATEGORY_ID INT NOT NULL,
	FOREIGN KEY (CATEGORY_ID)
	REFERENCES CATEGORIES (CATEGORY_ID)
)
;

INSERT INTO CATEGORIES
(CATEGORY_NAME)
VALUES
	('Smart Phone'),
	('Laptop'),
	('Tablet')
;

INSERT INTO PRODUCTS
(PRODUCT_NAME, CATEGORY_ID)
VALUES
	('iPhone', 1),
	('Samsung Galaxy', 1),
	('HP Elite', 2),
	('Lenovo Thinkpad', 2),
	('iPad', 3),
	('Kindle Fire', 3)
;

SELECT
	*
FROM 
	PRODUCTS A
NATURAL JOIN
	CATEGORIES B
;
--
SELECT
	A.CATEGORY_ID, A.PRODUCT_ID,
	A.PRODUCT_NAME, B.CATEGORY_NAME
FROM
	PRODUCTS A
INNER JOIN CATEGORIES B 
ON A.CATEGORY_ID = B.CATEGORY_ID
;

--
SELECT 
	*
FROM
	CITY A
NATURAL JOIN
	COUNTRY B
;

SELECT
	*
FROM 
	CITY A
INNER JOIN
	COUNTRY B
ON
	(A.COUNTRY_ID = B.COUNTRY_ID)
;