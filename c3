-- Create the Dept table
CREATE TABLE Dept (
    deptId INT PRIMARY KEY,           -- Primary key on deptId
    deptName VARCHAR(10)
);

-- Create the Emp table
CREATE TABLE Emp (
    empId INT PRIMARY KEY,            -- Primary key on empId
    empName VARCHAR(10) NOT NULL,     -- empName cannot be NULL
    empSal INT,
    empDeptId INT,                    -- Foreign key to Dept table
    FOREIGN KEY (empDeptId) REFERENCES Dept(deptId) -- Foreign key constraint
);
-- Insert records into Dept table
INSERT INTO Dept (deptId, deptName) VALUES (1, 'HR');
INSERT INTO Dept (deptId, deptName) VALUES (2, 'IT');
INSERT INTO Dept (deptId, deptName) VALUES (3, 'Finance');

-- Insert records into Emp table
INSERT INTO Emp (empId, empName, empSal, empDeptId) VALUES (101, 'John', 50000, 1);
INSERT INTO Emp (empId, empName, empSal, empDeptId) VALUES (102, 'Alice', 60000, 2);
INSERT INTO Emp (empId, empName, empSal, empDeptId) VALUES (103, 'Bob', 55000, 3);
-- Add deptLoc column to Dept table
ALTER TABLE Dept
ADD deptLoc VARCHAR(10);

-- Add UNIQUE constraint to deptLoc
ALTER TABLE Dept
ADD CONSTRAINT unique_deptLoc UNIQUE (deptLoc);
