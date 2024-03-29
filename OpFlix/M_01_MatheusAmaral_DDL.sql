CREATE DATABASE M_OpFlix;
USE M_OpFlix;
CREATE TABLE TiposUsuarios(
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,Descicao VARCHAR(255) NOT NULL
);
CREATE TABLE TiposMidias(
	IdTipoMidia INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR(255) NOT NULL
);
CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
);
CREATE TABLE Plataformas(
	IdPlataforma INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
);
CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
	,Email VARCHAR(255) NOT NULL
	,Senha VARCHAR(255) NOT NULL
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios(IdTipoUsuario)
);
CREATE TABLE Midias(
	IdMidia INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
	,DataLancamento VARCHAR(255) NOT NULL
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
	,Sinopse VARCHAR(255) NOT NULL
	,Duracao VARCHAR(255) NOT NULL
	,IdTipoMidia INT FOREIGN KEY REFERENCES TiposMidias(IdTipoMidia)
	,IdPlataforma INT FOREIGN KEY REFERENCES Plataformas(IdPlataforma)
);
CREATE TABLE Favoritos
(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	,IdMidia INT FOREIGN KEY REFERENCES Midias(IdMidia)
);