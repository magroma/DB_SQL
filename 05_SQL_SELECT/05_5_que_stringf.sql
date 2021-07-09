/* String-Funktionen */

USE boo;

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
    LINK: https://dev.mysql.com/doc/refman/5.6/en/string-functions.html
*/

-- CONCAT() / Verknuepfung "string" + "string" ....
/*SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    concat("Ops: ",sector," : ",industry) "Operation"
FROM boo.ccc_list
#ggf. Restriktionen
LIMIT 10;*/

-- UPPER() --> alles in Großbuchstaben
/*SELECT
	ticker AS "SYM",
    upper(c_name) "Unternehmen"
FROM boo.ccc_list
#ggf. Restriktionen
LIMIT 10;*/

-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
/*SELECT
	ticker AS "SYM",
    lower(c_name) "Unternehmen",
    lower(concat("Ops: ",sector," : ",industry)) AS "Operation"
FROM boo.ccc_list
#ggf. Restriktionen
LIMIT 10;*/

-- LENGTH() --> String-Laenge
/*
SELECT
	ticker SYM,
    c_name Unternehmen,
    concat("Ops: ",sector," : ",industry) Operation,
    length(concat("Ops: ",sector,":",industry)) StrLen
FROM boo.ccc_list
ORDER BY StrLen DESC
LIMIT 20;*/

-- REPLACE() --> Ersetzen von Stringanteilen
/*SELECT
	ticker AS "SYM",
    #c_name "Unternehmen",
    #replace(c_name,"Inc.","Incorporated") AS "Incorporated"
    replace(c_name,"Corp.","Corporations") AS "Corporation"
FROM stocks.ccc_list
#WHERE c_name LIKE "%Inc."
WHERE c_name LIKE "%Corp."
LIMIT 20;*/

-- TRIM() --> Trimmen vor/nach String (Whitespace) Siehe Link



