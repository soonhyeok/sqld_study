-- IS NULL 연산자 문법
SELECT
	*
FROM 
	TABLE_NAME
WHERE
	COLUMN_NAME IS NULL
;

SELECT
	*
FROM
	TABLE_NAME
WHERE
	COLUMN_NAME IS NOT NULL
;

-- 실습준비
CREATE TABLE CONTACTS
(
	ID INT GENERATED BY DEFAULT AS IDENTITY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(255) NOT NULL,
	PHONE VARCHAR(15),
	PRIMARY KEY(ID)
);

INSERT INTO CONTACTS
(
	FIRST_NAME, LAST_NAME, EMAIL, PHONE
)
VALUES
('John', 'Doe', 'john.doe@example.com', NULL),
('Lily', 'Bush', 'lily.bush@example.com', '(408-234-2764)')
;

SELECT
	*
FROM 
	contacts
;

-- IS NULL 실습
-- 결과집합이 공집합
-- NULL은 '=' 연산으로 비교할 수 없다.
SELECT
	ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	PHONE
FROM
	CONTACTS
WHERE 
	PHONE = NULL;
	
--
SELECT
	ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	PHONE
FROM
	CONTACTS
WHERE
	PHONE IS NULL
;

--
SELECT 
	ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	PHONE
FROM
	CONTACTS
WHERE
	PHONE IS NOT NULL
;