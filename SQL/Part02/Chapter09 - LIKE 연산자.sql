-- 문법
SELECT 
	*
FROM 
	TABLE_NAME
WHERE 
	COLUMN_NAME LIKE 특정패턴
;

SELECT 
	*
FROM 
	TABLE_NAME
WHERE 
	COLUMN_NAME NOT LIKE 특정패턴
;

-- 실습
SELECT 
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE 'Jen%'
;

--
SELECT
	'FOO' LIKE 'FOO',
	'FOO' LIKE 'F%',
	'FOO' LIKE '_O_',
	'BAR' LIKE 'B_'
;

--
SELECT
	FIRST_NAME,
	LAST_NAME 
FROM 
	CUSTOMER
WHERE
	FIRST_NAME LIKE '%er%'
;

--
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE '_her%'
;

--
SELECT 
	FIRST_NAME,
	LAST_NAME
FROM 
	CUSTOMER
WHERE 
	FIRST_NAME NOT LIKE 'Jen%'
;