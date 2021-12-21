1.
CREATE TABLE student_backup(
	stud_id INT NOT NULL,
	roll INT	NOT NULL,
	`name` VARCHAR(30) NOT NULL,
	subject VARCHAR(30) NOT NULL,
	marks INT NOT NULL,
	last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(stud_id)
)

2.
DELIMITER //

CREATE TRIGGER before_update_studentinfo
BEFORE UPDATE ON student_info FOR EACH ROW 
BEGIN
	INSERT INTO STUDENT_BACKUP 
	VALUES(old.stud_id, old.roll, old.`name`, old.subject, old.marks, CURRENT_TIMESTAMP());
END//

DELIMITER ;