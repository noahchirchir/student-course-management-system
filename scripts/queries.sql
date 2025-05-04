

--Students enrolled in more than two courses.
-- This query retrieves students who are enrolled in more than two courses.
-- It selects the student ID, first name, and last name from the Students table.
-- Select student details (ID, first name, and last name)
SELECT s.student_id, s.first_name, s.last_name
FROM Students s
-- Join with Enrollments to match students with their course enrollments
JOIN Enrollments e ON s.student_id = e.student_id
-- Group results by student (ID, first name, and last name)
GROUP BY s.student_id, s.first_name, s.last_name
-- Filter for students enrolled in more than two courses
HAVING COUNT(e.course_id) > 2;


--Courses with total enrolled students.
-- This query retrieves the total number of students enrolled in each course.
-- It selects the course name and the count of enrolled students.
select 
    c.course_name,
    COUNT(e.student_id) as Total_Students_Enrolled
from courses c 
join enrollments e on c.course_id = e.course_id
group by c.course_name ;


--Average grade for each course.
-- This query calculates the average grade for each course.
SELECT
    c.course_name,
    ROUND(AVG(
    CASE e.grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
    end
    ),2) as Average_grade
from courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- List students not enrolled in any course
-- This query retrieves students who are not enrolled in any course.
SELECT first_name, last_name
FROM Students
WHERE student_id NOT IN (
    SELECT student_id FROM Enrollments
);


-- Students with their average grade
-- This query calculates the average grade for each student.
SELECT 
    s.first_name, 
    s.last_name,
    ROUND(AVG(
        CASE e.grade
            WHEN 'A' THEN 4
            WHEN 'B' THEN 3
            WHEN 'C' THEN 2
            WHEN 'D' THEN 1
            WHEN 'F' THEN 0
        END
    ), 2) AS average_grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name;


-- Students with their average grade
-- This query calculates the average letter grade for each student.
-- It uses a subquery to first calculate the average numeric grade and then converts it to a letter grade.
SELECT 
    sub.first_name, 
    sub.last_name,
    CASE 
        WHEN sub.avg_grade >= 3.5 THEN 'A'
        WHEN sub.avg_grade >= 2.5 THEN 'B'
        WHEN sub.avg_grade >= 1.5 THEN 'C'
        WHEN sub.avg_grade >= 0.5 THEN 'D'
        ELSE 'F'
    END AS average_letter_grade
FROM (
    SELECT 
        s.student_id,
        s.first_name, 
        s.last_name,
        AVG(
            CASE e.grade
                WHEN 'A' THEN 4
                WHEN 'B' THEN 3
                WHEN 'C' THEN 2
                WHEN 'D' THEN 1
                WHEN 'F' THEN 0
            END
        ) AS avg_grade
    FROM Students s
    JOIN Enrollments e ON s.student_id = e.student_id
    GROUP BY s.student_id, s.first_name, s.last_name
) AS sub;

-- Instructors with the number of courses they teach
-- This query retrieves the number of courses each instructor teaches.
-- It selects the instructor's first name, last name, and the count of courses.
SELECT 
    i.first_name, 
    i.last_name, 
    COUNT(c.course_id) AS course_count
FROM Instructors i
LEFT JOIN Courses c ON i.instructor_id = c.instructor_id
GROUP BY i.instructor_id, i.first_name, i.last_name;


-- Students enrolled in a course taught by John Smith
SELECT DISTINCT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Instructors i ON c.instructor_id = i.instructor_id
WHERE i.first_name = 'John' AND i.last_name = 'Smith';


