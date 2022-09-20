SELECT students.name as student, 
AVG(assignment_submissions.duration) as  average_assignment_duration,
AVG(assignments.duration) as average_estimated_duration
from assignment_submissions
INNER JOIN students
ON assignment_submissions.student_id = students.id
INNER JOIN assignments
ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;