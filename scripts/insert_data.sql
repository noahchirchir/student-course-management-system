
-- This script inserts sample data into the Students, Instructors, Courses, and Enrollments tables.
--insert data into students table
INSERT INTO Students (student_id, first_name, last_name, email, date_of_birth) VALUES
(1, 'Noah', 'Chirchir', 'noah@gmail.com', '1999-11-07'),
(2, 'Alice', 'Johnson', 'alice.johnson@gmail.com', '2000-05-15'),
(3, 'Bob', 'Smith', 'bob.smith@gmail.com', '1999-08-23'),
(4, 'Charlie', 'Davis', 'charlie.davis@gmail.com', '2001-11-02'),
(5, 'David', 'Brown', 'david.brown@gmail.com', '2000-12-18'),
(6, 'Eva', 'Martinez', 'eva.martinez@gmail.com', '1998-03-04'),
(7, 'Fay', 'Garcia', 'fay.garcia@gmail.com', '2002-07-20'),
(8, 'Grace', 'Harris', 'grace.harris@gmail.com', '2000-01-11'),
(9, 'Helen', 'Clark', 'helen.clark@gmail.com', '2001-10-05'),
(10, 'Ivy', 'Rodriguez', 'ivy.rodriguez@gmail.com', '2000-06-30'),
(11, 'Jack', 'Lee', 'jack.lee@gmail.com', '1999-09-12'),
(12, 'Kevin', 'Wright', 'kevin.wright@gmail.com', '2001-02-17'),
(13, 'Laura', 'Scott', 'laura.scott@gmail.com', '1998-07-08'),
(14, 'Mike', 'Turner', 'mike.turner@gmail.com', '2002-04-25'),
(15, 'Nina', 'Perez', 'nina.perez@gmail.com', '2000-12-01'),
(16, 'Oscar', 'Green', 'oscar.green@gmail.com', '1999-03-29'),
(17, 'Paula', 'Adams', 'paula.adams@gmail.com', '2001-06-14'),
(18, 'Quinn', 'Nelson', 'quinn.nelson@gmail.com', '2002-09-10'),
(19, 'Rachel', 'Baker', 'rachel.baker@gmail.com', '2000-10-21'),
(20, 'Steve', 'Moore', 'steve.moore@gmail.com', '1998-11-30')

--insert data into instructors table
INSERT INTO Instructors (instructor_id, first_name, last_name, email) VALUES
(1, 'John', 'Smith', 'john.smith@gmail.com'),
(2, 'Emily', 'Walker', 'emily.walker@gmail.com'),
(3, 'Michael', 'Johnson', 'michael.johnson@gmail.com'),
(4, 'Sophia', 'Brown', 'sophia.brown@gmail.com'),
(5, 'Daniel', 'Miller', 'daniel.miller@gmail.com');


--insert data into courses table
INSERT INTO Courses (course_id, course_name, course_description, instructor_id) VALUES
(1, 'Introduction to SQL', 'Learn the basics of SQL and database querying.', 1),
(2, 'Data Structures', 'Understand core data structures in computer science.', 2),
(3, 'Web Development', 'Build interactive websites using HTML, CSS, and JavaScript.', 3),
(4, 'Python Programming', 'Learn Python fundamentals for software development.', 4),
(5, 'Data Analytics', 'Use data to drive insights with tools and techniques.', 5);

--insert data into enrollments table
INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2024-02-10', 'A'),
(2, 2, '2024-01-18', 'B'),
(3, 1, '2024-02-15', 'C'),
(4, 3, '2024-01-22', 'A'),
(5, 2, '2024-02-02', 'B'),
(6, 4, '2024-01-25', 'C'),
(7, 3, '2024-02-05', 'A'),
(8, 5, '2024-01-30', 'B'),
(9, 4, '2024-02-12', 'C'),
(10, 5, '2024-02-08', 'A'),
(11, 1, '2024-01-21', 'B'),
(12, 2, '2024-02-06', 'C'),
(13, 3, '2024-01-17', 'A'),
(14, 5, '2024-02-03', 'B'),
(15, 4, '2024-01-27', 'C'),
(16, 1, '2024-01-19', 'A'),
(17, 2, '2024-01-23', 'B'),
(18, 3, '2024-02-01', 'C'),
(19, 4, '2024-02-09', 'A'),
(20, 5, '2024-01-28', 'B');
