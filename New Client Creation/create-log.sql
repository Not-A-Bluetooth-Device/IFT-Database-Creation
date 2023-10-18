CREATE TABLE `logs` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`logged_at` DATETIME,
	`logged_temp` DECIMAL(6,2) NOT NULL,
	`device_id` VARCHAR(25) NOT NULL,
	FOREIGN KEY (`device_id`) REFERENCES devices(serial_num),
	PRIMARY KEY (id))
COMMENT = 'Table for all the temperature logs for a client';
	