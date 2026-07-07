use ScuolaDB
GO

create procedure GetAllCorsi
AS
BEGIN
     SELECT
         CorsoId as [Matricola],
         NomeCorso as [Nome Corso],
         Descrizione,
         Crediti,
         Durata
     FROM Corsi;
END
GO
EXEC GetAllCorsi;

SELECT *FROM Corsi