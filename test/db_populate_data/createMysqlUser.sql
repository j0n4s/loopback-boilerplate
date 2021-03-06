# Insert here sql code to create different database, users etc etc
# It will be run before the other scripts

-- # Automigrate does not create the db itself
CREATE DATABASE  IF NOT EXISTS `testboilerplate`;

-- # We grant a fake permission because IF EXIST is supported from 5.7 onwards, actual db is 5.6
-- # https://coderwall.com/p/aqac0w/mysql-would-you-please-drop-user-if-exists
-- # http://dev.mysql.com/doc/refman/5.7/en/drop-user.html
-- GRANT USAGE ON *.* TO 'testuser'@'localhost';
-- DROP USER 'testuser'@'localhost';
-- CREATE USER `testuser`@`localhost` IDENTIFIED BY 'testuserpassword';

-- # All priviliges for testboilerplate db
-- GRANT ALL PRIVILEGES ON `testboilerplate`.* TO `testuser`@`localhost`;
