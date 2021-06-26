USE employees;

-- Organize by birth date. put birthdays in order
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date;


-- same birthday, organize by last name
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name;


-- organize birthday results by seniority
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, hire_date;