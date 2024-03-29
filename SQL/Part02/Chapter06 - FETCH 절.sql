-- 문법
SELECT
	*
FROM 
	TABLE_NAME
FETCH 
	FIRST [N] ROW ONLY
;

--
SELECT
	*
FROM	
	TABLE_NAME
OFFSET 
	N ROWS
FETCH
	FIRST [N] ROW ONLY
;

-- 실습
-- TITLE로 정렬한 집합 중 최초의 단 한건의 행 리턴
SELECT
	FILM_ID,
	TITLE
FROM
	FILM
ORDER BY
	TITLE
FETCH 
	FIRST ROW ONLY 
;

--
SELECT
	FILM_ID,
	TITLE
FROM
 	FILM
ORDER BY
	TITLE
FETCH
	FIRST 1 ROW ONLY
;

-- TITLE로 정렬한 집합 중 6번째 행부터 5건의 행을 리턴한다.
SELECT
	film_id,
	title
FROM
	film
ORDER BY
	title
OFFSET
	5 -- 0부터 시작
FETCH
	FIRST 5 ROW ONLY 
;