/* Get currently enrolled students' average assignment completion time.

Select the students name and average time from assignment submissions.
Order the results from greatest duration to least greatest duration.
A student will have a null end_date if they are currently enrolled */

SELECT students.name as student_name, avg(assignment_submissions.duration) as average_time
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS null
GROUP BY student_name
ORDER BY average_time DESC;