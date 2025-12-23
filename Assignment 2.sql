CREATE DATABASE Course_Registration_System;
USE Course_Registration_System;

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0)
);

CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);
CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
SHOW TABLES;
DESCRIBE Student;

INSERT INTO Student (student_name, email, date_of_birth)
VALUES ('Amit Sharma', 'amit@gmail.com', '2002-05-12');

INSERT INTO Course (course_name, credits)
VALUES ('Data Analytics', 4);

INSERT INTO Course (course_name, credits)
VALUES ('Data Analytics', 4);

INSERT INTO Instructor (instructor_name, department)
VALUES ('Dr Rao', 'Data Science');

INSERT INTO Enrollments (student_id, course_id)
VALUES (1, 1);

SELECT * FROM Student;
SELECT * FROM Course;


UPDATE Student
SET email = 'amit.sharma@gmail.com'
WHERE student_id = 1;

DELETE FROM Student
WHERE student_id = 1;

SELECT DATABASE();
SHOW TABLES;

CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    registration_date DATE DEFAULT (CURDATE()),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
        ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
        ON DELETE CASCADE
);

SELECT AVG(credits) FROM Course;
SELECT CONCAT(student_name, ' - ', email) FROM Student;
SELECT NOW();




