-- Creat a table employees

create table Employees2(
ID INT,
EMPLOYEES_NAME VARCHAR (50),
DEPARTMENT VARCHAR (50),
SALARY INT,
CITY VARCHAR (50),
);

INSERT INTO Employees2 VALUES (1, 'Alice', 'HR', 50000, 'Texas');
INSERT INTO Employees2 VALUES (2, 'Bob', 'IT', 60000, 'New Jersey'); 
INSERT INTO Employees2 VALUES (3, 'Carol', 'IT', 75000, 'Texas');
INSERT INTO Employees2 VALUES (4, 'David', 'HR', 52000, 'New Jersey'); 
INSERT INTO Employees2 VALUES (5, 'Eva', 'Sales', 45000, 'Costa Rice'); 
INSERT INTO Employees2 VALUES (6, 'Frank', 'Sales', 47000, 'Texas');
INSERT INTO Employees2 VALUES (7, 'Grace', 'IT', 80000, 'Texas');


select * from Employees1;

SELECT EMPLOYEES_NAME FROM Employees1 ORDER BY SALARY DESC;

SELECT EMPLOYEES_NAME, DEPARTMENT FROM Employees1 ORDER BY EMPLOYEES_NAME;

SELECT COUNT(EMPLOYEES_NAME) AS NUMBER_0F_EMPLOYEES, DEPARTMENT FROM Employees1 group by DEPARTMENT;

-- Average salary per city
SELECT AVG(SALARY) as AVG_SALARY, CITY FROM Employees1 GROUP BY CITY ORDER BY AVG(SALARY) DESC;

-- 6.List departments with more than 2 employees.
SELECT COUNT(EMPLOYEES_NAME) AS DEPT_WITH_MORE_THAN_TWO_EMPLOYEE, DEPARTMENT FROM Employees1 GROUP BY DEPARTMENT HAVING COUNT(EMPLOYEES_NAME) > 2;

-- 7.Show cities where the average salary is greater than 55,000.
SELECT AVG(SALARY) AS BIG_AVG_SALARY, CITY FROM Employees1 GROUP BY CITY HAVING AVG(SALARY) > 55000;

select * from Employees2;

-- LIKE finds values that match a character
Select EMPLOYEES_NAME, DEPARTMENT FROM Employees2 where EMPLOYEES_NAME  like '%a%';

Select EMPLOYEES_NAME, DEPARTMENT FROM Employees2 where EMPLOYEES_NAME  like 'Al__e';

Select EMPLOYEES_NAME, DEPARTMENT FROM Employees2 where EMPLOYEES_NAME  like '%r__e%';

-- And condition, used to meet two affirmative conditions
Select DEPARTMENT, SALARY FROM Employees2 Where DEPARTMENT LIKE 'IT' AND SALARY > 50000 ;

Select DEPARTMENT, SALARY, City FROM Employees2 Where DEPARTMENT LIKE 'IT' AND SALARY >= 50000 and CITY like '%EW%' ;

SELECT * FROM Employees2
-- Between Operation
Select SALARY, DEPARTMENT FROM Employees2 WHERE SALARY BETWEEN 52000 AND 80000 ORDER BY SALARY DESC;
-- Not Between Operation
Select SALARY, DEPARTMENT FROM Employees2 WHERE SALARY NOT BETWEEN 52000 AND 80000 ORDER BY SALARY DESC;

Select EMPLOYEES_NAME, DEPARTMENT FROM Employees2 WHERE DEPARTMENT = 'IT' or DEPARTMENT = 'HR';

SELECT * FROM Employees2 WHERE DEPARTMENT IN ('HR', 'Sales' );

Select EMPLOYEES_NAME, DEPARTMENT FROM Employees2 WHERE SALARY = 50000 AND DEPARTMENT IS NULL;