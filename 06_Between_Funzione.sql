USE ScuolaDb;

/*
    BETWEEN
    Serve per filtrare tra valori 
    Compresi in un intervallo

    Es;
        SELECT 
            colonne
        FROM tabella
        wher
    Compresi in un intervallo

    Es;
        SELECT 
            colonne
        FROM tabella
        where colonna BETWEEN valore1 AND valore2
*/

SELECT
    *
FROM Corsi 
WHERE Crediti BETWEEN 7 AND 30