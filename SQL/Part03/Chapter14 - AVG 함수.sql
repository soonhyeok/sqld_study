-- 분석함수 문법
SELECT
	C1,
	분석함수(C2, C3, ···) OVER(PARTITION BY C4 ORDER BY C5)
FROM 
	TABLE_NAME
;
-- 사용하고자 하는 분석함수를 쓰고 대상 컬럼을 기재 후,
-- PARTION BY에서 값을 구하는 기준 컬럼을 쓰고,
-- ORDER BY에서 정렬 컬럼을 기재한다.

SELECT
	AVG(PRICE)
FROM
	PRODUCT
;

--
SELECT
	B.GROUP_NAME,
	AVG(PRICE)
FROM
	PRODUCT A
INNER JOIN PRODUCT_GROUP B
ON (A.GROUP_ID = B.GROUP_ID)
GROUP BY
	B.GROUP_NAME
;

--
SELECT
	A.PRODUCT_NAME,
	A.PRICE,
	B.GROUP_NAME,
	AVG(A.PRICE) OVER(PARTITION BY B.GROUP_NAME)
FROM
	PRODUCT A
INNER JOIN PRODUCT_GROUP B
ON(A.GROUP_ID = B.GROUP_ID)
;