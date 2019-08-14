USE M_OpFlix;
SELECT *
	FROM Usuarios;
GO

CREATE PROCEDURE SUWP ---Search User Without Password
@CampoBusca VARCHAR(100)
AS
SELECT Nome
FROM Usuarios
WHERE Nome = @CampoBusca;

GO

EXECUTE SUWP 'Erik';

GO

CREATE PROCEDURE SMPC @CampoBusca INT
AS
SELECT COUNT(IdMidia) FROM Midias
WHERE IdCategoria = @CampoBusca

GO
EXECUTE SMPC @CampoBusca = 7

SELECT Midias.Nome ,Midias.IdCategoria, Categorias.Nome
	FROM Midias
	JOIN Categorias
		ON Midias.IdCategoria = Categorias.IdCategoria;
GO
SELECT *
	FROM Categorias;
SELECT *
	FROM Favoritos;
SELECT *
	FROM Midias;
SELECT *
	FROM Plataformas;
SELECT *
	FROM TiposMidias;
SELECT *
	FROM TiposUsuarios;
SELECT *
	FROM Usuarios;
SELECT LEN(Midias.Sinopse)
	FROM Midias;
