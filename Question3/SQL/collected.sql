-- SETUP

CREATE DATABASE Question3;




USE Question3;

CREATE TABLE Source (
	ID INT PRIMARY KEY,
	Name VARCHAR (20),
	City VARCHAR (20),
	Email VARCHAR (30),
	Schedule_Date DATE
);

CREATE TABLE Target (
	Emp_Key INT IDENTITY (1, 1) PRIMARY KEY,
	ID INT,
	Name VARCHAR (20),
	City VARCHAR (20),
	Email VARCHAR (30),
	Insert_Date DATE,
	Active_Flag BIT,
	Version_No INT
);

CREATE TABLE ETL_Control (
	Last_Insert_Date DATE NOT NULL,
	Current_Version_No INT
);

-- INITIAL VALUES FOR CONTROL TABLE
INSERT INTO ETL_Control
VALUES
('1900-01-01', 1);






INSERT INTO Source
VALUES
(1004, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2025-03-31'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2025-03-27'),
(1003, 'Samaa', 'Cairo', 'Samaa@mail.com', '2025-03-27');




UPDATE Source
SET Schedule_Date = '2025-03-31'






SELECT * FROM Source;

SELECT * FROM Target;

SELECT * FROM ETL_Control



DROP TABLE Source;

DROP TABLE Target;

DROP TABLE ETL_Control;