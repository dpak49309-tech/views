CREATE TABLE Employees (
    EmpID INT UNIQUE,
    EmpName VARCHAR(100),
    EmpDep VARCHAR(50),
    EmpSal DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, EmpDep, EmpSal)
VALUES
(101, 'Alice', 'HR', 45000),
(102, 'Bob', 'IT', 60000),
(103, 'Charlie', 'Finance', 55000);

CREATE VIEW Emp_View AS
SELECT
    EmpID,
    EmpName,
    EmpDep
FROM Employees;

SELECT * FROM Emp_View;

INSERT INTO Emp_View (EmpID, EmpName, EmpDep)
VALUES
(101, 'David', 'IT');

INSERT INTO Emp_View (EmpID, EmpName, EmpDep)
VALUES
(104, 'David', 'IT');

UPDATE Emp_View
SET EmpName = 'Robert',
    EmpDep = 'Management'
WHERE EmpID = 102;

SELECT * FROM Emp_View;

SELECT * FROM Employees;