-- CREATE DATABASE

CREATE DATABASE Question2;




-- CREATE TABLES

USE Question2;

-- Source Table
CREATE TABLE Employee_Q2_Source (
	ID INT PRIMARY KEY,
	Name VARCHAR(10),
	City VARCHAR(15),
	Email VARCHAR(30),
	Update_Date DATE
);

-- Target Table 1 : Current Table (latest version)
CREATE TABLE Employee_Q2 (
	ID INT PRIMARY KEY,
	Name VARCHAR(10),
	City VARCHAR(15),
	Email VARCHAR(30)
);

-- Target Table 2 : History Table
CREATE TABLE Employee_Q2_History (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	Employee_ID INT,
	Name VARCHAR(10),
	City VARCHAR(15),
	Email VARCHAR(30),
	Changed_Field VARCHAR(50),
	Applying_From DATE,
	Applying_To DATE
);


-- Control table for incremental loading
CREATE TABLE ETL_Control (
    ProcessName VARCHAR(50) PRIMARY KEY,
    LastLoadDate DATETIME
);

-- Initial seed for Control Table
INSERT INTO ETL_Control (ProcessName, LastLoadDate)
VALUES ('Employee_Q2_Load', '1900-01-01 00:00:00');




-- INSERT DUMMY DATA
INSERT INTO Employee_Q2_Source
VALUES
('1001', 'Ahmed', 'Cairo', 'ahmed@mail.com', '2025-03-27'),
('1002', 'Nehal', 'Giza', 'nehal@mail.com', '2025-03-27'),
('1003', 'Samaa', 'Cairo', 'samaa@mail.com', '2025-03-27');