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



