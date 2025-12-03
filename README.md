Student Marks Management System (MySQL
Project)
INTRODUCTION
The Student Marks Management System is a MySQL-based project designed to store, manage, and analyze student academic data.
This system helps organize student information, subjects, and marks in a structured relational database.
PROJECT OBJECTIVES
-	Store student records securely
-	Maintain subject-wise marks
-	Generate performance reports
-	Calculate total and average marks- Apply real-world SQL concepts
TOOLS & TECHNOLOGIES
-	MySQL Database
-	SQL Queries
-	MySQL Workbench
-	GitHub for project hosting
DATABASE DESIGN
The project contains three tables:
1.	Students Table: Stores student ID, name, age, class
2.	Subjects Table: Stores subject ID, subject name
3.	Marks Table: Stores mark ID, student ID, subject ID, marks obtained, exam dateForeign keys are used to maintain relationships between tables.
HOW TO RUN THE PROJECT
1.	Create Database:
CREATE DATABASE school_db;
USE school_db;
2.	Run SQL file (project.sql)
3.	View Data:
SELECT * FROM students;
SELECT * FROM subjects; SELECT * FROM marks;
FEATURES
-	Store student details
-	Assign subjects
-	Enter marks for students
-	Generate reports
-	Calculate totals and averages- Identify top performers
EXAMPLE QUERIES
-	Show all students with their marks
-	Calculate total marks
-	Calculate average marks
-	Show highest marks per subject
-	Filter by student name
LEARNING OUTCOMES
-	Understand database relationships
-	Write SQL queries
-	Use joins and aggregate functions- Design real-world databases
FUTURE SCOPE
-	Add grading system- Attendance tracking
-	Frontend UI
-	Export reports
-	User authentication
AUTHOR
NGN
Aspiring Data Analyst & MySQL Learner Hyderabad, India
CONCLUSION
This project demonstrates the practical use of MySQL in managing academic data and is suitable for beginners.
