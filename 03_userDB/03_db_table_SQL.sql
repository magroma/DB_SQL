/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;
USE boo;

/* Tabelle USers */
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL       
);

DESCRIBE users;

/* Daten */
INSERT INTO users(user_name,first_name,last_name) VALUES ("kall","Karl","Arch");
INSERT INTO users(user_name,first_name,last_name) VALUES ("hanz","Hans","Meier");
INSERT INTO users(user_name,first_name,last_name) VALUES ("schorsch","Georg","Götz");
INSERT INTO users(user_name,first_name,last_name) VALUES ("matze","Matthias","Gonz");

SELECT * FROM users;