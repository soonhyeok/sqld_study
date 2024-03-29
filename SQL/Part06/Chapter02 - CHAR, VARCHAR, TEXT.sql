-- CHAR, VARCHAR, TEXT 실습
CREATE TABLE CHARACTER_TESTS
(
	ID SERIAL PRIMARY KEY,
	X CHAR(3),
	Y VARCHAR(10),
	Z TEXT
)
;

INSERT INTO CHARACTER_TESTS
VALUES
	(1, 'Y', 'YES', 'YESYESYES')
;

COMMIT;

SELECT * FROM CHARACTER_TESTS;

--
INSERT INTO character_tests
VALUES
	(2, 'Y', 'Y', 'YESYESYES')
;

COMMIT;

SELECT *
FROM character_tests
WHERE x = y
;