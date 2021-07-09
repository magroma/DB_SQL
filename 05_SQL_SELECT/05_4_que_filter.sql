/* QUERIES Filtern mit WHERE */

USE boo;

-- Index
/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/


--  Eingrenzen/Filtern WHERE & AND/OR etc.
/*
SELECT
    ticker AS "SYMBOL",
    c_name "Unternehmen",
    CONCAT(sector, " | ", industry) "Operations",
    price "Kurs in $",
    payouts "Zahlungen p.a.",
    dividend "Dividende" 
FROM ccc_list
-- Einzeldaten / Strings
#WHERE sector = "Communication Services"
#WHERE industry = "Media"
-- Kombination durch AND
#WHERE sector = "Communication Services" AND industry = "Entertainment"
#WHERE industry = "Entertainment" AND payouts = 4
-- Kombination durch AND / OR
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
-- Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"
#ORDER BY price ASC #beginnend mit günstigster Aktie 
ORDER BY industry ASC
LIMIT 20;
*/

-- Eingrenzen/Filtern WHERE & LIKE + Parameter
/*
SELECT
    ticker "SYMBOL",
    c_name "Unternehmen",
    industry "Branche"
FROM ccc_list
-- scharfe Suche nach Strings
#WHERE industry = "Media"
-- unschärfere Suche --
-- Branchenname beginnt mit ... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"
-- Branchenname endet mit ... , davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthaelt ...
#WHERE industry LIKE "%ood%"
-- Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "Me__a"
#WHERE industry LIKE "M_d_a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"
#WHERE industry LIKE "%ment" 
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" 
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"
ORDER BY industry ASC
LIMIT 40;
*/

-- Eingrenzen/Filtern WHERE & RegEx
/*
SELECT
	c_name "Unternehmen"
FROM ccc_list
WHERE c_name RLIKE "^[AZ]"
ORDER BY c_name;
*/

--  Eingrenzen/Filtern WHERE & IN / NOT IN
/*SELECT 
	ticker "SYM",
	c_name "Unternehmen",
	sector "Sektor",
	industry "Branche"
FROM ccc_list 
#WHERE sector = "Financials"
#WHERE industry IN ("Beverages","Banks") #OR ...
WHERE sector = "Financials" AND industry NOT IN ("Banks","Insurance")
ORDER BY industry DESC;
*/

-- Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
SELECT 
	ticker "SYM",
	c_name "Unternehmen",
	sector "Sektor",
	industry "Branche",
	price "Aktienpreis in $"
FROM ccc_list 
#WHERE sector = "Financials" AND price > 30.0 
WHERE sector = "Financials" AND (price BETWEEN 30.0 AND 50.0)
#WHERE sector = "Financials" AND NOT (price BETWEEN 20.0 AND 250.0)
ORDER BY price DESC
LIMIT 100;