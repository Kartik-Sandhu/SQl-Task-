use hr;
select * from countries;
select * from departments;
select * from employees;
select * from job_history;
select * from jobs;
select * from locations;

-- 1 
select *from employees;

-- 2 
select first_name , last_name from employees;

-- 3

SELECT * FROM employees
WHERE salary > 50000;

-- 4 
SELECT AVG(salary) AS average_salary
FROM employees;

-- 5 
SELECT COUNT(DISTINCT city) AS distinct_city_count
FROM Locations;

-- 6 
SELECT * FROM departments
WHERE department_name = 'IT';

-- 7 
-- For top 5 highest salaries
SELECT * FROM emp_details_view
ORDER BY salary DESC
LIMIT 5;

-- For top 5 lowest salaries 
SELECT * FROM emp_details_view
ORDER BY salary ASC
LIMIT 5;

--  8 
SELECT * 
FROM emp_details_view
WHERE department_name = 'Sales'
AND region_name = 'Europe';

-- 9 
SELECT * 
FROM emp_details_view
WHERE commission_pct IS NOT NULL;

-- 10 
SELECT department_name, SUM(salary) AS total_salary
FROM emp_details_view
GROUP BY department_name;

-- 11 
SELECT city, SUM(commission_pct) AS total_commission
FROM emp_details_view
GROUP BY city;

-- 12 
SELECT department_name, 
       MAX(salary) AS max_salary, 
       MIN(salary) AS min_salary
FROM emp_details_view
GROUP BY department_name;

-- 13 
SELECT * 
FROM emp_details_view
ORDER BY salary DESC
LIMIT 10 ;

-- 14 
SELECT city, salary
FROM emp_details_view
ORDER BY city;

-- 15 
SELECT department_name, SUM(salary) AS total_salary
FROM emp_details_view
GROUP BY department_name
ORDER BY total_salary DESC;

