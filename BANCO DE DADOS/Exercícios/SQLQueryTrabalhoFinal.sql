CREATE TABLE tbl_Lojas (
    ID_Loja INT IDENTITY PRIMARY KEY,
    Cidade VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_Produtos (
    ID_Produto INT IDENTITY PRIMARY KEY,
    Produto VARCHAR(255) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Segmento VARCHAR(50) NOT NULL,
    Fabricante VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_Vendedor(
	ID_Vendedor INT PRIMARY KEY,
	Vendedor VARCHAR (50) NOT NULL,
);
	
CREATE TABLE tbl_Vendas (
	ID_Venda INT IDENTITY PRIMARY KEY,
	ID_Loja INT NOT NULL,
	CONSTRAINT fk_id_loja FOREIGN KEY (ID_Loja)
	REFERENCES tbl_Lojas (ID_Loja),
	ID_Vendedor INT NOT NULL,
	CONSTRAINT fk_id_vendedor FOREIGN KEY (ID_Vendedor)
	REFERENCES tbl_Vendedor (ID_Vendedor),
	DataVenda DATE NOT NULL,
	ID_Produto INT NOT NULL,
	CONSTRAINT fk_id_produto FOREIGN KEY (ID_Produto)
	REFERENCES tbl_Produtos (ID_Produto),
	ValorVenda DECIMAL (10,2) NOT NULL,
);

INSERT INTO tbl_lojas(Cidade, Estado) 
VALUES 
('São Paulo', 'São Paulo'),
('Belo Horizonte', 'Minas Gerais'),
('São Paulo', 'São Paulo'),
('Rio de Janeiro', 'Rio de Janeiro'),
('Vitória', 'Espírito Santo'),
('Cascavel', 'Paraná'),
('Salvador', 'Bahia'),
('São Paulo', 'São Paulo'),
('Osasco', 'São Paulo'),
('Campinas', 'São Paulo'),
('Belo Horizonte', 'Minas Gerais'),
('Campos', 'Rio de Janeiro'),
('Rio de Janeiro', 'Rio de Janeiro'),
('Petrópolis', 'Rio de Janeiro');

SELECT * FROM tbl_Lojas;

INSERT INTO tbl_Produtos ( Produto, Categoria, Segmento, Fabricante) 
VALUES
('LG K10 TV Power', 'Celulares', 'Corporativo', 'LG'),
('Geladeira Duplex', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Lavadora 11 Kg', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Notebook Dell 8 GB', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Desktop HP 16 GB', 'Eletrodomésticos', 'Doméstico', 'Electrolux'),
('Micro-Ondas', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Grill', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Forno-Micro-Ondas', 'Eletrodomésticos', 'Doméstico', 'Electrolux'),
('Fritadeira', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Ar Condicionado', 'Eletrodomésticos', 'Doméstico', 'Electrolux'),
('Aspirador', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Impressora Deskjet', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Secadora Vapor', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Samsung Galaxy 8', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Sony Experia XA', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Motorola Moto G5', 'Eletrodomésticos', 'Doméstico', 'Electrolux'),
('Ventilador', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Processador de Alimentos', 'Eletrodomésticos', 'Doméstico', 'Brastemp'),
('Liquidificador', 'Eletrodomésticos', 'Doméstico', 'Electrolux');

SELECT * FROM  tbl_Produtos;

INSERT INTO tbl_Vendedor (ID_Vendedor, Vendedor)
VALUES
(1001, 'Maria Fernandes' ),
(1002, 'André Pereira'),
(1003, 'Mateus Gonçalves'),
(1004, 'Artur Moreira'),
(1005, 'Rodrigo Fagundes'),
(1006, 'Josias Silva'),
(1007, 'Fernando Zambrini'),
(1008, 'Aline Sutter'),
(1009, 'Ana Teixeira');

SELECT * FROM  tbl_Vendedor;

INSERT INTO tbl_Vendas (ID_Loja, ID_Vendedor, DataVenda, ID_Produto, ValorVenda)
VALUES
(1, 1009, '04/10/2012', 1, 679.00),
(2, 1006, '01/01/2012', 2, 832.00),
(3, 1006, '02/02/2012', 3, 790.00),
(4, 1003, '03/03/2012', 4, 765.32),
(5, 1004, '04/04/2012', 5, 459.89),
(6, 1005, '04/05/2012', 6, 590.98),
(7, 1006, '04/06/2012', 7, 1000.91),
(8, 1007, '04/07/2012', 8, 1229.00),
(9, 1003, '04/08/2012', 9, 1300.00),
(10, 1002, '04/09/2012', 10, 1290.00),
(11, 1009, '04/09/2012', 11, 1287.00),
(12, 1006, '04/11/2012', 12, 1651.00),
(13, 1006, '04/11/2012', 13, 1100.00),
(14, 1003, '04/12/2012', 14, 1190.00),
(1, 1004, '04/12/2012', 15, 1190.98),
(2, 1005, '02/01/2013', 16, 877.00),
(3, 1006, '02/02/2013', 17, 982.00),
(4, 1007, '02/03/2013', 18, 872.00),
(5, 1003, '02/04/2013', 19, 799.00),
(6, 1002, '02/05/2013', 1, 899.00),
(7, 1009, '02/06/2013', 2, 799.00),
(8, 1006, '02/07/2013', 3, 987.00),
(9, 1006, '02/08/2013', 4, 699.90),
(10, 1003, '02/09/2013', 5, 789.23),
(11, 1004, '02/10/2013', 6, 789.34),
(12, 1005, '02/11/2013', 7, 764.20),
(13, 1006, '02/12/2013', 8, 1245.90),
(14, 1007, '02/01/2013', 9, 1345.87),
(1, 1003, '02/02/2013', 10, 1234.12),
(2, 1002, '02/03/2013', 11, 1245.90),
(3, 1001, '02/04/2013', 12, 1345.87),
(4, 1001, '02/05/2013', 13, 1234.12),
(5, 1001, '02/06/2013', 14, 1245.90),
(6, 1002, '02/07/2013', 15, 1345.87),
(7, 1003, '02/08/2013', 16, 1234.12),
(8, 1004, '02/09/2013', 17, 1245.90),
(9, 1005, '02/10/2013', 18, 1345.87),
(10, 1006, '02/11/2013', 19, 1234.12),
(11, 1007, '02/12/2013', 1, 1245.90),
(12, 1003, '03/01/2013', 2, 1345.87),
(13, 1002, '03/02/2013', 3, 1234.12),
(14, 1001, '03/03/2013', 4, 1245.90),
(1, 1001, '03/04/2013', 5, 1345.87),
(2, 1001, '03/05/2013', 6, 1234.12),
(3, 1002, '03/06/2013', 7, 1245.90),
(4, 1003, '03/07/2013', 8, 1345.87),
(5, 1004, '03/08/2013', 9, 1234.12),
(6, 1005, '03/09/2013', 10, 1245.90),
(7, 1006, '03/10/2013', 11, 1345.87),
(8, 1007, '03/11/2013', 12, 1234.12);

SELECT * FROM tbl_Vendas;

UPDATE tbl_Vendas
SET DataVenda = '12/11/2013', ValorVenda = 2391.50
WHERE ID_Venda = 1;

UPDATE tbl_Vendas
SET DataVenda = '16/12/2012', ValorVenda = 1550.30
WHERE ID_Venda =7;

UPDATE tbl_Vendas
SET DataVenda = '23/11/2013', ValorVenda = 932.32
WHERE ID_Venda =7;

SELECT * FROM tbl_Vendas;

DELETE FROM tbl_Vendas
WHERE ID_Venda = 20;

SELECT 
    a.ID_Venda,
    b.Cidade,
    b.Estado,
    c.Vendedor,
    d.Produto,
    d.Fabricante,
    a.ValorVenda
FROM 
    tbl_Vendas a
INNER JOIN 
    tbl_lojas b ON a.ID_Loja = b.ID_Loja
INNER JOIN 
    tbl_Vendedor c ON a.ID_Vendedor = c.ID_Vendedor
INNER JOIN 
    tbl_Produtos d ON a.ID_Produto = d.ID_Produto;
