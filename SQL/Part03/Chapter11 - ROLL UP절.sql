-- 문법
SELECT 
	C1, C2, C3,
	집계함수(C4)
FROM
	TABLE_NAME
GROUP BY
ROLLUP (C1, C2, C3)
;
-- 소계를 생성할 컬럼 지정
-- 컬럼 지정 순서에 따라 결과값 다를 수 있다.
-- (제일 앞에 놓인 것에 소계 구함)

SELECT
	C1, C2, C3,
	집계함수(C4)
FROM
	TABLE_NAME
GROUP BY C1
ROLLUP
	(C2, C3)
;
-- 특정 컬럼은 제외한 부분적인 ROLLUP 가능

--
SELECT
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
FROM
	SALES
GROUP BY
ROLLUP 
	(brand, segment)
ORDER BY 
	brand, segment
;

--
SELECT
	SEGMENT,
	BRAND,
	SUM(QUANTITY)
FROM
	SALES
GROUP BY SEGMENT,
ROLLUP 
	(BRAND)
ORDER BY
	SEGMENT, BRAND
;
-- 부분 ROLL UP시 전체 합계는 구하지 않는다. 