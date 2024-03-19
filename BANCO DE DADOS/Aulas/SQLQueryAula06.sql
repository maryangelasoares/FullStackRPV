DELETE FROM tbl_pessoas

ROLLBACK --DESFAZ A ALTERAÇÃO NO BANCO!--

SELECT * FROM tbl_pessoas

INSERT INTO tbl_pessoas
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Rodrigo', 'Professor','1977-07-28', 'M', '80.8', '1.80', default),
('Diego', 'Motorista','1960-10-10', 'M', '90.5', '1.90', 'Uruguai'),
('Anderson', 'Advogado','1965-09-10', 'F', '75.8', '1.75', 'Argentina');

COMMIT --CONFIRMA A ALTERAÇÃO!--


