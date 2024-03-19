USE Biblioteca;

SELECT * FROM tbl_livro
WHERE ID_Livro = 2;

UPDATE tbl_Livro
SET Nome_Livro = 'SSH, o Shell Seguro'
WHERE ID_LIVRO = 2;

UPDATE tbl_Livro
SET Nome_Livro = 'SSH', Preco_Livro = 58.3
WHERE ID_LIVRO = 2;

UPDATE tbl_livro
SET Preco_Livro = 47.20
WHERE ISBN13 = '9780735640610';

SELECT * FROM tbl_livro
WHERE ISBN13 = '9780735640610';

SELECT * FROM tbl_Livro
WHERE Data_Pub BETWEEN '20040517' AND '20110517';

SELECT * FROM tbl_Livro
WHERE ID_Livro BETWEEN 2 AND 7;

SELECT Nome_Livro AS Livro, Preco_Livro AS Preço
FROM tbl_Livro
WHERE Preco_Livro BETWEEN 40.00 AND 60.00;

SELECT * FROM tbl_livro
WHERE Nome_Livro LIKE 'F%';

SELECT * FROM tbl_livro
WHERE Nome_Livro NOT LIKE 'S%';

SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro LIKE '_I%';

SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro LIKE '__I%';

SELECT Nome_Livro AS Livro, Preco_Livro AS Valor
FROM tbl_livro
WHERE Nome_Livro NOT LIKE 'F%'
AND Preco_Livro > 60.00;

USE Testes;

INSERT INTO tbl_Vendas2 (ID, Nome_Vendedor, Quantidade, Produto, Cidade)
  VALUES
(10,'Jorge',1400,'Mouse','São Paulo'),
(12,'Tatiana',1220,'Teclado','São Paulo'),
(14,'Ana',1700,'Teclado','Rio de Janeiro'),
(15,'Rita',2120,'Webcam','Recife'),
(18,'Marcos',980,'Mouse','São Paulo'),
(19,'Carla',1120,'Webcam','Recife'),
(22,'Roberto',3145,'Mouse','São Paulo');

SELECT * FROm tbl_Vendas2;

SELECT SUM(Quantidade) As TotalMouses
FROM tbl_Vendas2
WHERE Produto = 'Mouse';

SELECT Cidade, COUNT(*) As Total
FROM tbl_Vendas2
GROUP BY CIDADE;

SELECT Cidade, SUM(Quantidade) As Total
FROM tbl_Vendas2
GROUP BY Cidade
HAVING SUM(Quantidade) < 2500;

SELECT Cidade, SUM(Quantidade) As TotalTeclados
FROM tbl_Vendas2
WHERE Produto = 'Teclado'
GROUP BY Cidade
HAVING SUM(Quantidade) < 1500;

USE Biblioteca;

SELECT TOP(3) Nome_Livro, Preco_Livro
FROM Tbl_Livro;

SELECT TOP (10) PERCENT Nome_Livro
FROM tbl_livro ORDER BY Nome_Livro;

SELECT TOP (3) Nome_Livro, Preco_Livro
FROM tbl_livro ORDER BY Preco_Livro DESC;
