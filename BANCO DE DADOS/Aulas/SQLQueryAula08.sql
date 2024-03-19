USE TESTES

CREATE TABLE CAIXA
(
    DATA            DATE,
    SALDO_INICIAL   DECIMAL(10,2),
    SALDO_FINAL     DECIMAL(10,2)
)
GO

--------------------------------
--- https://www.devmedia.com.br/triggers-no-sql-server-teoria-e-pratica-aplicada-em-uma-situacao-real/28194#:~:text=Exemplo%20pr%C3%A1tico%20de%20Triggers%20no%20SQL%20Server&text=Por%20l%C3%B3gica%2C%20o%20saldo%20final,quando%20uma%20venda%20for%20inserida.&text=Nesse%20trigger%20utilizamos%20uma%20tabela%20tempor%C3%A1ria%20chamada%20INSERTED.
--- https://www.sqlservertutorial.net/sql-server-system-functions/convert-DATE-to-string/

INSERT INTO CAIXA
VALUES ('19/12/2023', 100, 100)
GO

SELECT * FROM CAIXA


CREATE TABLE VENDAS
(
    DATA    DATE,
    CODIGO  INT,
    VALOR   DECIMAL(10,2)
)
GO

-------------------------------------



CREATE TRIGGER TGR_VENDAS_AI
ON VENDAS
FOR INSERT
AS
BEGIN
    DECLARE
    @VALOR  DECIMAL(10,2),
    @DATA   DATE,
	@SALDO_FINAL DECIMAL(10,2)

    SELECT @DATA = DATA, @VALOR = VALOR FROM INSERTED

    UPDATE CAIXA SET SALDO_FINAL = SALDO_FINAL + @VALOR
    WHERE DATA = @DATA
SELECT @SALDO_FINAL = SALDO_FINAL FROM CAIXA


	IF @SALDO_FINAL>130
BEGIN
PRINT 'Estoque de Ideal'
END
END
GO

------------------------------------

CREATE TRIGGER TGR_VENDAS_AD
ON VENDAS
FOR DELETE
AS
BEGIN
    DECLARE
    @VALOR  DECIMAL(10,2),
    @DATA   DATE,
	@SALDO_FINAL DECIMAL(10,2)
    
	SELECT @DATA = DATA, @VALOR = VALOR FROM DELETED

    UPDATE CAIXA SET SALDO_FINAL = SALDO_FINAL - @VALOR
    WHERE DATA = @DATA
  SELECT @SALDO_FINAL = SALDO_FINAL FROM CAIXA


	IF @SALDO_FINAL<110
BEGIN
PRINT 'Estoque de segurança'
END
END
GO

SELECT * FROM CAIXA

SELECT * FROM VENDAS


INSERT INTO VENDAS
VALUES ('19/12/2023', 1, 10)

INSERT INTO VENDAS
VALUES ('19/12/2023', 2, 30)

INSERT INTO VENDAS
VALUES ('19/12/2023', 3, 10)


DELETE FROM VENDAS 
WHERE CODIGO =1

CREATE TRIGGER TGR_TESTE
ON TBL_LIVRO
FOR INSERT
AS
BEGIN
    DECLARE
    @VALOR  DECIMAL(10,2),
    @COD   INT
SELECT @COD = ID_Livro, @valor = Preco_Livro FROM tbl_livro
IF @valor>60
    UPDATE TBL_LIVRO SET PRECO_LIVRO = @valor * 0.90
    WHERE ID_Livro = @COD
ELSE
 UPDATE TBL_LIVRO SET PRECO_LIVRO = @valor * 0.95
    WHERE ID_Livro = @COD
END

INSERT INTO tbl_livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro, ID_Categoria, ID_Autor, ID_Editora)
VALUES('Narnia','9781118983888', '111898777X', '20150109', 100, 1, 5, 4)

INSERT INTO tbl_livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro, ID_Categoria, ID_Autor, ID_Editora)
VALUES('Revista do Chaves','9781118983222', '111898333X', '20150109', 10, 1, 5, 4)

SELECT * FROM tbl_livro