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
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

# Gleiche Usernamen werden nicht mehr zugelassen! / UNIQUE
/* Daten - Besser: PWD verschlüsselt! */
INSERT INTO users(user_name,user_pwd,first_name,last_name) VALUES ("kall",SHA1("1234"),"Karl","Arch");
INSERT INTO users(user_name,user_pwd,first_name,last_name) VALUES ("hanz",SHA1("H4n5-Me13r"),"Hans","Meier");
INSERT INTO users(user_name,user_pwd,first_name,last_name) VALUES ("schorsch",SHA1("MeinPasswort!"),"Georg","Goetz");
INSERT INTO users(user_name,user_pwd,first_name,last_name) VALUES ("ramses",SHA1("123#5+7-9"),"Karl","Ramseier");
INSERT INTO users(user_name,user_pwd,first_name,last_name) VALUES ("matze",SHA1("P455w0rt"),"Matthias","Matthies");

#SELECT * FROM users;

/* Änderungen an bestehender Tabelle */
ALTER TABLE users ADD user_plz INT(5) NOT NULL DEFAULT 68259;
DESCRIBE users;

UPDATE users SET user_plz = 68309 WHERE id = 1;
UPDATE users SET user_plz = 68167 WHERE id = 2;
UPDATE users SET user_plz = 68305 WHERE id = 3;
UPDATE users SET user_plz = 68199 WHERE id = 4;
UPDATE users SET user_plz = 68307 WHERE id = 5;
                                                                   
SELECT * FROM users;
