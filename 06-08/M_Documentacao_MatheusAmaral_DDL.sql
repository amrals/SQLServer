CREATE DATABASE M_Gufos;
USE M_Gufos;
CREATE TABLE Usuarios
(
	IdUsuario INT IDENTITY PRIMARY KEY NOT NULL
	, Nome VARCHAR(255) NOT NULL
	, Email VARCHAR(255) NOT NULL UNIQUE
	, Senha VARCHAR(255) NOT NULL
	, Permissao VARCHAR(255) NOT NULL
);
CREATE TABLE Categoria
(
	IdCategoria INT IDENTITY PRIMARY KEY NOT NULL
	, Nome VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE Eventos
(
	IdEvento INT IDENTITY PRIMARY KEY NOT NULL
	, Titulo VARCHAR(255) NOT NULL
	, Descricao Text
	, DataEvento DateTime NOT NULL
	, Localizacao VARCHAR(255) NULL
	, Ativo BIT NOT NULL DEFAULT(1)
	, IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);
CREATE TABLE Presencas
(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	, IdEvento INT FOREIGN KEY REFERENCES Eventos(IdEvento)
);