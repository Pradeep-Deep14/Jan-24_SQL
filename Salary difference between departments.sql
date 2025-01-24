CREATE TABLE Salaries
	(emp_name VARCHAR(50), department VARCHAR(50), salary INT, PRIMARY KEY (emp_name, department));

INSERT INTO Salaries (emp_name, department, salary) 
	VALUES ('Kathy', 'Engineering', 50000),
			('Roy', 'Marketing', 30000),
			('Charles', 'Engineering', 45000),
			('Jack', 'Engineering', 85000),
			('Benjamin', 'Marketing', 34000),
			('Anthony', 'Marketing', 42000),
			('Edward', 'Engineering', 102000),
			('Terry', 'Engineering', 44000),
			('Evelyn', 'Marketing', 53000),
			('Arthur', 'Engineering', 32000); 


SELECT * FROM SALARIES

/*
Find the highest salary difference between Marketing and Engineering departments.
*/

--APPROACH 1

WITH CTE1 AS
(
    SELECT MAX(salary) AS highest_salary_marketing
    FROM salaries
    WHERE department = 'Marketing'
),
CTE2 AS
(
    SELECT MAX(salary) AS highest_salary_engineering
    FROM salaries
    WHERE department = 'Engineering'
)
SELECT CTE2.highest_salary_engineering - CTE1.highest_salary_marketing AS salary_difference
FROM CTE1, CTE2;


--APPROACH 2

SELECT 
	ABS(MAX(CASE WHEN department = 'Marketing' THEN salary END) - MAX(CASE WHEN department = 'Engineering' THEN salary END)) AS salary_difference
FROM Salaries;
