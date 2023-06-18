-- DVD 렌탈 시스템의 관리자는 고객별 매출 순위를 알고 싶다. 
-- 신규 테이블을 생성해서 고객의 매출 순위를 관리하고 싶으며,
-- 신규 테이블의 이름은 CUSTOMER_RANK이고
-- 테이블의 구성은 CUSTOMER_ID, CUSTOMER_RANK로 정했다.
-- CTAS 기법을 이용해 신규 테이블을 생성하면서 데이터를 입력하라.
CREATE TABLE CUSTOMER_RANK
AS
(
	SELECT
	A.CUSTOMER_ID,
	ROW_NUMBER() OVER(ORDER BY A.SUM_AMOUNT DESC) AS CUSTOMER_RANK
	FROM
		(SELECT
			CUSTOMER_ID, SUM(AMOUNT) AS SUM_AMOUNT
		FROM 
			PAYMENT A
		GROUP BY
			CUSTOMER_ID
		) A
	ORDER BY
		CUSTOMER_RANK ASC
)
;