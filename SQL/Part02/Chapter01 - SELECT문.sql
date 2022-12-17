-- postgres 연결 확인문
select * from ACTOR;

-- 전체컬럼 조회
select 
	*
from
	CUSTOMER
;

-- 지정한 컬럼을 조회
select
	FIRST_NAME,
	LAST_NAME,
	EMAIL
from
	CUSTOMER
;