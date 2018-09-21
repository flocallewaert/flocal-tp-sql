
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

INSERT INTO `year` (`id`, `label`) VALUES
(1, 'First year (Bsc)'),
(2, 'Second year (Bsc Hons)'),
(3, 'Third year (Msc)');

INSERT INTO `student` (`id`, `firstname`, `lastname`) VALUES
(1, 'Olivier', 'Martin'),
(2, 'Pierre', 'Martin'),
(3, 'Jacques', 'Martin'),
(4, 'Martin', 'François'),
(5, 'Jennifer', 'Garner');

INSERT INTO `enrolment` (`id_student`, `id_year`, `from`, `to`) VALUES
(1, 1, '2015-01-01 00:00:00', '2015-12-31 00:00:00'),
(1, 2, '2016-01-01 00:00:00', '2016-12-31 00:00:00'),
(1, 3, '2017-01-01 00:00:00', '2017-12-31 00:00:00'),
(2, 1, '2015-01-01 00:00:00', '2015-12-31 00:00:00'),
(2, 2, '2016-01-01 00:00:00', '2016-12-31 00:00:00'),
(2, 3, '2017-01-01 00:00:00', '2017-12-31 00:00:00'),
(3, 2, '2017-01-01 00:00:00', '2017-12-31 00:00:00');

INSERT INTO `module` (`id`, `name`, `year`) VALUES
(1, 'linux', 1),
(2, 'docker', 1),
(3, 'symfony', 2),
(4, 'asp.net core', 2),
(5, 'aspect oriented architecture', 3),
(6, 'ddd and hexagonal architecture', 3);

COMMIT;