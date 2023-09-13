CREATE DATABASE `chat-app-db`
CREATE TABLE `chat-app-db`.`users` (
  `username` VARCHAR(45) NOT NULL,
  `password` INT NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);

CREATE TABLE `chat-app-db`.`rooms` (
  `roomname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`roomname`),
  UNIQUE INDEX `roomname_UNIQUE` (`roomname` ASC) VISIBLE);

CREATE TABLE `chat-app-db`.`messges` (
  `id_message` int NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `room_name` varchar(45) NOT NULL,
  `message` varchar(250),
  PRIMARY KEY (`id_message`),
  FOREIGN KEY (user_name) REFERENCES users(username));
