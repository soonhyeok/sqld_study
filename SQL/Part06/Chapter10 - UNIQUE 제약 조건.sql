-- UNIQUE 제약 조건 실습
CREATE TABLE PERSON
(
	ID SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50),
	EMAIL VARCHAR(50),
	UNIQUE(EMAIL)
)
;

-- 이메일 주소는 유일한 값이어야 한다.

INSERT INTO PERSON
	(FIRST_NAME, LAST_NAME, EMAIL)
VALUES
(
	'john',
	'doe',
	'j.doe@postgresqltutorial.com'
);

COMMIT;

INSERT INTO PERSON
	(FIRST_NAME, LAST_NAME, EMAIL)
VALUES
(
	'john',
	'doe',
	'j.doe@postgresqltutorial.com'
)
;