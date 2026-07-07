USE ScuolaDB
GO

-- creiamo una funzione automatizzata da richiamare quando vogliamo
-- ogni stpred procedure viene documentata dall'azienda
===============
/*
-- AUTHOR Francesca
-- create date 07/02/2026
-- description restituisce la lista degli studenti senza valori nulli
===============*/
DROP PROCEDURE sp_GetAllStudenti;
GO
create procedure sp_GetAllStudenti
AS
BEGIN
     SELECT
         StudenteId as [Matricola],
         Nome +''+ Cognome as [Nome Completo dello studente],
         ISNULL(Email, 'Non definita') AS Email,
         CodiceFiscale,
         ISNULL(CONVERT(nvarchar, DataNascita, 109), 'N/D') as [Data di Nascita],
         ISNULL(Telefono, 0) as Telefono
     FROM Studenti;
END
GO

--execute the procedure
EXEC sp_GetAllStudenti