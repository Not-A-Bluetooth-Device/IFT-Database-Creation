CREATE TABLE `app_users`.`clients` (
  `client_id` CHAR(3) NOT NULL,
  `client_name` VARCHAR(45) NULL,
  PRIMARY KEY (`client_id`))
COMMENT = 'A list of all companies that are customers of our product';

-- Run once both tables are created:
ALTER TABLE `app_users`.`clients` 
ADD COLUMN `primary_contact` INT NULL AFTER `client_name`,
ADD INDEX `primary_contact_idx` (`primary_contact` ASC) VISIBLE;

ALTER TABLE `app_users`.`clients` 
ADD CONSTRAINT `primary_contact`
  FOREIGN KEY (`primary_contact`)
  REFERENCES `app_users`.`users` (`user_id`)
  ON DELETE SET NULL
  ON UPDATE SET NULL;