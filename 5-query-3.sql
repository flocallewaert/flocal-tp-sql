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

