/* Queries - count() */

USE boo;

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/
/*
-- Welche VERSCHIEDENEN Sektoren ?
SELECT
    DISTINCT sector Industriesektoren
FROM ccc_list
ORDER BY sector ASC
;

-- Wieviele VERSCHIEDENE Sektoren ?
SELECT
    COUNT(DISTINCT sector) "Anzahl Sektoren"
FROM ccc_list
;
*/


/*
-- Welche VERSCHIEDENEN Branchen?
SELECT
    DISTINCT industry Branchen
FROM ccc_list
ORDER BY industry ASC
;
-- Wieviele VERSCHIEDENE Branchen?
SELECT
    COUNT(DISTINCT industry) Branchenzahl
FROM ccc_list
;
*/

-- Welche VERSCHIEDENEN Branchen gibt es
-- in den jeweiligen Industriesektoren?

SELECT
    sector Industriesektoren, # NICHT eggregiert --> organisch
    COUNT(DISTINCT industry) Branchen # aggregiert --> durch Fkt. entstanden
FROM ccc_list
#WHERE sector LIKE "Consumer%" -- Filter in NICHT aggr. Feldern
GROUP BY sector # bei Kombination nicht aggr. / aggr.
HAVING Branchen >= 5 -- Filter in aggr. Feldern / nach GROUP
ORDER BY Branchen DESC
;




