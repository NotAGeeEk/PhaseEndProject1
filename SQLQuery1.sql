Create Database EmployeeManagement
use EmployeeManagement
CREATE TABLE DeptMaster (
    DeptCode INT PRIMARY KEY,
    DeptName NVARCHAR(50)
);

-- Create the EmpProfile table with a foreign key constraint to DeptMaster
CREATE TABLE EmpProfile (
    EmpCode INT PRIMARY KEY,
    DateOfBirth DATETIME,
    EmpName NVARCHAR(50),
    DeptCode INT,
    FOREIGN KEY (DeptCode) REFERENCES DeptMaster(DeptCode)
);
-- Insert data into DeptMaster table
INSERT INTO DeptMaster (DeptCode, DeptName)
VALUES
    (1, 'Accounts'),
    (2, 'TPO'),
    (3, 'HR');

-- Insert data into EmpProfile table
INSERT INTO EmpProfile (EmpCode, DateOfBirth, EmpName, DeptCode)
VALUES
    (101, '1997-02-10', 'Aman', 1),
    (102, '1999-04-30', 'Nikhil', 2),
    (103, '2000-03-11', 'Vishl', 1),
    (104, '1991-05-23', 'Palak', 3);