SELECT department, COUNT(user_id) as linked_employee
FROM employees
GROUP BY department
Order by linked_employee DESC
