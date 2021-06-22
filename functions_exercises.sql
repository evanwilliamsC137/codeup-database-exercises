USE employees;

SELECT * from employees
WHERE first_name IN ('Irena' , 'Vidya' , 'Maya')
ORDER BY first_name;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name,' ',last_name) FROM employees
WHERE last_name like '%E%'
ORDER BY emp_no DESC;


# Find all employees born on Christmas — 842 rows.
# Find all employees hired in the 90s and born on Christmas — 362 rows.
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).


SELECT concat(first_name, ' ', last_name, ' || days working at company: ', DATEDIFF(now(), hire_date)) FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date like '%12-25'
ORDER BY birth_date, hire_date DESC;



