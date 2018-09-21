-- Sélectionner les moyennes des étudiants de 4ème année, ainsi que leur nom/prénom, ordonnée par année d’étude,
-- moyenne et nom/prénom. Les étudiants n’ayant pas de module de 4ème année et les modules n’ayant pas d’étudiants
-- ayant tenté l’examen ne seront pas récupérés.
--
-- les étudiants en 4ème possède l'id module.year = 2

SELECT CONCAT(s.firstname, ' ', s.lastname) AS fullname, 
	ROUND(AVG(a.grade) AS rating, 
	y.label

FROM module AS m

INNER JOIN assesment AS a 
	ON m.id = a.id_module

INNER JOIN student AS s
	ON s.id = a.id_student 


LEFT JOIN enrolment AS e ON s.id = e.id_student
LEFT JOIN year AS y ON e.id_year = y.id

GROUP BY s.firstname
ORDER BY y.label
WHERE m.year = 2

