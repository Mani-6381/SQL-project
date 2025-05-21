CREATE DATABASE IF NOT EXISTS besant;
USE besant;
drop table students;
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    course_id INT,
    Phone_number VARCHAR(15),
    Date_of_join DATE
);
INSERT INTO students(Name, course_id, phone_number, Date_of_join) 
values ('Mani', 452, '8967587690' ,'2025-10-03')
('Gowtham', 285, '8967547654' ,'2024-08-28')
('Subash', 452, '8960987890' ,'2025-06-11')
('Bala', 001, '9987047890' ,'2024-08-07')
('Siva', 289, '8667987890' ,'2025-06-04')
('Deva', 453, '8967885520' ,'2024-05-06')
('Yukesh', 001, '8879047890' ,'2024-02-15')
('Dravid', 543, '8990877890' ,'2025-10-08')
('Srini', 543, '8967549970' ,'2024-09-12')
('Suresh', 289, '8907547890' ,'2025-10-19')
('Dhoni', 453, '9980747890' ,'2024-04-22')
('Virat', 289, '8874547890' ,'2024-05-13')
('Jagan', 453, '8967887640' ,'2025-09-12')
('Tharun', 289, '8969947890' ,'2024-03-12')
('Dheena', 543, '8999547890' ,'2024-04-12');

SELECT * FROM students;
 
 UPDATE students set course_id = 154 where course_id = 1;
 
CREATE TABLE courses (
    course_id INT,
    Name VARCHAR(30),
    Fees INT,
    Trainer VARCHAR(30)
);

INSERT INTO courses (course_id, Name, Fees, Trainer)
values ( 452, 'Data Analysis', 30000, 'Naveen'),
(289, 'Python', '20000', 'Vani'),
(453, 'Full stack Development', '45000', 'Venkatesh'),
(543, 'Data Science', '40000', 'Subash'),
(154, 'Devops', '50000', 'Gowtham');

SELECT 
    ss.Name, cc.Name AS Course, Trainer, fees
FROM
    students AS ss
        LEFT JOIN
    courses AS cc ON ss.course_id = cc.course_id;