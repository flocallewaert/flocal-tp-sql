
CREATE TABLE `tp-sql`.`module` ( 
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`name` VARCHAR(255) NOT NULL , 
`year` INT NOT NULL , 
PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `tp-sql`.`year` ( 
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`label` VARCHAR(255) NOT NULL , 
PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `tp-sql`.`enrolment` ( 
`id_student` INT UNSIGNED NOT NULL , 
`id_year` INT UNSIGNED NOT NULL , 
`from` DATETIME NOT NULL , 
`to` DATETIME NOT NULL , 
PRIMARY KEY (`id_student`, `id_year`)) ENGINE = InnoDB;

CREATE TABLE `tp-sql`.`student` ( 
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`firstname` VARCHAR(255) NOT NULL , 
`lastname` VARCHAR(255) NOT NULL , 
PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `tp-sql`.`assessment` ( 
`id_student` INT UNSIGNED NOT NULL , 
`id_module` INT UNSIGNED NOT NULL , 
`attempted` DATETIME NOT NULL , 
`passed` DATETIME NOT NULL , 
`grade` INT NOT NULL , 
PRIMARY KEY (`id_student`, `id_module`, `attempted`)) ENGINE = InnoDB;


ALTER TABLE `enrolment` ADD CONSTRAINT `enrolment-id-student` FOREIGN KEY (`id_student`) REFERENCES `student`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `enrolment` ADD CONSTRAINT `enrolment-id-year` FOREIGN KEY (`id_year`) REFERENCES `year`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `module` ADD CONSTRAINT `module-year` FOREIGN KEY (`year`) REFERENCES `year`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `assessment` ADD CONSTRAINT `assessement-id-student` FOREIGN KEY (`id_student`) REFERENCES `student`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `assessment` ADD CONSTRAINT `assessement-id-module` FOREIGN KEY (`id_module`) REFERENCES `module`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
