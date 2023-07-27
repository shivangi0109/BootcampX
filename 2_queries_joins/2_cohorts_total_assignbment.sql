-- Get the total amount of time that all students from a specific cohort have spent on all assignments

SELECT SUM(duration) as total_duration 
FROM assignment_submissions 
JOIN students ON students.id = student_id
WHERE students.cohort_id = (
  SELECT id
  FROM cohorts
  WHERE name = 'FEB12'
);

-- OR

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';