USE ScuolaDb;

/* 
	=======================
	=    Operatore like   =
	=======================

	Serve per cercare valori simili

	simboli principali:
	a%  (restituisce tutti i nome che cominciano con la lettera a)
    %i  (restituisce i nomi che finiscono con la lettera "i")
    %o% (restituisce i nomi che hanno una lettera "o" in mezzo)


    SINTASSI DI BASE:
        SELECT 
            colonna
        FROM tabella  
        WHERE colonna like 'lettera%';

*/

SELECT * FROM Studenti
WHERE Nome LIKE 'L%';


SELECT * FROM Studenti
WHERE Cognome LIKE '%I' AND DataNascita IS NOT NULL;


SELECT * FROM Studenti
WHERE Cognome LIKE 'm%' AND DataNascita IS NOT NULL;
