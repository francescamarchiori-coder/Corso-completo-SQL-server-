Use ScuolaDB
GO

CREATE PROCEDURE Report_Scolastico
AS
BEGIN

SELECT
    COUNT(i.StudenteId) AS [Totale studenti iscritti],
    COUNT(c.CorsoId) AS [Totale dei corsi],
    SUM(c.Crediti) AS [Totale dei crediti del corso],
    AVG(c.Crediti) AS [Media dei crediti del corso],
    MIN(c.Crediti) AS [Credito minimo del corso],
    MAX(c.Crediti) AS [Credito massimo del corso],
    SUM(c.Durata) AS [Totale delle ore del corso]
    FROM Studenti s
    
    LEFT JOIN Iscrizioni  i
      ON i.StudenteId = s.StudenteId
    LEFT JOIN Corsi c
      ON c.CorsoId = i.CorsoId
    LEFT JOIN DocentiCorso dc
      ON c.CorsoId = dc.CorsoId
    LEFT JOIN Docenti d
      ON dc.DocentiId = d.DocentiId
    LEFT JOIN Lezioni l
      ON l.CorsoId = c.CorsoId
    LEFT JOIN Aule a
      on a.AulaId = l.AulaId
END
GO
EXEC Report_Scolastico;