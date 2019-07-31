USE M_SStop;
INSERT INTO EstilosMusicais (Nome)
	VALUES ('POP');
SELECT *
	FROM EstilosMusicais;
INSERT INTO EstilosMusicais (Nome)
	VALUES ('FUNK');
INSERT INTO Artistas (Nome, IdEstiloMusical)
	VALUES ('Anitta',1);
SELECT *
	FROM Artistas;
INSERT INTO Artistas (Nome, IdEstiloMusical)
	VALUES ('Kevinho',2);
SELECT *
	FROM Artistas;
INSERT INTO EstilosMusicais (Nome)
	VALUES ('Pagode')
	,('MPB')
	,('Metal')
	,('RockNRoll');
SELECT *
	FROM EstilosMusicais;
INSERT INTO Artistas (Nome, IdEstiloMusical)
	VALUES ('Legião Urbana', 6);
SELECT *
	FROM EstilosMusicais;
INSERT INTO Artistas (Nome, IdEstiloMusical)
	VALUES ('Metallica', 5);
SELECT *
	FROM EstilosMusicais; 
SELECT *
	FROM Artistas; 
SELECT *
	FROM EstilosMusicais;
INSERT INTO EstilosMusicais (Nome)
	VALUES ('RAP')
	,('Samba')
	,('EDM')
	,('Clássica');
SELECT *
	FROM EstilosMusicais;
INSERT INTO Artistas (Nome, IdEstiloMusical)
	VALUES ('Eminem',7)
	,('Alok',9)
	,('Martinho da Vila',8)
	,('Turma do Pagode', 3)
	,('Beethoven',10)
	,('Caetano Veloso',4);
SELECT *
	FROM Artistas;
SELECT *
	FROM EstilosMusicais, Artistas;
SELECT *
	FROM Artistas;