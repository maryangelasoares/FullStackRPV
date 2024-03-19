CREATE VIEW vw_LivrosAutores
AS SELECT tbl_Livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor;

SELECT Livro, Autor
FROM vw_LivrosAutores
ORDER BY Autor;

ALTER  VIEW vw_LivrosAutores AS
SELECT tbl_Livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor AS Autor, Preco_Livro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor;

SELECT * FROM vw_LivrosAutores;

INSERT INTO tbl_autores
VALUES
(1, 'Daniel', 'Barret'),
(2, 'Gerald', 'Carter'),
(3, 'Mark', 'Sobell'),
(4, 'William', 'Stanek'),
(5, 'Richard', 'Blum'),
(6, 'Jostein', 'Gaarder'),
(7, 'Umberto', 'Eco'),
(8, 'Neil', 'De Grasse Tyson'),
(9, 'Stephen', 'Hawking'),
(10, 'Stephen', 'Jay Gould'),
(11, 'Charles', 'Darwin'),
(12, 'Alan', 'Turing'),
(13, 'Simon', 'Monk'),
(14, 'Paul', 'Scherz');INSERT INTO tbl_categorias
VALUES
(1, 'Tecnologia'),
(2, 'História'),
(3, 'Literatura'),
(4, 'Astronomia'),
(5, 'Botânica');

SELECT * FROM tbl_autores

SELECT * FROM Tbl_Categorias

CREATE TABLE teste_nulos (
id smallint PRIMARY KEY IDENTITY ,
item varchar(20),
quantidade smallint NULL);
INSERT INTO teste_nulos (item, quantidade)
VALUES ('Pendrive', 5);
INSERT INTO teste_nulos (item, quantidade)
VALUES ( 'Monitor', 7);
INSERT INTO teste_nulos (item, quantidade)
VALUES ('Teclado', 8);

SELECT CONCAT(Nome_autor, ' ', Sobrenome_autor) AS 'Nome Completo'
FROM tbl_autores;

SELECT CONCAT('Eu gosto do livro ', Nome_Livro)
FROM tbl_Livro WHERE ID_livro = 3;

SELECT CONCAT('A quantidade adquirida é ', ' ', quantidade)
FROM teste_nulos
WHERE  item = 'Teclado';