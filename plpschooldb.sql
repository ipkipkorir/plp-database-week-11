-- create database name 'plpschooldb'
CREATE DATABASE plpschooldb;

-- connect to the database
USE plpschooldb;

-- create table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(25) NOT NULL,
    LastName VARCHAR(25) NOT NULL,
    Age INT,
    Grade VARCHAR(2)
);

-- populate the table with data
INSERT INTO Students (FirstName, LastName, Age, Grade) 
VALUES 
('John', 'Mark', 33, 'B'),
('Simon', 'Peter', 45, 'A'),
('James', 'Kariuki', 34, 'C'),
('Achieng', 'George', 40, 'B'),
('Philomena', 'Njeru', 25, 'A'),
('Bibiana', 'Nuna', 33, 'D');

-- All students greater than 25 years old
SELECT * FROM Students WHERE Age > 25;

-- All students with 'Grade' 'A' or 'B'
SELECT * FROM Students WHERE Grade = 'A' OR Grade = 'B';

-- Display distinct 'Age' values
SELECT DISTINCT Age FROM Students;
