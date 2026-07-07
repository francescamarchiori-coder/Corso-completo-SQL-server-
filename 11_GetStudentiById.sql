/*
BASE PER LA STORE PROCEDURE
-- AUTHOR <AUTHOR,,NAME>
-- create date <create date>
-- description 
create procedure - nome della procedure
-- add the paramaters for the stored procedure here
AS
BEGIN
-- insert statements for procedure here
-- select * from studenti where = @nome
END
GO
*/
===============
-- AUTHOR Francesca
-- create date 07/02/2026
-- description restituisce uno studente in base all'id passsata nel parametro
Use ScuolaDB
GO
create PROCEDURE GetStudenteById
@studenteId INT
AS
BEGIN
     SELECT
         StudenteId as [Matricola],
         Nome +''+ Cognome as [Nome Completo dello studente],
         ISNULL(Email, 'Non definita') AS Email,
         CodiceFiscale,
         ISNULL(CONVERT(nvarchar, DataNascita, 109), 'N/D') as [Data di Nascita],
         ISNULL(Telefono, 0) as Telefono
     FROM Studenti
     WHERE StudenteId = @studenteId
END
GO

- per interrogare mettiamo un parametro
EXEC GetStudenteById 5;
- O
EXEC GetStudenteById @studenteId = 5;