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
