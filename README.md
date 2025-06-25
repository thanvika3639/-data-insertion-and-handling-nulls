Task 2: Data Insertion and Handling Nulls

🎯 Objective
Practice using INSERT, UPDATE, and DELETE SQL statements while handling missing values (NULLs) and maintaining data consistency.

🛠️ Tools Used
MySQL Workbench
SQL syntax: MySQL-compatible

📂 Database Used
Database Name: company

Table Name: Employees

🏗️ Schema Structure
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Department VARCHAR(50) DEFAULT 'General',
    Salary DECIMAL(10, 2)
);


📌 Operations Performed

1. Data Insertion (INSERT)
Inserts 4 employee records.

Demonstrates use of:
DEFAULT values (Department)
NULL for missing Email and Salary

2. Data Update (UPDATE):

UPDATE Employees
SET Salary = 50000.00, Department = 'Admin'
WHERE EmployeeID = 4;
Updates an incomplete record (missing salary and dept).

3. Data Deletion (DELETE)

DELETE FROM Employees
WHERE EmployeeID = 2;
Deletes one employee record by ID.

📊 Final Output
Remaining employees are listed with complete and cleaned data using:
SELECT * FROM Employees;

📁 File Provided
task2_data_handling.sql: Contains the full script for creating the table, inserting, updating, and deleting data.

✅ Outcome
A clean, populated Employees table with:
Default values applied where appropriate.
Null values handled logically.
Correct data after update/delete actions.
