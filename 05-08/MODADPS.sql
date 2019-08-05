CREATE DATABASE M_DPS;
USE M_DPS;
CREATE TABLE Departamentos
(
	IdDepartamento INT IDENTITY PRIMARY KEY
	,Nome VARCHAR(200) NOT NULL
);
CREATE TABLE Habilidades
(
	IdHabilidade INT IDENTITY PRIMARY KEY
	,Nome VARCHAR(200) NOT NULL
);
CREATE TABLE Funcionario
(
	IdFuncionario INT IDENTITY PRIMARY KEY
	,Nome VARCHAR(200) NOT NULL
	,RG VARCHAR(200) NOT NULL
	,DataNascimento VARCHAR(200) NOT NULL
	,VencimentoContrato VARCHAR(200) NOT NULL
);
CREATE TABLE FuncionarioCompleto
(
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionario(IdFuncionario)
	,IdDepartamento INT FOREIGN KEY REFERENCES Departamentos(IdDepartamento)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades(IdHabilidade)
);
INSERT INTO Departamentos(Nome)
	VALUES('Cozinha')
	,('Recepção')
	,('Limpeza');
INSERT INTO Habilidades(Nome)
	VALUES('Organização')
	,('Cooperação')
	,('Interesse');
INSERT INTO Funcionario(Nome,RG,DataNascimento,VencimentoContrato,Salario)
	VALUES('Arthur','89351X','09/02/2012','dez/20','R$2500');
INSERT INTO FuncionarioCompleto(IdFuncionario,IdDepartamento,IdHabilidade)
	VALUES(1,2,2);
SELECT *
	FROM FuncionarioCompleto;
ALTER TABLE Funcionario
	ADD Salario VARCHAR(200);
UPDATE Funcionario SET Salario = 'R$500' WHERE IdFuncionario = 1;
INSERT INTO FuncionarioCompleto(IdFuncionario,IdDepartamento,IdHabilidade)
	VALUES(2,1,1);