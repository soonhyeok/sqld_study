-- 실습 준비
CREATE TABLE CATEGORY_IMPORT(
	CATEGORY_ID SERIAL NOT NULL,
	"NAME" VARCHAR(25) NOT NULL,
	LAST_UPDATE TIMESTAMP NOT NULL DEFAULT NOW(),
	CONSTRAINT CATEGORY_IMPORT_KEY PRIMARY KEY(CATEGORY_ID)
)
;

COMMIT;

--
COPY CATEGORY_IMPORT(CATEGORY_ID, "NAME", LAST_UPDATE)
FROM 'C:\TEMP\DB_CATEGORY.CSV'
DELIMITER ','
CSV HEADER
;

DROP TABLE category_import;

SELECT * FROM CATEGORY_IMPORT;

--
COPY CATEGORY_IMPORT(CATEGORY_ID, "NAME", LAST_UPDATE)
FROM 'C:\TEMP\DB_CATEGORY.txt'
DELIMITER '|'
CSV HEADER
;

--
COPY CATEGORY_IMPORT(CATEGORY_ID, "NAME", LAST_UPDATE)
FROM 'C:\TEMP\DB_CATEGORY_2.CSV'
DELIMITER ','
CSV
;