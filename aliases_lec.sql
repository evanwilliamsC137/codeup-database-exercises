USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
         LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
    LIMIT 25;

SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
    LIMIT 10;

SELECT CONCAT(first_name,' ',last_name) AS Name,
       DATEDIFF(hire_date,birth_date)/365 AS 'Age when hired'
FROM employees
ORDER BY DATEDIFF(hire_date,birth_date)/365 DESC
    LIMIT 50;