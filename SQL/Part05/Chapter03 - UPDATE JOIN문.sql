-- 문법
UPDATE
	TARGET_TABLE A
SET A.COLUMN_1 = 표현식
FROM REF_TABLE B
WHERE A.COLUMN_1 = B.COLUMN_1
;

-- 참조 TABLE 지정

-- 실습준비
CREATE TABLE PRODUCT_SEGMENT
(
	ID SERIAL PRIMARY KEY,
	SEGMENT VARCHAR NOT NULL,
	DISCOUNT NUMERIC (4, 2)
)
;

INSERT INTO PRODUCT_SEGMENT
	(SEGMENT, DISCOUNT)
VALUES
	('Grand Luxury', 0.05),
	('Luxury', 0.06),
	('Mass', 0.1)
;

COMMIT;

CREATE TABLE PRODUCT(
	ID SERIAL PRIMARY KEY,
	NAME VARCHAR NOT NULL,
	PRICE NUMERIC(10, 2),
	NET_PRICE NUMERIC(10,2),
	SEGMENT_ID INT NOT NULL,
	FOREIGN KEY(SEGMENT_ID)
	REFERENCES PRODUCT_SEGMENT(ID)
)
;

INSERT INTO PRODUCT
	(NAME, PRICE, SEGMENT_ID)
VALUES
	('K5', 804.89, 1),
	('K7', 228.55, 3),
	('K9', 366.45, 2),
	('SONATA', 145.33, 3),
	('SPARK', 551.77, 2),
	('AVANTE', 261.58, 3),
	('LOZTE', 519.62, 2),
	('SANTAFE', 843.31, 1),
	('TUSON', 254.18, 3),
	('TRAX', 427.78, 2),
	('ORANDO', 936.29, 1),
	('RAY', 910.34, 1),
	('MORNING', 208.33, 3),
	('VERNA', 985.45, 1),
	('K8', 841.26, 1),
	('TICO', 896.38, 1),
	('MATIZ', 575.74, 2),
	('SPORTAGE', 530.62, 2),
	('ACCENT', 892.43, 1),
	('TOSCA', 161.71, 3)
;

COMMIT;

-- 실습
UPDATE PRODUCT A
SET NET_PRICE = A.PRICE - (A.PRICE * B.DISCOUNT)
FROM PRODUCT_SEGMENT B
WHERE A.SEGMENT_ID = B.ID
;

SELECT * FROM product;