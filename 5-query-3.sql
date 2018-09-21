-- S�lectionner les moyennes des �tudiants de 4�me ann�e, ainsi que leur nom/pr�nom, ordonn�e par ann�e d��tude,
-- moyenne et nom/pr�nom. Les �tudiants n�ayant pas de module de 4�me ann�e et les modules n�ayant pas d��tudiants
-- ayant tent� l�examen ne seront pas r�cup�r�s.
--
-- les �tudiants en 4�me poss�de l'id module.year = 2

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

