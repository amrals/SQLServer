USE M_OpFlix;
go
INSERT INTO TiposUsuarios(Descricao)
	VALUES('Administrador')
	,('Comum');
INSERT INTO TiposMidias(Descricao)
	VALUES('Filme')
	,('Série');
DELETE FROM TiposMidias WHERE IdTipoMidia = 2;
SELECT *
	FROM Midias;
INSERT INTO Plataformas(Nome)
	VALUES('Cinema')
	,('Netflix');
INSERT INTO Categorias(Nome)
	VALUES('Comédia?')
	,('Policiais?')
	,('Infantis?')
	,('Aventura')
	,('Ação?')
	,('Suspense?')
	,('Ficção científica?')
	,('Documentário')
	,('Comédia romântica')
	,('Romance')
	,('Terror')
	,('Musical')
	,('Drama')
	,('Guerra');
UPDATE Categorias SET Nome = 'Ficção científica' WHERE IdCategoria = 7;
INSERT INTO Usuarios(Nome,Email,Senha,IdTipoUsuario)
	VALUES('Erik','erik@email.com','123456',1)
	,('Cassiana','cassiana@email.com','123456',1)
	,('Helena','helena@email.com','123456',2)
	,('Roberto','rob@email.com','3110',2);
INSERT INTO Midias(Nome,DataLancamento,IdCategoria,Sinopse,Duracao,IdTipoMidia,IdPlataforma)
	VALUES('O Rei Leão','18/07/2019',13,'Traído e exilado de seu reino, o leãozinho Simba precisa descobrir como crescer e retomar seu destino como herdeiro real nas planícies da savana africana.','1h 58m',3,1);
INSERT INTO Midias(Nome,DataLancamento,IdCategoria,Sinopse,Duracao,IdTipoMidia,IdPlataforma)
	VALUES('O Justiceiro','18/01/2017',5,'Frank Castle, conhecido em toda a cidade de Nova Iorque como "o Justiceiro" após ter se vingado dos responsáveis pela morte de sua família, revela uma conspiração militar além do que foi feito a ele e sua família.','?49–58 m',4,2);
UPDATE Midias SET Duracao = '49-58m' WHERE IdMidia = 2;
INSERT INTO Favoritos(IdUsuario,IdMidia)
	VALUES(1,2)
	,(4,1)
	,(3,1)
	,(2,2);