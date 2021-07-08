/* QUERIES Basic */

USE boo;

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tabelle
#SELECT * FROM boo.ccc_list;

-- Begrenzung: 5 Zeilen ab Anfang
/*
SELECT
    *
FROM ccc_list
#LIMIT 5 # 5 Zeilen ab Anfang
LIMIT 200,10 # 10 Zeilen ab 200
;*/

-- Abfrage eines Feldes oder einer Feld-Kombi (rows 1-10)
/*
SELECT
    ticker,
    c_name,
    industry
FROM
    ccc_list
LIMIT 10
;*/

-- Abfrage eines Feldes oder einer Feld-Kombi (rows 1-10) mit Umbenennung (Alias)
/*
SELECT
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $"
FROM
    ccc_list
LIMIT 10
;*/

-- Abfrage eines Feldes oder einer Feld-Kombi (rows 1-10) mit Umbenennung (Alias)

SELECT
    ticker AS SYM,
    c_name AS "Unternehmen",
    CONCAT(sector," | ",industry) AS "Operations"
FROM
    ccc_list
LIMIT 10
;