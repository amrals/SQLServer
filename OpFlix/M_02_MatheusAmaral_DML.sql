USE M_OpFlix;
go
INSERT INTO TiposUsuarios(Descricao)
	VALUES('Administrador')
	,('Comum');
INSERT INTO TiposMidias(Descricao)
	VALUES('Filme')
	,('S�rie');
DELETE FROM TiposMidias WHERE IdTipoMidia = 2;
SELECT *
	FROM Midias;
INSERT INTO Plataformas(Nome)
	VALUES('Cinema')
	,('Netflix');
INSERT INTO Categorias(Nome)
	VALUES('Com�dia?')
	,('Policiais?')
	,('Infantis?')
	,('Aventura')
	,('A��o?')
	,('Suspense?')
	,('Fic��o cient�fica?')
	,('Document�rio')
	,('Com�dia rom�ntica')
	,('Romance')
	,('Terror')
	,('Musical')
	,('Drama')
	,('Guerra');
UPDATE Categorias SET Nome = 'Fic��o cient�fica' WHERE IdCategoria = 7;
INSERT INTO Usuarios(Nome,Email,Senha,IdTipoUsuario)
	VALUES('Erik','erik@email.com','123456',1)
	,('Cassiana','cassiana@email.com','123456',1)
	,('Helena','helena@email.com','123456',2)
	,('Roberto','rob@email.com','3110',2);
INSERT INTO Midias(Nome,DataLancamento,IdCategoria,Sinopse,Duracao,IdTipoMidia,IdPlataforma)
	VALUES('O Rei Le�o','18/07/2019',13,'Tra�do e exilado de seu reino, o le�ozinho Simba precisa descobrir como crescer e retomar seu destino como herdeiro real nas plan�cies da savana africana.','1h 58m',3,1);
INSERT INTO Midias(Nome,DataLancamento,IdCategoria,Sinopse,Duracao,IdTipoMidia,IdPlataforma)
	VALUES('O Justiceiro','18/01/2017',5,'Frank Castle, conhecido em toda a cidade de Nova Iorque como "o Justiceiro" ap�s ter se vingado dos respons�veis pela morte de sua fam�lia, revela uma conspira��o militar al�m do que foi feito a ele e sua fam�lia.','?49�58 m',4,2);
UPDATE Midias SET Duracao = '49-58m' WHERE IdMidia = 2;
INSERT INTO Favoritos(IdUsuario,IdMidia)
	VALUES(1,2)
	,(4,1)
	,(3,1)
	,(2,2);