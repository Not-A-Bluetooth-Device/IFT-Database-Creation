CREATE TABLE `devices` ( 
	`serial_num` VARCHAR(25) NOT NULL,
	`model_name` VARCHAR(25),
	`nickname` VARCHAR(25),
	`max_temp` INT,
	`min_temp` INT,
	`alert_bool` BOOLEAN NOT NULL,
	`alert_user` INT,
	`last_alert` DATETIME,
	`created_at` DATETIME NOT NULL,
	`deleted_at` DATETIME,
	PRIMARY KEY(`serial_num`))
COMMENT = 'Devices table for the specific client';