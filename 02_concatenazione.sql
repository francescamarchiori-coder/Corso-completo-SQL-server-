USE ScuolaDB;
select * FROM Studenti;

-- Restituisce uno studente con l'id passato nel parametro con WHERE mi da tutta la stringa info
SELECT
   *
FROM Studenti
WHERE StudenteId =3;

-- se voglio solo il nome e il cognome e il numero di telefono con id ma non le restanti. Voglio però creare una colonna con il nome completo. Uso la concatenazione
/* SELECT
     colonne
     From tabella
     Where condizione*/

-- se voglio tutte le colonne metto * senza i nomi col
SELECT
   Nome,
   Cognome,
   Telefono
FROM Studenti
WHERE StudenteId =3;

/* gli operatori di confronto in sql servono per confrontare i valori:
|operatore|significato|
| = | uguale |
|!= | diverso|
| <>| diverso|
| < | minore |
|>  | maggiore|
| <=| minore uguale|
| >=| maggiore uguale|
 
Operatori logici(buleano)
 |operatore|significato|
 | AND | tutte vere |
 | OR | almeno una vera |
 | NOT | nega la condizione |
 | IS NULL | valore nullo |
 */


-- La concatenazione(+) -> +'-'+ per avere lo spazio tra nome e cognome 
SELECT
   Nome+'-'+ Cognome,
   Telefono
FROM Studenti
WHERE StudenteId =3;


--l'Aliass per definire il nome con la concatenazione AS
SELECT 
   Nome +''+ Cognome AS Nome_Completo_dello_studente,
   Telefono
   FROM Studenti

- opppure
   SELECT 
   Nome +''+ Cognome AS 'Nome Completo dello studente',
   Telefono
   FROM Studenti

 - opppure
SELECT 
   Nome +''+ Cognome AS [Nome Completo dello studente],
   Telefono
   FROM Studenti

   -- restituisce la lista degli studenti che hanno inseritola data di nascita durante l'iscrizione e restituisce nome completo, il codice fisc
SELECT 
   Nome +''+ Cognome AS [Nome Completo dello studente],
   CodiceFiscale
   FROM Studenti
   WHERE DataNascita IS NOT NULL

   -- se voglio vedere solo quelli nati dopo il 2000
SELECT 
   Nome +''+ Cognome AS [Nome Completo dello studente],
   CodiceFiscale,
   DataNascita AS [Data Nascita]
   FROM Studenti
   WHERE DataNascita IS NOT NULL AND DataNascita >= '2000';

   -- voglio solo i primi 10 studenti 
SELECT 
TOP 10
   Nome +''+ Cognome AS [Nome Completo dello studente],
   CodiceFiscale,
   DataNascita AS [Data Nascita]
   FROM Studenti
   WHERE DataNascita IS NOT NULL AND DataNascita >= '2000';

   -- per ordinare per data decrescente ORDER BY (per ordinare colonne) desc decrescente, asc ascendente 
   SELECT 
TOP 10
   Nome +' '+ Cognome AS [Nome Completo dello studente],
   CodiceFiscale,
   DataNascita AS [Data Nascita]
   FROM Studenti
   WHERE DataNascita IS NOT NULL AND DataNascita >= '2000'
   ORDER BY [Nome Completo dello studente] ASC, DataNascita DESC;

   -- es.  restituisci elenco di tutti gli studenti top 10
SELECT 
TOP 10
* 
FROM Studenti
ORDER BY [Cognome] ASC




