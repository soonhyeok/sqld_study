-- ASC 정렬
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME ASC
;

-- DESC 정렬
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME DESC
;

-- ASC + DESC 정렬
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME ASC,
	LAST_NAME DESC
;