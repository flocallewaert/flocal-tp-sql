-- Sélectionner les moyennes des étudiants par année d’étude trié par moyenne descendante et par nom de famille
-- ascendant, et remplacer les moyennes par
-- a. A si entre 15 inclus et 20 inclus
-- b. B si entre 10 inclus et 15 exclus
-- c. C si entre 5 inclus et 10 exclus
-- d. D si entre 0 inclus et 5 exclus
--
SELECT s.firstname, 
	s.lastname, 
	ROUND(AVG(a.grade), 2) AS rating,
	y.label

CASE 
	WHEN rating in (15, 20) THEN 'A'
	WHEN rating in (10, 14) THEN 'B'
	WHEN rating in (5, 9) THEN 'C'
	WHEN rating in (0, 4) THEN 'D'
	ELSE 'N/A'
END

FROM assessment AS a

INNER JOIN student AS s
	ON s.id = a.id_student

LEFT JOIN year AS y

GROUP BY s.firstname
ORDER BY rating DESC, s.lastname ASC
