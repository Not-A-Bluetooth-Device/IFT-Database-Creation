CREATE TABLE `app_users`.`users` (
  `user_id` INT NOT NULL COMMENT '3-Character Unique Code',
  `user_name` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  `user_phone` VARCHAR(10),
  `created_at` DATETIME NOT NULL,
  `deleted_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `idusers_UNIQUE` (`user_id` ASC) VISIBLE)
COMMENT = 'A table of all users of the application';

-- Run once both tables are created
ALTER TABLE `app_users`.`users` 
ADD COLUMN `client_id` CHAR(3) NULL AFTER `deleted_at`,
ADD INDEX `client_id_idx` (`client_id` ASC) VISIBLE;

ALTER TABLE `app_users`.`users` 
ADD CONSTRAINT `client_id`
  FOREIGN KEY (`client_id`)
  REFERENCES `app_users`.`clients` (`client_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
ALTER TABLE `users` 
MODIFY `deleted_at` DATETIME DEFAULT NULL;
