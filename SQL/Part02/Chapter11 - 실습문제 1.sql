SELECT DISTINCT
	CUSTOMER_ID
FROM
	PAYMENT
WHERE 
	AMOUNT >= (
		SELECT
			AMOUNT
		FROM
			PAYMENT
		ORDER BY
			AMOUNT DESC LIMIT 1
	)
;