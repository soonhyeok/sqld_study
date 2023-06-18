-- 아래 SQL문은 EXCEPT 연산을 사용해 재고가 없는 영화를 구하고 있다. 해당 SQL문은 EXCEPT 연산을 사용하지 말고 같은 결과를 도출하라.
SELECT
	FILM_ID,
	TITLE
FROM
	FILM
EXCEPT
SELECT DISTINCT
	INVENTORY.FILM_ID,
	TITLE 
FROM
	INVENTORY
INNER JOIN FILM
ON FILM.FILM_ID = INVENTORY.FILM_ID
ORDER BY 
	TITLE
;

SELECT
	FILM_ID,
	TITLE
FROM
	FILM
WHERE 
NOT EXISTS 
(
	SELECT DISTINCT
		1
	FROM
		INVENTORY
	WHERE
		INVENTORY.FILM_ID = FILM.FILM_ID
)	
ORDER BY
	TITLE
;
