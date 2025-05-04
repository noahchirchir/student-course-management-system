# Student Course Management System

## Project Overview
This system is designed for managing students, courses, and enrollments in an educational platform. It includes SQL queries to retrieve insights and manipulate data.

## 🏗️ Database Schema
The project includes the following tables:

- **Students**
  - `student_id` (Primary Key)
  - `first_name`
  - `last_name`
  - `email`
  - `date_of_birth`

- **Instructors**
  - `instructor_id` (Primary Key)
  - `first_name`
  - `last_name`
  - `email`

- **Courses**
  - `course_id` (Primary Key)
  - `course_name`
  - `course_description`
  - `instructor_id` (Foreign Key → Instructors)

- **Enrollments**
  - `enrollment_id` (Primary Key)
  - `student_id` (Foreign Key → Students)
  - `course_id` (Foreign Key → Courses)
  - `enrollment_date`
  - `grade` (A, B, C, etc.)

## 🧪 Sample Data
The database includes:
- 20 Students
- 5 Instructors
- 5 Courses
- 20 Enrollments (with grades A, B, C)

## 🔍 SQL Queries (Highlights)
- Students who enrolled in at least one course
- Students enrolled in more than two courses
- Courses with total enrolled students
- Average grade per course (A=4, B=3, C=2, etc.)
- Students who haven’t enrolled in any course
- Top 3 students by average grade
- Instructors and the number of courses they teach
- Students enrolled in courses taught by "John Smith"
- Students failing (grade = ‘F’) in more than one course

## ⚙️ Advanced SQL
- A `VIEW` named `student_course_summary` combining student, course, and grade
- Index on `Enrollments.student_id`

## 🚀 How to Run
1. Use a PostgreSQL client like **DBeaver**.
2. Connect to your Aiven PostgreSQL instance.
3. Run the scripts in order:
   - `schema.sql` → create the tables.
   - `insert_data.sql` → populate with data.
   - `queries.sql` → run the required queries.
   - `advanced.sql` → create views, indexes, etc.


## ✍️ Author
**Noah Chirchir**

## 🧠 Lessons Learned
- Practical SQL joins and subqueries
- Use of views and indexing
- Importance of planning schema and data relationships
- Working with PostgreSQL and DBeaver for local + cloud-based workflows

## 🔗 License
This project is open-source and free to use under the [MIT License](https://opensource.org/licenses/MIT).

