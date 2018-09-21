-- Sélectionner tous les étudiants et leur année d’étude au 1er juillet 2017 (2017-07-01) inclus si ils en ont une, 
-- ordonnés par nom de famille croissants.

SELECT CONCAT(s.firstname, ' ', s.lastname) AS fullname, y.label
FROM student AS s
LEFT JOIN enrolment AS e ON s.id = e.id_student
LEFT JOIN year AS y ON e.id_year = y.id
WHERE DATEDIFF( e.to,'2014-01-01') >= 0
ORDER BY CASE
	WHEN y.label IS NULL
	THEN 1
	ELSE 0 
END ASC;