CREATE TABLE tbl_cadfun (
	CodFun SMALLINT IDENTITY PRIMARY KEY,
	Nome VARCHAR (40) NOT NULL,
	Depto CHAR (2),
	Funcao CHAR (20),
	Salario DECIMAL (10,2)
);

ALTER TABLE tbl_cadfun
ALTER COLUMN Funcao VARCHAR (30);

INSERT INTO tbl_cadfun (Nome, Depto, Funcao, Salario)
VALUES
('Marcos Henrique', '2', 'Gerente', 8500.00),
('Aparecida Da Silva', '3', 'Secretária', 1350.00),
('Carlos Roberto', '3', 'Vendedor', 1530.00),
('Bruna Marquezine', '4', 'Analista', 3500.00),
('Adriano Dos Reis', '2', 'Vendedor', 1530.00),
('Cauã Rocha', '3', 'Vendedor', 1530.00),
('Liz De Castro', '4', 'Vendedor', 1530.00),
('Gustavo Ferreira', '1', 'Secretária', 1350.00),
('Martha Nunes', '2', 'Analista', 3500.00),
('Kaique Cardoso', '3', 'Estagiário', 1200.00),
('Thiago Mendes', '4', 'Vendedor', 1530.00),
('Isabelly Fonseca', '1', 'Vendedor', 1730.00),
('Alana Cardoso', '2', 'Vendedor', 1530.00),
('Esther De Carvalho', '3', 'Secretária', 1350.00),
('Michael Nunes', '4', 'Analista', 3500.00),
('Júlia Pinto', '1', 'Estagiário', 1200.00),
('Bárbara Fernandes', '2', 'Vendedor', 1530.00),
('Luis Neves', '3', 'Vendedor', 1530.00),
('Théo Teixeira', '4', 'Vendedor', 1530.00);

SELECT * FROM tbl_Cadfun;

SELECT Nome, Funcao
FROM tbl_cadfun;

SELECT Nome, Funcao FROM tbl_cadfun
WHERE Depto = '1';

SELECT Nome, Funcao FROM tbl_cadfun
WHERE Depto = '2';

SELECT Nome, Funcao FROM tbl_cadfun
WHERE Depto = '3';

SELECT Nome, Funcao FROM tbl_cadfun
WHERE Depto = '4';

SELECT Nome, Funcao, Salario 
FROM tbl_cadfun
WHERE Salario > 1500;

SELECT Nome, Funcao, Salario 
FROM tbl_cadfun
WHERE Salario < 1500;

SELECT Nome, Funcao, Salario
FROM tbl_cadfun
WHERE Salario > 1500 AND Depto = '1';

SELECT Nome, Funcao, Salario
FROM tbl_cadfun
WHERE Salario > 1500 AND Depto = '2';

SELECT * FROM tbl_cadfun
ORDER BY salario ASC;

SELECT * FROM tbl_cadfun
ORDER BY Salario DESC;

DELETE FROM tbl_cadfun
WHERE CodFun IN (17, 18, 20);

ALTER TABLE tbl_cadfun
ADD Admissao DATE;
UPDATE tbl_cadfun
SET Admissao = DATEADD (DAY, ABS (CHECKSUM (NEWID ( ) ) ) % 4018, '2010-01-01');

SELECT * FROM tbl_cadfun;

UPDATE tbl_cadfun
SET Salario = 5200.00
WHERE CodFun = 7;

UPDATE tbl_cadfun
SET Depto = 2 
WHERE Nome = 'Bruna Marquezine';

UPDATE tbl_cadfun
SET Funcao = 'Assistente'
WHERE CodFun = 5;

UPDATE tbl_cadfun
SET Salario = Salario * 1.10;

SELECT MAX(Salario) AS 'Maior Salário'
FROM tbl_cadfun;

SELECT MIN (Salario) AS 'Maior Salário' 
FROM tbl_cadfun;

SELECT SUM (Salario) AS 'O Total de Salários da Empresa' 
FROM tbl_cadfun;

SELECT AVG (Salario) AS	 'Media Salarial'
FROM tbl_cadfun;

SELECT Depto, MAX (Salario) AS 'Maior Salário'
FROM tbl_cadfun
GROUP BY Depto;

SELECT Depto, MIN (Salario) AS 'Menor Salário'
FROM tbl_cadfun
GROUP BY Depto;

SELECT Depto, SUM (Salario) AS 'Total Salário'
FROM tbl_cadfun
GROUP BY Depto;

SELECT Depto, AVG (Salario) AS 'Media Salarial'
FROM tbl_cadfun
GROUP BY Depto;

SELECT * FROM tbl_cadfun
WHERE Nome LIKE 'B%';
