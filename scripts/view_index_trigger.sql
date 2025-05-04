-- Create a VIEW to summarize each student's course and grade
CREATE VIEW student_course_summary AS
SELECT 
    s.first_name || ' ' || s.last_name AS student_name,
    c.course_name AS course_name,
    e.grade
FROM 
    students s
JOIN 
    enrollments e ON s.student_id = e.student_id
JOIN 
    courses c ON e.course_id = c.course_id;


--- Add an INDEX on Enrollments.student_id.
CREATE INDEX idx_enrollments_course_id
ON enrollments(course_id);
