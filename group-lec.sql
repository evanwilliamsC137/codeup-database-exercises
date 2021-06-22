USE employees;

-- # Count how many of each gender
SELECT COUNT(*), gender FROM employees GROUP BY gender;

-- # count all the last names
SELECT COUNT(*), last_name FROM employees GROUP BY last_name ORDER BY COUNT(*);

-- # Finding the average age of hire for employees at the company
SELECT AVG(DATEDIFF(hire_date,birth_date)/365) FROM employees;

-- # MAX
SELECT MAX(DATEDIFF(hire_date,birth_date)/365) FROM employees;

-- # MIN
SELECT MIN(DATEDIFF(hire_date,birth_date)/365) FROM employees;

SELECT DISTINCT title FROM titles;