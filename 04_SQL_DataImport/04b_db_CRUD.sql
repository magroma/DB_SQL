/* CRUD Create | Read | Update | Delete */

# CREATE --> siehe 04a ....

# UPDATE --> Änderung bestehender Tabelle

UPDATE cats SET cat_name = "Alonzo" WHERE ID = 2;
#select * from cats;
#UPDATE cats SET cat_name = "Big Alonzo" WHERE fur_color = "grey";
#select * from cats;

/* READ - SELECT : Ergebnistabelle */

SELECT * FROM cats; # gesamte Tabelle
SELECT cat_name FROM cats; # Feld
SELECT cat_name,age FROM cats; # 2 Felder kombiniert
SELECT age,cat_name FROM cats; # 2 Felder kombiniert
SELECT cat_name AS "Name" , age AS "Alter" FROM cats; # 2 Felder / neue Namen

/* Restriktionen durch WHERE */
SELECT 
	cat_name AS "Name",
	age AS "Alter"
FROM cats
#WHERE id = 1
#WHERE fur_color = "red"
WHERE age >= 35
;

/* DELETE - Vorsicht!!! */
#DELETE FROM cats WHERE id = 2; # Sicher(er) --> KEY
#SELECT * FROM cats;
