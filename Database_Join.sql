USE ScuolaDb;
GO;

-- esempi di Join 
-- 1° INNER JOIN

SELECT 
	*
FROM Studenti as s
JOIN Iscrizioni as i
ON s.StudenteId = i.StudenteId;

/* JOIN con WHERE Condition */

SELECT 
	*
FROM Studenti as s
JOIN Iscrizioni as i
ON s.StudenteId = i.StudenteId
WHERE s.DataNascita is NULL;

/* JOIN con DataNascita  */

SELECT 
	*
FROM Studenti as s
JOIN Iscrizioni as i
ON s.StudenteId = i.StudenteId
WHERE s.DataNascita is NOT NULL
ORDER BY s.Cognome, s.Nome;


-- Restituire la lista degli studenti iscritti almeno ad un corso 
-- Campi da visualizzare: (Nome completo dello studente, Codice Fiscale, Data di Nascita, Nome del Corso e la descrizione del corso)

/*SELECT 
s.Nome, s.Cognome, s.CodiceFiscale, s.DataNascita, c.NomeCorso, c.Descrizione
FROM Studenti as s
JOIN Iscrizioni as i, Corsi as c
ON s.Studente = i.StudenteId
WHERE i.DataIscrizione IS NOT NULL;*/

SELECT
    s.Nome+ ' '+s.Cognome as [Nome completo dello studente], 
	s.CodiceFiscale as [Codice Fiscale], 
	s.DataNascita as [Data di Nascita], 
	c.NomeCorso as [Nome del Corso], 
	c.Descrizione as [Descrizione del corso]
FROM Studenti AS s
INNER JOIN Iscrizioni AS i
    ON s.StudenteId = i.StudenteId
INNER JOIN Corsi AS c
    ON c.CorsoId = i.CorsoId