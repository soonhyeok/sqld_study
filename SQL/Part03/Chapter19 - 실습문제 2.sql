-- RENTAL과  CUSTOMER TABLE을 이용해 현재까지 가장 많이 RENTAL을 한 고객의 고객 ID, 렌탈순위, 누적렌탈횟수, 이름을 출력하라.
SELECT
	a.customer_id,
	row_number() OVER
	(ORDER BY Count(b.rental_id) desc) AS rental_rank,
	count(b.rental_id) AS rental_count
FROM
	customer a,
	rental b
WHERE
	a.customer_id = b.customer_id
GROUP BY
	a.customer_id
LIMIT 1
;