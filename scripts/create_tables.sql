--create table for students
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100),
  date_of_birth DATE
);

--create table for instructors
CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100)
);

--create table for courses
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(255),
  course_description TEXT,
  instructor_id INT,
  FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

--create table for enrollments
CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enrollment_date DATE,
  grade CHAR(1),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
