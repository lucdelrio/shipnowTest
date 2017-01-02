SELECT dept_id,
COUNT (*) AS count, SUM(salary) AS sum_of_salary
FROM employee
GROUP BY dept_id
ORDER BY dept_id
