CREATE VIEW view_4_years_validate_2016
(firstname, lastname)
AS SELECT s.firstname, 
s.lastname,
ROUND(AVG(a.grade) AS rating

FROM module AS m

INNER JOIN assesment AS a 
	ON m.id = a.id_module

INNER JOIN student AS s
	ON s.id = a.id_student

LEFT JOIN enrolment AS e ON s.id = e.id_student
LEFT JOIN year AS y ON e.id_year = y.id

GROUP BY s.firstname
ORDER BY y.label

WHERE m.year = 2 AND rating > 9.5 AND YEAR(e.to) = 2016;


CREATE USER 'readonlyuser'@'localhost' IDENTIFIED BY 'tp-sql';
GRANT SELECT ON view_4_years_validate_2016 TO 'readonlyuser'@'localhost';