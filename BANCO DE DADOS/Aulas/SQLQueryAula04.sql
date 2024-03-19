USE Biblioteca;

SELECT Nome_Livro, Data_Pub
FROM tbl_livro
WHERE ID_Livro = 1;

SELECT *
FROM tbl_livro
WHERE ID_Livro = 1;

SELECT ID_Autor, Nome_Autor
FROM tbl_autores
WHERE Sobrenome_Autor = 'Stanek';

SELECT Nome_Livro, Preco_Livro
FROM tbl_livro
WHERE ID_Editora = 3;

SELECT * FROm tbl_livro;

SELECT * FROM tbl_livro
WHERE ID_Livro > 2 AND ID_Autor < 3;

SELECT * FROM tbl_livro
WHERE ID_Livro >= 3 AND ID_Livro < 6;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 OR ID_Autor < 3;

SELECT Nome_Livro, ID_Editora
FROM tbl_livro
WHERE ID_Editora IN(2,5);

SELECT Nome_Livro, ID_Editora
FROM tbl_livro
WHERE ID_Editora NOT IN(2,4);

SELECT Nome_Livro, Id_Editora
FROM tbl_livro
WHERE Id_Editora IN ( 
	SELECT Id_Editora  
	FROM tbl_editoras 
	WHERE Nome_Editora = 'Wiley' OR Nome_Editora = 'Microsoft Press');


USE Testes;

SELECT * FROM tbl_pessoas;

DELETE FROM tbl_pessoas
WHERE codigo = 5;

SELECT * FROM tbl_teste_identidade;

TRUNCATE TABLE tbl_teste_identidade;


USE Biblioteca;

SELECT Nome_Livro 
AS 'Nome do Livro'
FROM tbl_livro;

SELECT Nome_Livro Livro, Preco_Livro 'Preço do Livro'
FROM tbl_livro;

INSERT INTO tbl_Editoras (Nome_Editora)
VALUES 
('Apress'),('Bookman'),
('Bookboon'),('Packtpub'),
('Springer'),('Érica'),
('For Dummies'),('Novatec'),
('Cisco Press'),('Addison-Wesley'),
('Companhia das Letras'),('Artech House'),
('CRC Press'),('Manning'),('Penguin Books'),
('Sage Publishing'),('Publishing');

SELECT * FROM tbl_editoras;

SELECT COUNT(*) 'Nº Autores' 
FROM tbl_autores;

SELECT COUNT(DISTINCT id_autor) 'Nº Autores'
FROM tbl_livro;

SELECT MAX(Preco_Livro) 'Maior Preço'
FROM tbl_livro;

SELECT MIN(Preco_Livro) 'Menor Preço'
FROM tbl_livro;

SELECT MIN(Data_Pub) 'Publicação mais Antiga'
FROM tbl_livro;

SELECT AVG(Preco_Livro) 'Média Preços'
FROM tbl_livro;

SELECT SUM(Preco_Livro) 'Total Preços'
FROM tbl_livro;

SELECT ROUND(52.36956, 2) AS Arredondado;

SELECT Nome_Livro, ROUND(Preco_Livro,1) AS Preço
FROM tbl_livro;

SELECT ROUND(AVG(Preco_Livro), 2) AS 'Preço Médio dos Livros'
FROM tbl_Livro;

-- Floor = Arredonda pra baixo --
SELECT Preco_Livro AS 'Preco Real', FLOOR(Preco_Livro) AS 'Reais sem centavos'
FROM tbl_Livro
WHERE Preco_Livro > 60.00;

SELECT CAST (52.69863 as DECIMAL (5,2)) AS TRUNCADO;

-- Ceiling = Arredonda pra cima forçado --
SELECT Preco_Livro AS 'Preço Real', CEILING(Preco_Livro) AS 'Arredondado para cima'
FROM tbl_Livro
WHERE Preco_Livro > 60.00;
