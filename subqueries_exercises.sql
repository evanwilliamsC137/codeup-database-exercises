-- Find all the employees with the same hire date as employee 101010 using a subquery.

SELECT CONCAT(first_name,' ',last_name)
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);


-- 69 Rows
--
-- Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );



-- 314 total titles, 6 unique titles
--
-- Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999%'
      AND gender = 'F'
);

# Bonus
SELECT dept_name
FROM departments WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F') AND to_date > now()
        );

SELECT first_name, last_name
FROM employees
WHERE emp_no = (SELECT emp_no FROM salaries WHERE salary = (SELECT max(salary) FROM salaries));


