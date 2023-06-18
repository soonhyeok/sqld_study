-- 문법
CREATE TABLE NEW_TABLE
AS
	SELECT문
;

CREATE TABLE NEW_TABLE
	(NEW_COLUMN_1, NEW_COLUMN_2)
AS
	SELECT문
;

CREATE TABLE IF NOT EXISTS NEW_TABLE
AS
	SELECT문
;

--
SELECT
	A.FILM_ID,
	A.TITLE,
	A.RELEASE_YEAR,
	A.LENGTH,
	A.RATING
FROM
	FILM A,
	FILM_CATEGORY B
WHERE
	A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1
;


CREATE TABLE ACTION_FILM
AS
SELECT
	A.FILM_ID,
	A.TITLE,
	A.RELEASE_YEAR,
	A.LENGTH,
	A.RATING
FROM
	FILM A,
	FILM_CATEGORY B
WHERE
	A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1
;

SELECT * FROM ACTION_FILM;

CREATE TABLE IF NOT EXISTS ACTION_FILM
AS
SELECT
	A.FILM_ID,
	A.TITLE,
	A.RELEASE_YEAR,
	A.LENGTH,
	A.RATING
FROM
	FILM A,
	FILM_CATEGORY B
WHERE 
	A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1
;