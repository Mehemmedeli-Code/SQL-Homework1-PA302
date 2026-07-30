CREATE TABLE Students
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) DEFAULT 'XXX',
    FinCode VARCHAR(7) NOT NULL UNIQUE,
    Age INT CHECK (Age >= 10),
    AvgPoint DECIMAL(5,2) CHECK (AvgPoint >= 0 AND AvgPoint <= 100)
);


INSERT INTO Students (Name, Surname, FinCode, Age, AvgPoint)
VALUES
('Kamil', 'Aliyev', 'AA12345', 20, 85.50),
('Af', 'Mammadov', 'BB23456', 21, 99),
('Aysel', 'Hasanova', 'CC34567', 19, 0),
('Arif', 'Quliyev', 'DD45678', 22, 75.25),
('Leyla', 'Huseynova', 'EE56789', 20, 51.50),
('Murad', 'Karimov', 'FF67890', 25, 90);


DELETE FROM Students
WHERE AvgPoint = 0;


UPDATE Students
SET AvgPoint = 100
WHERE AvgPoint = 99;


SELECT *
FROM Students
WHERE AvgPoint > 51
  AND AvgPoint < 90;


SELECT *
FROM Students
WHERE Name LIKE 'A%f';
