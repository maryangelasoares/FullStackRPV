CREATE TABLE tbl_livro (
ID_Livro SMALLINT IDENTITY PRIMARY KEY,
Nome_Livro VARCHAR(70) NOT NULL,
ISBN13 CHAR(13),
ISBN10 CHAR(10),
ID_Categoria SMALLINT,
ID_Autor SMALLINT NOT NULL,
ID_Editora SMALLINT,
Data_Pub DATE NOT NULL,
Preco_Livro DECIMAL(6,2) NOT NULL
);

CREATE TABLE tbl_autores (
ID_Autor SMALLINT,
Nome_Autor VARCHAR(40) NOT NULL,
Sobrenome_Autor VARCHAR(60)
CONSTRAINT pk_ID_Autor PRIMARY KEY (ID_Autor)
);

CREATE TABLE tbl_categorias (
ID_Categoria SMALLINT PRIMARY KEY,
Categoria VARCHAR(30) NOT NULL
);

CREATE TABLE tbl_editoras (
ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR(50) NOT NULL
);

COMMIT

USE Testes
SELECT * FROM Filho

CREATE TABLE tbl_teste_identidade (
ID_Teste SMALLINT PRIMARY KEY IDENTITY(10,2),
valor SMALLINT NOT NULL
);

INSERT INTO tbl_teste_identidade (valor) VALUES (10);
INSERT INTO tbl_teste_identidade (valor) VALUES (20);
INSERT INTO tbl_teste_identidade (valor) VALUES (30);
INSERT INTO tbl_teste_identidade (valor) VALUES (40);

SELECT * FROM tbl_teste_identidade

SELECT IDENT_CURRENT('tbl_teste_identidade');

DBCC CHECKIDENT (tbl_teste_identidade, RESEED, 149);

INSERT INTO tbl_teste_identidade (valor) VALUES (70);
INSERT INTO tbl_teste_identidade (valor) VALUES (80);
INSERT INTO tbl_teste_identidade (valor) VALUES (90);

create table tbl_pessoas (
codigo smallint IDENTITY primary key,
nome varchar(30) not null,
nascimento date,
sexo CHAR(1),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil'
);

sp_help tbl_pessoas

ALTER TABLE tbl_pessoas
ADD profissao VARCHAR(10);

ALTER TABLE tbl_pessoas
DROP COLUMN profissao;

ALTER TABLE tbl_pessoas
ALTER COLUMN profissao VARCHAR(30);

USE Biblioteca

ALTER TABLE tbl_livro
ADD CONSTRAINT fk_ID_Autor
FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores (ID_autor)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE tbl_Livro
ADD CONSTRAINT fk_id_editora
FOREIGN KEY (ID_editora)
REFERENCES tbl_editoras (ID_editora)
ON DELETE CASCADE
ON UPDATE CASCADE;

sp_help tbl_Livro

ALTER TABLE tbl_Livro
ADD CONSTRAINT fk_id_categoria
FOREIGN KEY (ID_Categoria)
REFERENCES tbl_categorias (ID_Categoria)
ON DELETE CASCADE
ON UPDATE CASCADE;

SELECT * FROM tbl_livro

USE Testes

INSERT INTO tbl_pessoas
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Ana','Professor','1985-02-01','F', 78.5, 1.80, 'Brasil');

SELECT * FROM tbl_pessoas

CREATE TRIGGER Teste_trigger_after
ON tbl_editoras
AFTER INSERT
AS
PRINT 'Novos dados inseridos na tabela Editoras'

INSERT INTO tbl_editoras
VALUES ('Editora10')

CREATE TRIGGER trigger_after
ON Tbl_editoras
AFTER INSERT
AS
INSERT INTO tbl_autores VALUES (25,'José','da Silva')
INSERT INTO tbl_livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro, ID_Categoria, ID_Autor, ID_Editora)
VALUES('Livro1','9781118983843', '111898384X', '20150109', 68.35, 1, 5, 4)

INSERT INTO tbl_editoras
VALUES ('Editora11')
SELECT * FROM tbl_autores

CREATE TRIGGER Teste_trigger_insteadof
ON tbl_autores
INSTEAD OF INSERT
AS
PRINT 'Olá mundo! Não inseri o registro desta vez'

SELECT * FROM Tbl_livro

INSERT INTO tbl_autores
VALUES (26, 'Joao', 'Moura')

ALTER TABLE tbl_editoras
DISABLE TRIGGER trigger_after

EXEC sp_helptrigger @tabname=tbl_editoras

USE Biblioteca
SELECT *
FROM sys.triggers
WHERE  IS_disabled = 0 OR IS_disabled = 1

CREATE TRIGGER Trigger_after_autores
ON Tbl_autores
AFTER INSERT, UPDATE
AS
IF UPDATE(Nome_autor)
	BEGIN 
	PRINT 'O nome do autor foi alterado'
	END
ELSE
	BEGIN 
	PRINT 'O nome do autor não foi alterado'
	END

UPDATE tbl_autores
SET Nome_Autor='Joao'
WHERE ID_Autor=10

EXEC sp_configure 'Nested Triggers', 1
RECONFIGURE

ALTER DATABASE BIBLIOTECA
SET RECURSIVE_TRIGGERS ON