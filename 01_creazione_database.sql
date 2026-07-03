-- Create database ScuolaDB;
Create database ScuolaDB;
GO

-- chiamata(uso) del database --> ScuolaDB
USE ScuolaDB;

/* tipi di dati usati frequentemente in SQL servere
| tipo   | valore|
| INT    |numero intero| può arrivare fino a 9 milioni di caratteri
|VARCHAR | testo | hanno lunghezza diversa
|NVARCHAR| testo | per comodità si usa questo
| DATE   | data  |
|FLOAT   | decimale|
| CHAR   | carattere| es- cod fiscale
*/

CREATE TABLE Studenti(
    -- nome della colonna con il tipo di dati (intero), chiave primaria, campo obl. non vuoto, progressione chiave parte da. e si incemneta di 1, 1,2,3,4,5 
StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Nome NVARCHAR (50) NOT NULL,
Cognome NVARCHAR (50) NOT NULL,
Email NVARCHAR (150) UNIQUE NULL,
CodiceFiscale CHAR (16) UNIQUE NOT NULL,
DataNascita DATE NULL,
Telefono NVARCHAR(20) UNIQUE NULL
);

-- UNIQUE PER EMAIL NON SI PUò RIPETERE NELLO STESSO DATABASE, 50 max caratteri accettati in nvachart, null non obbligatorio se non lo scrivo è di default, num telefono può avere +39 caratt. speciali
-- se vado su Tables, ssu dbo.students e  su Columns vedo le colonne generate nel codice sopra
-- se voglio vedere direttamente le colonne c'è codice SELECT, * = tutte le colonne, nome tab

SELECT * FROM Studenti;

\*esercizio crea tab Corsi con le colonne (CorsoID, 
NomeCorso text lung 100 obbl,
descrizione text lung 256 anche nullo,
crediti intero nullo
Durata intero nullo)*/


Create TABLE Corsi (
    CorsoId INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    NomeCorso NVARCHAR(100) NOT NULL,
    Descrizione NVARCHAR(256) NOT NULL,
    Crediti INT NULL,
    Durata INT NULL
);
SELECT * FROM Corsi

-- esercizio 3 crea tab dei Docenti
create TABLE Docenti(
    DocentiId INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) UNIQUE NULL,
    Specializzazione NVARCHAR(50) NOT NULL
);
SELECT * FROM Docenti

-- stiamo imparando l'operazione crude, creazione e visualizzazione. ci manca inserimento modifica e cancellazione dati.

-- creazione della tab Aule
CREATE TABLE Aule(
    AulaId INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    NomeAula NVARCHAR(150)NOT NULL,
    Capacita INT NOT NULL
);
SELECT * FROM Aule


-- inserimento dei dati (INSERT), inserisco nella tab studenti () include tutte le colonne
SELECT * FROM Studenti
INSERT INTO Studenti
(Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
-- no id perchè si incrementa da solo man mano
-- Rappresentano i valori da inserire in ordine di come gli ho scritTI (ANNO-MESE-GIORNO PER DATA)
VALUES
  -- ('Marialourdes', 'Messa', 'm.messa@gmail.com', 'MSSMN964125PAI5P', '1978/03/29','+393475397216');
 --  ('Lucia', 'Cicala', 'l.cica@gmail.com', 'LNCMR03P43A479S', '2000/06/02', '+393487396312');
 ('Antonella', 'Risi', 'a.risi@gmail.com', 'ARSMN964125PAI5P', '1990/05/10','+393473567216')

 -- per generare un altro database use Master e poi create database Nome. Devo passare da Master non da ScuolaDB* 
 -- Se voglio cancellare un database si usa *DROP* drop table/ drop database Nome