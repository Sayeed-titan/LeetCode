CREATE schema leet_codedb;
USE leet_codedb;

CREATE TABLE Employee175(
id INT PRIMARY KEY,
salary INT NOT NULL
);

INSERT INTO Employee175(id, salary)
VALUES
(1, 100),
(2, 200),
(3, 300);

SELECT * FROM Employee175;

-- Problem : find the second highest distinct salary from the Employee table. If there is no second highest salary

-- Approach 01
SELECT DISTINCT salary  
FROM Employee175
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Approach 02
SELECT MAX(salary) 
FROM Employee175
WHERE salary < (SELECT MAX(salary) FROM Employee175);



