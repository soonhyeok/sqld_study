-- 문법
-- 특정 집합읋 출력시, 출력하는 행의 수를 한정하는 역할을 한다.
-- 부분 범위 처리시 사용된다.
SELECT
	*
FROM 
	TABLE_NAME
LIMIT N
;

SELECT
	*
FROM
	TABLE_NAME
LIMIT N OFFSET M
;

--
SELECT
	FILM_ID,
	TITLE,
	RELEASE_YEAR
FROM
	FILM
ORDER BY
	FILM_ID
LIMIT 5
;

-- OFFSET의 사용
SELECT
	FILM_ID,
	TITLE,
	RELEASE_YEAR
FROM
	FILM
ORDER BY
	FILM_ID
LIMIT 4
OFFSET 3;

-- 내림차순 정렬
-- RENTAL_RATE의 정렬 값 중 최솟값 10값만 출력
SELECT
	FILM_ID,
	TITLE,
	RENTAL_RATE
FROM
	FILM 
ORDER BY
	RENTAL_RATE DESC
LIMIT 10
;