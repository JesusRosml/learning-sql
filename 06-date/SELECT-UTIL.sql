SELECT
	( SELECT COUNT(*) FROM employees ) AS total,
	( SELECT SUM( salary ) FROM employees ) AS total;