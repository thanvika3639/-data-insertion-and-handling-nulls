CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Department VARCHAR(50) DEFAULT 'General',
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Department, Salary)
VALUES (1, 'Alice', 'Smith', 'alice@example.com', 'HR', 55000);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary)
VALUES (2, 'Bob', 'Jones', 'bob@example.com', 48000); 

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Department, Salary)
VALUES (3, 'Charlie', 'Brown', NULL, 'IT', 60000);  

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES (4, 'Dana', 'White', 'Finance', NULL);

UPDATE Employees
SET Salary = 50000, Department = 'Admin'
WHERE EmployeeID = 4;

DELETE FROM Employees
WHERE EmployeeID = 2;

SELECT * FROM Employees;