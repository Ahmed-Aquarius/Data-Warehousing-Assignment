-- Some Manipulations

UPDATE Employee_Q2_Source
SET CITY = 'Giza', Update_Date = '2025-4-19'
WHERE ID = '1001';

UPDATE Employee_Q2_Source
SET Email = 'nehal.akram@gmail.com', Update_Date = '2025-5-19'
WHERE ID = '1002';



INSERT INTO Employee_Q2_Source
VALUES
('1004', 'Kareem', 'Alex', 'kareeem@mail.com', '2025-04-18');

DELETE FROM Employee_Q2_Source
WHERE ID = '1004';



UPDATE ETL_Control
SET LastLoadDate = '1900-01-01 00:00:00'
WHERE ProcessName = 'Employee_Q2_Load';



DROP TABLE Employee_Q2, Employee_Q2_History, Employee_Q2_Source, ETL_Control;



-- VIEW THE TABLES

SELECT * FROM ETL_Control;

SELECT * FROM Employee_Q2_Source;

SELECT * FROM Employee_Q2;

SELECT * FROM Employee_Q2_History;