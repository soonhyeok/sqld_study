-- 문법
SELECT 
	*
FROM 
	TABLE_NAME
WHERE
	COLUMN_NAME 
	IN (VALUE1, VALUE 2, ···)
;

--
SELECT
	*
FROM
	TABLE_NAME
WHERE
	COLUMN_NAME
	IN (
		SELECT
			COLUMN_2
		FROM
			TABLE_NAME2
	)
;

-- 실습
-- CUSTOMER_ID가 1 혹은 2인 행을 출력
-- 그 결과를 RETURN_DATE 컬럼 내림차순으로 출력한다.
SELECT 
	customer_id,
	rental_id,
	return_date
FROM
	rental
WHERE
	customer_id
	IN (1, 2)
ORDER BY 
	return_date DESC
;

--
SELECT 
	customer_id,
	rental_date,
	return_date
FROM
	rental
WHERE 
	customer_id = 1
	OR customer_id = 2
ORDER BY
	return_date
;

--
SELECT
	customer_id,
	rental_id,
	return_date
FROM
	rental
WHERE
	customer_id
	NOT IN (1, 2)
ORDER BY
	return_date
;

--
SELECT
	customer_id,
	rental_id,
	rental_date
FROM
	rental	
WHERE
	customer_id <> 1
	AND customer_id <> 2
;

-- 
SELECT
	customer_id
FROM 
	rental
WHERE 
	CAST (return_date AS DATE) = '2005-5-27'
;

SELECT 
	first_name,
	last_name
FROM
	customer
WHERE
	customer_id IN (
		SELECT
			customer_id
		FROM
			rental
		WHERE
			CAST(return_date AS date) = '2005-5-27'
	)
;