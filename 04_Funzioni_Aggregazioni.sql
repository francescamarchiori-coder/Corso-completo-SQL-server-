USE ScuolaDb;

/*
    =====================================================
        FUNZIONI DI AGGREGAZIONE
    =====================================================

    Le funzioni di aggreazione servono per:
        - contare i dati       (COUNT)
        - calcolare la media   (AVG)
        - sommare il numero    (SUM)
        - trovare il minimo    (MIN)
        - trovare il massimo  (MAX)
*/

SELECT 
    COUNT(*) AS [TOTALE STUDENTI]
FROM Studenti;

-- mEDIA DEI CREDITI (AVG)

SELECT 
    AVG(Crediti) AS [MEDIA]
FROM Corsi;

-- SOMMA DEI CREDITI (SUM)
SELECT 
    SUM(Crediti) AS [TOT_CREDITI]
FROM Corsi;
    
-- CREDITO MINIMO  (MIN)
SELECT 
    MIN(Crediti) AS [CREDITO_MIN],
    MIN(Durata) AS [DURATA MINMA CORSO]
FROM Corsi;

    
-- CREDITO MASSIMO  (MAX)
SELECT  
    MAX(Crediti) AS [CREDITO_MAX],
    MAX(Durata) AS [DURATA MASSIMA CORSO]
FROM Corsi;

SELECT * FROM Corsi;


-- Report del corso
SELECT 
    COUNT(*) AS [Totale corsi],
    SUM(Crediti) AS [Totale Crediti],
    AVG(Crediti) AS [Media dei Crediti],
    MIN(Crediti) AS [Credito minimo],
    MAX(Crediti) AS [Credito massimo]

FROM Corsi;