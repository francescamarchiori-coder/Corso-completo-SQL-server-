--CREATE DATABASE ScuolaDb;
--GO


USE ScuolaDb;
GO

--CREATE DATABASE Studenti;

-- Per eliminare un database si usa DROP
--DROP DATABASE Studenti;

-- CREAZIONE DELLA TABELLA 
CREATE TABLE Studenti
(
    StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(150) UNIQUE NULL,
    CodiceFiscale CHAR(16) UNIQUE NOT NULL,
    DataNascita DATE NULL,
    Telefono NVARCHAR(20) UNIQUE NULL
);
GO

-- select per visualizzare il record di una tabella 

-- SELEZIONARE TUTTE LE COLONNE DELLA TABELLA STUDENTI
SELECT *
FROM Studenti;

CREATE TABLE Corsi
(
    CorsoId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NomeCorso NVARCHAR(100) NOT NULL,
    Descrizione NVARCHAR(256),
    Crediti INT,
    Durata INT
);
GO

SELECT *
FROM Corsi;

-- Creazione della tabella dei Docenti
CREATE TABLE Docenti
(
    DocentiId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) UNIQUE NULL,
    Specializzazione NVARCHAR(50) NOT NULL
);
GO

-- modifica tabella Docenti: colonna "DocenteId"
EXEC sp_rename 'Docenti.DocentiId', 'DocenteId';
GO;

SELECT *
FROM Docenti;

-- Creazione della tabella Aule
CREATE TABLE Aule
(
    AulaId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NomeAula NVARCHAR(150) NOT NULL,
    Capacita INT NOT NULL
);
GO

SELECT *
FROM Aule;

/*--------------------- creazione di una tabella con chiave esterna ----------*/


-- Foregin key
-- Creazione della tabella Iscrizione -> Corsi e studenti
CREATE TABLE Iscrizioni(
    IscrizioneId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    StudenteId INT NOT NULL,
    CorsoId INT NOT NULL,
    
    DataIscrizione Date NOT NULL,

    -- Vincoli di relazione (Foregin Key)
    FOREIGN KEY(StudenteId) REFERENCES Studenti(StudenteId),
    FOREIGN KEY(CorsoId) REFERENCES Corsi(CorsoId)
);

SELECT * from Iscrizioni;


-- Creazione della tabella Lezioni -> Corsi e Aule
CREATE TABLE Lezioni(
    LezioneId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    CorsoId INT NOT NULL,
    AulaId INT NOT NULL,

    DataLezione Date NOT NULL,
    OraInizio TIME,
    OraFine TIME,

    FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId),
    FOREIGN KEY (AulaId) REFERENCES Aule(AulaId)
);

    SELECT * from Lezioni;

    USE ScuolaDb;
    GO;
    

-- Tabella Docenti . DocentiCorso

CREATE TABLE DocentiCorso
(
    DocentiCorsoId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    DocenteId INT NOT NULL,
    CorsoId INT NOT NULL ,
    FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId),
    FOREIGN KEY (DocenteId) REFERENCES Docenti(DocenteId)
    
);
GO

SELECT *
FROM DocentiCorso;

CREATE TABLE DocentiCorso(
    DocenteId ....
    Nome .....
    Cognome ....
    Email .... null
    Specializzazione .... null
);
