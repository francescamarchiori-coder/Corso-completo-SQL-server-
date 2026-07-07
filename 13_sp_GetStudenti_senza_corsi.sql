Use ScuolaDB
GO

CREATE PROCEDURE GetStudenti_senza_corsi
AS
BEGIN

SELECT
    s.StudenteId,
    s.Nome + ' ' + s.Cognome AS [Nome Completo dello studente],
    ISNULL(s.Email, 'Non definita') AS Email,
    s.CodiceFiscale AS [Codice Fiscale],
    ISNULL(CONVERT(nvarchar, s.DataNascita, 109), 'N/D') AS [Data di Nascita],
    ISNULL(s.Telefono, 0) AS Telefono,
    ISNULL(c.NomeCorso, 'No definito') AS [Nome Corso],
    ISNULL(c.Descrizione,'Non definito') AS [Descrizione del corso]
FROM Studenti AS s
LEFT JOIN Iscrizioni AS i
    ON s.StudenteId = i.StudenteId
LEFT JOIN Corsi AS c
    ON c.CorsoId = i.CorsoId
    WHERE c.NomeCorso is null;
END
GO
EXEC GetStudenti_senza_corsi;