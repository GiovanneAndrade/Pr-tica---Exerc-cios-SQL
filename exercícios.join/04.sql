SELECT experiences."userId" AS id,
  users.name,
  roles.name AS role,
  companies.name AS company,
  experiences."startDate"
FROM experiences 
	JOIN companies ON experiences."companyId" = companies.id
	JOIN roles ON experiences."roleId" = roles.id
	JOIN users ON users.id = experiences."userId"
WHERE experiences."userId" = 50;