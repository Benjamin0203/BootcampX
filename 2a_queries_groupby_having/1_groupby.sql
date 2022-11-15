--produce a table with the student's names, and the total submission for that student.

--A currently enrolled student has a null end_date.

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;