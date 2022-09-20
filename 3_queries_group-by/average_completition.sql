SELECT students.name as student, AVG(assignment_submissions.duration) as  average_assignment_duration
from assignment_submissions
INNER JOIN students
ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;