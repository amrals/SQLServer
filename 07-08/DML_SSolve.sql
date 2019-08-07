USE M_SSolve;

INSERT INTO Clientes(Nome,RazaoSocial,Endereco,CNPJ)
	VALUES('Fábio','Flabin','R. Worth','16.540.010/0001-50')
	,('Rodrigo','Digão','Av. Pagodin','23.898.551/0001-10')
	,('Thaina','Thai','R. João Pires', '08.669.749/0001-38');
SELECT *
	FROM Servicos;
INSERT INTO Funcionarios(Nome,Salario)
	VALUES('Daniel','R$1500')
	,('Cássio','R$3000')
	,('Arthur','R$10000');
INSERT INTO Servicos(IdCliente,Comodo,Descricao,Preco)
	VALUES(2,'Sala','Manutenção na luz','R$80')
	,(3,'Escritório','Manutenção na prateleira','R$100')
	,(1,'Quarto','Manutenção na cama','R$20');
INSERT INTO FuncionarioServico(IdServico,IdFuncionario)
	VALUES(1,2)
		,(2,3)
		,(2,2)
		,(3,1);
SELECT Servicos.IdServico, Clientes.Nome
	FROM Servicos
	JOIN Clientes
	ON Servicos.IdCliente = Clientes.IdCliente;
