SELECT 
  u.id AS id, 
  u.name AS name, 
  c.name AS course, 
  s.name AS school, 
  e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30;