USE employees;

# Only first 20
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20;


# Next 20
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20 OFFSET 20;

# Next 20
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20 OFFSET 40;

# underscore wild card represents one space
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '__e%' ORDER BY  last_name;