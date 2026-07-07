Use ScuolaDB
GO

CREATE PROCEDURE GetStudenti_iscritti_corso
AS
BEGIN

SELECT
    s.StudenteId,
    s.Nome + ' ' + s.Cognome AS [Nome Completo dello studente],
    ISNULL(s.Email, 'Non definita') AS Email,
    s.CodiceFiscale AS [Codice Fiscale],
    ISNULL(CONVERT(nvarchar, s.DataNascita, 109), 'N/D') AS [Data di Nascita],
    ISNULL(s.Telefono, 0) AS Telefono,
    c.NomeCorso AS [Nome Corso],
    c.Descrizione AS [Descrizione del corso]
FROM Studenti AS s
INNER JOIN Iscrizioni AS i
    ON s.StudenteId = i.StudenteId
INNER JOIN Corsi AS c
    ON c.CorsoId = i.CorsoId;

END
GO

EXEC GetStudenti_iscritti_corso;
