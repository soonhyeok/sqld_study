-- 문법
SELECT
	column_1_1,
	column_1_2,
FROM 
	table_name_1
INTERSECT
SELECT
	column_2_1,
	column_2_2
FROM
	table_name_2
;

-- 실습준비
DROP TABLE employees;

CREATE TABLE employees
(
	employee_id serial PRIMARY KEY,
	employee_name varchar(255) NOT null
);

CREATE TABLE keys
(
	employee_id int PRIMARY KEY,
	effective_date date NOT NULL,
	FOREIGN KEY (employee_id)
	REFERENCES employees (employee_id)
);

CREATE TABLE hipos
(
	employee_id int PRIMARY KEY,
	effective_date date NOT NULL,
	FOREIGN KEY (employee_id)
	REFERENCES employees (employee_id)
)
;

INSERT INTO employees (employee_name)
VALUES
	('Joyce Edwards'),
	('Diane Collins'),
	('Alice Stewart'),
	('Julie Sanchez'),
	('Heather Morris'),
	('Teresa Rogers'),
	('Doris Reed'),
	('Gloria Cook'),
	('Evelyn Morgan'),
	('Jean Bell')
;

INSERT INTO Keys
VALUES
	(1, '2000-02-01'),
	(2, '2001-06-01'),
	(3, '2002-01-01'),
	(5, '2002-01-01'),
	(7, '2005-06-01')
;

INSERT INTO hipos
VALUES
	(9, '2000-01-01'),
	(2, '2002-06-01'),
	(5, '2006-06-01'),
	(10, '2005-06-01')
;

-- 실습
SELECT
	employee_id
FROM
	keys
INTERSECT
SELECT
	employee_id
FROM
	hipos
;

SELECT
	a.employee_id
FROM keys a
INNER JOIN hipos b
ON (a.employee_id = b.employee_id)
;--결과값 동일하다.

SELECT
	EMPLOYEE_ID
FROM
	KEYS
INTERSECT
SELECT
	EMPLOYEE_ID
FROM
	HIPOS
ORDER BY EMPLOYEE_ID DESC;