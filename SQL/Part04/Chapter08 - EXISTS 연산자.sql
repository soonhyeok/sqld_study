--
SELECT
	first_name,
	last_name
FROM
	customer c
WHERE
EXISTS
(
	SELECT
		1
	FROM
		payment p
	WHERE
		p.customer_id = c.customer_id
	AND p.amount > 11
)
ORDER BY
	first_name, last_name
;

-- 해당 집합이 존재하기만 하면 더이상 연산을 멈춰 성능상 유리

-- NOT EXISTS
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER C
WHERE
NOT EXISTS
(
	SELECT 1
	FROM PAYMENT P
	WHERE
		P.CUSTOMER_ID = C.CUSTOMER_ID
	AND P.AMOUNT > 11
)
ORDER BY
	FIRST_NAME, LAST_NAME
;