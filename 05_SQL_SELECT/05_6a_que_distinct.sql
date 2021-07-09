/*QUERIES - Distinct*/

-- alle Sektoren
/*
SELECT
    sector
FROM ccc_list
ORDER BY sector ASC
LIMIT 20;
*/


-- nur das erste Auftreten von Sektoren
-- welche VERSCHIEDENEN Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM ccc_list
ORDER BY sector ASC
#LIMIT 20
;*/

-- welche VERSCHIEDENEN Branchen gibt es?
/*
SELECT
    DISTINCT industry Branchen
FROM ccc_list
ORDER BY industry ASC;
;*/

-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?
SELECT
    DISTINCT payouts "Auszahlungen p.a."
FROM ccc_list
ORDER BY payouts ASC;

-- welche Unternehmen zahlen monatlich?
SELECT
    c_name Unternehmen,
    industry Branche
FROM ccc_list
WHERE payouts = 12
ORDER BY Branche ASC
;