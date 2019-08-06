USE M_Gufos;
INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
	VALUES('Administrador','admin@admin.com','123456','Administrador');
INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
	VALUES('Josias Caleb','jc@senai.com','123456','Aluno');
SELECT *
	FROM Usuarios;
INSERT INTO Categorias(Nome)
	VALUES('Jogos')
	,('Meetup')
	,('Futebol');
SELECT *
	FROM Categorias ORDER BY IdCategoria ASC;
INSERT INTO Eventos(Titulo,Descricao,DataEvento,Ativo,Localizacao,IdCategoria)
	VALUES('Meetup'
	,'Bd Relacionais'
	,'2019-08-07T18:30:00',1,'Alameda Barão de Limeira, 539'
	,2);

SELECT *
	FROM Eventos;SELECT *
		FROM Usuarios ORDER BY Nome asc
INSERT INTO Presencas(IdEvento,IdUsuario)
	VALUES(1,2);
SELECT *
	FROM Presencas;
