/* Tabelle anlegen / Daten parsen */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;
USE boo;

DROP TABLE IF EXISTS ccc_list; #Tab lรถschen, falls vorhanden

CREATE TABLE IF NOT EXISTS ccc_list # Tab. anlegen
(
	id INT(3) NOT NULL PRIMARY KEY, #ID
    c_name VARCHAR(50) NOT NULL, #Name des Unternehmens
    ticker VARCHAR(5) NOT NULL, #DOW Ticker-Symbol
    sector VARCHAR(50) NOT NULL, #Industrie-Sektor
    industry VARCHAR(60) NOT NULL, #Branche
    no_yrs INT(2) NOT NULL, #Jahre, seitdem ununterbrochen Div.ausgeschuettet werden
    ranking INT NOT NULL, #Ranking in der Liste
    price DECIMAL(6,2) NOT NULL, #Preis pro Aktie in $ per 12/2019
    yield DECIMAL(6,4) NOT NULL, #Dividendenrendite (Dividendenanteil *100) / Aktienkurs
    dividend DECIMAL(6,4) NOT NULL, #Dividendenanteil pro Aktie (Ausschuettung)
    payouts INT(2) NOT NULL, #wieviel mal wird pro Jahr gezahlt?
    annualized DECIMAL(4,2) NOT NULL #jaehrlich
);

DESCRIBE ccc_list;

/* Parsen & Einlesen der Daten */
LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/ccc_dez_2019.csv"
INTO TABLE ccc_list
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

SELECT * FROM ccc_list LIMIT 5; #Testausgabe auf 5 begrenzt