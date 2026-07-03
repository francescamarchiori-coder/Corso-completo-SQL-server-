-- JOIN / INNER JOIN
/*
SELECT
	colonne
FROM tabella1
JOIN tabella2
	ON tablella1.colonna_tablella1_Id  = tablella2.colonna_tablella2_Id


	Studenti
		studenteId = 1;

	Iscrizioni
		studenteId = 1;
*/

-- Esempio1:
SELECT
    *
FROM Studenti AS s
    JOIN Iscrizioni AS i
    ON s.StudenteId = i.StudenteId;


-- Restituire la lista degli studenti scritti senza data di nascita



/*
    Lista di JOIN in sql
        JOIN / INNER JOIN
        LEFT JOIN
        RIGTH JOIN 
*/


SELECT 
    * 
FROM Studenti, Corsi, Iscrizioni, Lezioni;

-- Join implicita con loop infinito : da non fare

SELECT 
    s.Nome + ' ' + s.Cognome  AS [Nome completo dello studente],
    c.NomeCorso AS [Nome del corso],
    c.Descrizione AS [Descrizione del corso],
    c.Durata,
    d.Nome + ' ' + d.Cognome  AS [Nome completo del docente]
FROM Studenti s, Corsi c, Iscrizioni i, Lezioni l, Docenti d;


-- Join implicita con Distinct (un solo record per nome)

SELECT DISTINCT
    s.Nome + ' ' + s.Cognome  AS [Nome completo dello studente],
    c.NomeCorso AS [Nome del corso],
    c.Descrizione AS [Descrizione del corso],
    c.Durata,
    d.Nome + ' ' + d.Cognome  AS [Nome completo del docente]
FROM Studenti s, Corsi c, Iscrizioni i, Lezioni l, Docenti d
WHERE s.DataNascita IS NULL and
 s.StudenteId = i.Studenteid;
