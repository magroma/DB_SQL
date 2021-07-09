/* Aggregationen AVG() */

USE boo;

-- Durchschnittspreis einer Aktie / Banken?
/*
SELECT
	round(avg(price),2) Durchschnittspreis  -- Abgerundet / 2 Nachkommastellen
FROM boo.ccc_list
WHERE industry = "Banks"
#WHERE industry = "Media"
;
*/

-- KOMBINATION Preis/Dividende pro Industriesektor
/*
SELECT
	sector AS Industriesektor,
    round(avg(price),2) AS Durchschnittspreis,  
	avg(dividend) AS Durchschnittsdividende
FROM boo.ccc_list
GROUP BY sector
#ORDER BY avg(price) DESC
ORDER BY avg(dividend) DESC
;*/
