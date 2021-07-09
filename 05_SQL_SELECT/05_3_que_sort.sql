/* QUERIES Basic */

USE boo;

-- ASC / DSC
-- sortieren nach Sektor aufsteigend / absteigend (alphabetisch)
/*
SELECT
    ticker AS SYM,
    c_name AS "Unternehmen",
    CONCAT(sector," | ",industry) AS "Operations"
FROM
    ccc_list
#ORDER BY ticker ASC
#ORDER BY ticker DESC
#ORDER BY sector,industry ASC
ORDER BY sector ASC,industry DESC
LIMIT 20
#LIMIT 200,10
;*/

-- ASC / DSC
-- sortieren nach Aktienpreis aufsteigend / absteigend (numerisch)

SELECT
    ticker AS "SYMBOL",
    c_name "Unternehmen",
    CONCAT(sector," | ",industry) AS "Operations",
    price "Kurs in $",
    payouts "Zahlungen p.a.",
    no_yrs "Jahre ++"    
FROM
    ccc_list
ORDER BY price DESC, no_yrs ASC # beginnend mit günstigster Aktie
#ORDER BY ticker DESC
#ORDER BY sector,industry ASC
#ORDER BY sector ASC,industry DESC
LIMIT 20
#LIMIT 200,10
;