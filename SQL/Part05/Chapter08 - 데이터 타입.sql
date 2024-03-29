-- 다양한 데이터 타입 지원 - BOOLEAN, CHARACTER, NUMERIC
CREATE TABLE DATA_TYPE_TEST_1
(
	A_BOOLEAN BOOLEAN,
	B_CHAR CHAR(10),
	C_VARCHAR VARCHAR(10),
	D_TEXT TEXT,
	E_INT INT,
	F_SMALLINT SMALLINT,
	G_FLOAT FLOAT,
	H_NUMERIC NUMERIC(15, 2)
)
;

INSERT INTO DATA_TYPE_TEST_1
VALUES
(
	TRUE,		-- A_BOOLEAN
	'ABCDE',	-- B_CHAR
	'ABCDE',	-- C_VARCHAR
	'TEXT',		-- D_TEXT
	1000,		-- E_INT
	10,			-- F_SMALLINT
	10.12345,	-- G_FLOAT
	10.25		-- H_NUMERIC
)
;

-- 다양한 데이터 타입 지원 - TIME, ARRAYS, JSON
CREATE TABLE DATA_TYPE_TEST_2
(
	A_DATE DATE,
	B_TIME TIME,
	C_TIMESTAMP TIMESTAMP,
	D_ARRAY TEXT[],
	E_JSON JSON
)
;

INSERT INTO DATA_TYPE_TEST_2
VALUES
(
	CURRENT_DATE,															-- A_DATE
	LOCALTIME,																-- B_TIME
	CURRENT_TIMESTAMP,														-- C_TIMESTAMP
	ARRAY['010-1234-1234', '010-4321-4321'],								-- D_ARRAY
	'{"CUSTOMER" : "JOHN DOE",  "ITEMS" : {"PRODUCT" : "BEER", "QTY" : 6}}' -- E_JSON
)
;