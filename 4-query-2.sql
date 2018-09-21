SELECT CONCAT(s.firstname, ' ', s.lastname) AS fullname, y.label
FROM year AS y
RIGHT JOIN enrolment AS e ON e.id_year = y.id
RIGHT JOIN studient AS e ON s.id = e.id_student

WHERE DATEDIFF( e.to,'2014-01-01') >= 0
ORDER BY CASE
	WHEN y.label IS NULL
	THEN 1
	ELSE 0 
END ASC;