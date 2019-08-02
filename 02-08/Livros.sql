CREATE DATABASE M_Livros;
USE M_Livros;
CREATE TABLE Generos(
	IdGeneros INT IDENTITY PRIMARY KEY
	,Nome VARCHAR UNIQUE NOT NULL 
);
CREATE TABLE Atividade
(
	IdAtividade INT IDENTITY PRIMARY KEY
	,Situacao INT
);
CREATE TABLE Autores
(
	IdAutor INT IDENTITY PRIMARY KEY
	,Nome VARCHAR(200) UNIQUE NOT NULL
	,Email VARCHAR(200) UNIQUE
	,IdAtividade INT NOT NULL FOREIGN KEY REFERENCES Atividade(IdAtividade)
	,DataNascimento VARCHAR(9)
);
CREATE TABLE Livros
(
	IdLivro INT IDENTITY PRIMARY KEY
	,Nome VARCHAR(200) NOT NULL
	,IdAutor INT NOT NULL FOREIGN KEY REFERENCES Autores(IdAutor)
	,IdGeneros INT NOT NULL FOREIGN KEY REFERENCES Generos(IdGeneros)
);
SELECT *
	FROM Livros;
INSERT INTO Generos(Nome)
	VALUES ('Aventura')
	,('Ação')
	,('Ficção')
	,('Não Ficção')
	,('Romance')
	,('Poesia')
	,('Enciclopédia')
	,('Auto Ajuda')
	,('Infantil');
SELECT *
	FROM Generos;
INSERT INTO Generos(Nome)
	VALUES ('Aventura');
ALTER TABLE Generos
	DROP COLUMN Nome;

	select * from generos;
ALTER TABLE Generos
	ADD Nome VARCHAR(200);
INSERT INTO Generos(Nome)
	VALUES ('Aventura')
	,('Ação')
	,('Ficção')
	,('Não Ficção')
	,('Romance')
	,('Poesia')
	,('Enciclopédia')
	,('Auto Ajuda')
	,('Infantil');
select * from generos;
ALTER TABLE Atividade
	ADD Descricao VARCHAR(200);
ALTER TABLE Atividade
	DROP COLUMN Situacao;
ALTER TABLE Atividade
	ADD Situacao INT NOT NULL;
INSERT INTO Atividade(Descricao,Situacao)
	VALUES ('Ativo',1)
	,('Inativo',0);
SELECT *
	FROM Atividade;
ALTER TABLE Atividade
	DROP COLUMN Situacao;
INSERT INTO Autores(Nome,Email,IdAtividade,DataNascimento)
	VALUES('Harari','harari@gmail.com',1,'24/01/1976');
ALTER TABLE Autores
	ADD DataNascimento VARCHAR(20);
SELECT *
	FROM Autores;
INSERT INTO Autores(Nome,Email,IdAtividade,DataNascimento)
	VALUES('J.K. Rowling','jkrowling@gmail.com',2,'31/07/1965')
	,('Neil deGrasse Tyson','neil@gmail.com',1,'05/10/1958');
INSERT INTO Livros(Nome,IdAutor,IdGeneros)
	VALUES('Sapiens',2,6)
	,('Origens',4,12)
INSERT INTO Generos(Nome)
	VALUES ('Tese');
SELECT *
	FROM Livros;
INSERT INTO Livros(Nome,IdAutor,IdGeneros)
	VALUES('Harry Potter',3,5)
SELECT Livros.*,Autores.Nome 
	FROM Livros
	FULL JOIN Autores
	ON Livros.IdAutor = Autores.IdAutor;
DELETE FROM Livros WHERE IdLivro = 2;
DELETE FROM Autores WHERE IdAutor = 4;
INSERT INTO Livros(Nome,IdAutor,IdGeneros)
	VALUES('Homo Deus',2,6);
INSERT INTO Livros(Nome,IdAutor,IdGeneros)
	VALUES('Harry Potter',3,5);
ALTER TABLE Livros
	ADD Sinopse VARCHAR(100);
INSERT INTO Livros(Nome,IdAutor,IdGeneros,Sinopse)
	VALUES('Sapiens',2,6,'Uma breve hisptria da humanidade');
ALTER TABLE Livros
	DROP COLUMN Sinopse;
ALTER TABLE Livros
	ADD Sinopse VARCHAR(100);