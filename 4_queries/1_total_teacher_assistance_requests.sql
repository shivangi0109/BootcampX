-- Get the total number of assistance_requests for a teacher

SELECT COUNT(assistance_requests.*), teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;