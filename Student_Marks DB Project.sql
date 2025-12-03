CREATE DATABASE school_db;

USE school_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    class VARCHAR(10)
);
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL
);

CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);


INSERT INTO students (name, age, class) VALUES
('NGN', 23, 'BCA'),
('Rahul', 21, 'BCA'),
('Sita', 22, 'BSc'),
('Kiran', 20, 'BCom');

INSERT INTO subjects (subject_name) VALUES
('Maths'),
('Python'),
('DBMS'),
('English');

INSERT INTO marks (student_id, subject_id, marks_obtained, exam_date) VALUES
(1, 1, 85, '2025-11-01'), -- NGN - Maths
(1, 2, 90, '2025-11-02'), -- NGN - Python
(1, 3, 88, '2025-11-03'), -- NGN - DBMS

(2, 1, 70, '2025-11-01'), -- Rahul - Maths
(2, 2, 75, '2025-11-02'), -- Rahul - Python

(3, 1, 92, '2025-11-01'), -- Sita - Maths
(3, 4, 80, '2025-11-04'); -- Sita - English

SHOW TABLES;

SELECT 
    s.student_id,
    s.name AS student_name,
    sub.subject_name,
    m.marks_obtained
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN subjects sub ON m.subject_id = sub.subject_id;

SELECT 
    s.name AS student_name,
    SUM(m.marks_obtained) AS total_marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
GROUP BY s.student_id, s.name;

SELECT 
    s.name AS student_name,
    AVG(m.marks_obtained) AS avg_marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
GROUP BY s.student_id, s.name;

SELECT 
    sub.subject_name,
    MAX(m.marks_obtained) AS highest_marks
FROM marks m
JOIN subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_id, sub.subject_name;

SELECT 
    s.name AS student_name,
    sub.subject_name,
    m.marks_obtained
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN subjects sub ON m.subject_id = sub.subject_id
WHERE s.name = 'NGN';






