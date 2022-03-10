--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
SELECT employee_name, monthly_salary
FROM employee_salary JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id

--2. ������� ���� ���������� � ������� �� ������ 2000
SELECT employee_name, monthly_salary
FROM employee_salary JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE monthly_salary < 2000

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. 
-- �� ����, �� �� ������� ��� � ��������.
SELECT employee_name, monthly_salary 
FROM employee_salary LEFT OUTER JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE employee_name IS NULL

--4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. 
--�� ����, �� �� ������� ��� � ��������.)
SELECT employee_name, monthly_salary 
FROM employee_salary LEFT OUTER JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE employee_name IS NULL AND monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.
SELECT employee_name, monthly_salary
FROM employee_salary JOIN salary ON employee_salary.salary_id = salary.id
RIGHT OUTER JOIN employees ON employee_salary.employee_id = employees.id
WHERE monthly_salary IS NULL

-- 6. ������� ���� ���������� � ���������� �� ���������
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id

-- 7. ������� ����� � ��������� ������ Java �������������.
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
WHERE role_name LIKE '%Java developer%'

--8. ������� ����� � ��������� ������ Python �������������.
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
WHERE role_name LIKE '%Python developer%'

-- ������� ����� � ��������� ���� QA ���������
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
WHERE role_name LIKE '%QA engineer%'

-- 10. ������� ����� � ��������� ������ QA ���������.
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
WHERE role_name LIKE '%Manual QA engineer%'

 --11. ������� ����� � ��������� ��������������� QA
SELECT employee_name, role_name
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
WHERE role_name LIKE '%Automation QA engineer%'

 --12. ������� ����� � �������� Junior ������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Junior%'

-- 13. ������� ����� � �������� Middle ������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Middle%'

-- 14. ������� ����� � �������� Senior ������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Senior%'

 --15. ������� �������� Java �������������
SELECT role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Java developer%'

 --16. ������� �������� Python �������������
SELECT role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Python developer%'

 --17. ������� ����� � �������� Junior Python �������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Junior Python developer%'

--18. ������� ����� � �������� Middle JS �������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Middle JavaScript developer%'

--19. ������� ����� � �������� Senior Java �������������
SELECT employee_name, role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Senior Java developer%'

--20. ������� �������� Junior QA ���������
SELECT role_name, monthly_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Junior% %QA%'

--21. ������� ������� �������� ���� Junior ������������
SELECT avg(monthly_salary) AS Junior_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Junior%'

--22. ������� ����� ������� JS �������������
SELECT sum(monthly_salary) AS JS_Dev_sum_salary
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%JavaScript developer%'

--23. ������� ����������� �� QA ���������
SELECT min(monthly_salary) AS min_salary_QA
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%QA engineer%'

--24. ������� ������������ �� QA ���������
SELECT max(monthly_salary) AS max_salary_QA
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%QA engineer%'

--25. ������� ���������� QA ���������
SELECT count(roles_employee.employee_id) AS count_QA
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%QA engineer%'

--26. ������� ���������� Middle ������������.
SELECT count(roles_employee.employee_id) AS count_Middle
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%Middle%'

--27. ������� ���������� �������������
SELECT count(roles_employee.employee_id) AS count_dev
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%developer%'

--28. ������� ���� (�����) �������� �������������.
SELECT sum(monthly_salary) AS sum_salary_dev
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE role_name LIKE '%developer%'

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
SELECT employee_name, role_name, monthly_salary 
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
ORDER BY monthly_salary ASC

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
SELECT employee_name, role_name, monthly_salary 
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary ASC

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
SELECT employee_name, role_name, monthly_salary 
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE monthly_salary < 2300
ORDER BY monthly_salary ASC

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
SELECT employee_name, role_name, monthly_salary 
FROM roles_employee JOIN roles ON roles_employee.role_id = roles.id
JOIN employees ON roles_employee.employee_id  = employees.id
JOIN employee_salary ON employee_salary.employee_id = employees.id 
JOIN salary ON salary.id = employee_salary.salary_id
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary ASC
 