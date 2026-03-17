-----------------------------
--BASIC DATA UNDERSTANDING 
-----------------------------

-- Display all employees
SELECT * 
FROM EMP;

--Display all departments
SELECT *
FROM DEPT;

--Show employee names with their job roles
SELECT ENAME,JOB
FROM EMP;

--Show employee names and their salaries
SELECT ENAME,SAL
FROM EMP;

--List employees ordered by salary (highest first)
SELECT ENAME,SAL
FROM EMP
ORDER BY SAL DESC;

------------------------------------
--DEPARTMENT ANALYSIS
-----------------------------------

--Show employees along with their department names

SELECT e.ename,d.dname
FROM emp e
INNER JOIN dept d 
ON e.deptno = d.deptno;

--Count how many employees are in each department.

SELECT d.dname, COUNT(*) AS employee_count
FROM emp e 
INNER JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.dname;

--Show departments that currently have no employees.

--Using with left join :
SELECT d.dname 
FROM dept d
LEFT JOIN emp e
ON d.deptno = e.deptno
WHERE e.empno IS NULL;
--Uding with Not Exists
SELECT d.dname 
FROM dept d
WHERE  NOT EXISTS(
  SELECT 1
  FROM emp e
  WHERE e.deptno = d.deptno
);

--Find the department with the highest number of employees.








