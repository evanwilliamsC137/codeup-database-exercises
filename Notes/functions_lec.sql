USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya'
ORDER BY last_name;

# All days MAya was hired
SELECT hire_date FROM employees WHERE first_name = 'Maya';


# Day of the month output from hire date
SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

# ordered by hire date
SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

# Month
SELECT MONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY MONTH(hire_date);

# Year
SELECT YEAR(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY YEAR(hire_date);