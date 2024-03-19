CREATE TABLE Pai (
ID_Pai SMALLINT PRIMARY KEY,
Nome_Pai VARCHAR(50)
)

CREATE TABLE Filho (
ID_Filho SMALLINT IDENTITY PRIMARY KEY,
Nome_Filho VARCHAR(50),
ID_Pai SMALLINT,
CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
REFERENCES Pai(ID_Pai)
ON DELETE CASCADE --Se a tabela PAI for deletada, o FILHO também será!--
)

SELECT * FROM Filho

SELECT * FROM Pai

INSERT INTO Pai
VALUES (1,'João'), (2,'Mário'), (3,'Renato'), (4,'Emerson'), (5,'André');

INSERT INTO Filho (Nome_Filho, ID_Pai)
VALUES ('João',1), ('Mário',1), ('Renato',3), ('Emerson',4), ('André',3);

select * from Filho, Pai

SELECT Pai.ID_Pai, Pai.Nome_Pai, Filho.ID_Filho, Filho.Nome_Filho
FROM Filho --A busca será feita na tabela filho!--
INNER JOIN Pai --A claúsula INNER JOIN vai buscar dados combinados entre tabelas!--
ON Filho.ID_Pai = Pai.ID_Pai;

DELETE FROM Filho
WHERE Nome_Filho = 'Renato';

SELECT Nome_Pai, Nome_Filho
FROM Filho
INNER JOIN Pai
ON Filho.ID_Pai = Pai.ID_Pai;

DELETE FROM Pai
WHERE Nome_Pai='Renato'


DROP TABLE Filho;
DROP TABLE Pai;

CREATE TABLE Pai (
 ID_Pai SMALLINT PRIMARY KEY,
 Nome_Pai VARCHAR(50)
) 


CREATE TABLE Filho (
 ID_Filho SMALLINT IDENTITY PRIMARY KEY,
 Nome_Filho VARCHAR(50),
 ID_Pai SMALLINT,
 CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
 REFERENCES Pai(ID_Pai)
 ON DELETE SET NULL
 )

 SELECT * FROM Pai, Filho

INSERT INTO Pai
VALUES (1,'João'), (2,'Mário'), (3,'Renato'), (4,'Emerson'), (5,'André');

INSERT INTO Filho (Nome_Filho, ID_Pai)
VALUES ('João',1), ('Mário',1), ('Renato',3), ('Emerson',4), ('André',3);

DELETE FROM Pai
WHERE Nome_Pai = 'Renato';

SELECT * FROM Filho

DROP TABLE Filho;
DROP TABLE Pai;

CREATE TABLE Pai (
 ID_Pai SMALLINT PRIMARY KEY,
 Nome_Pai VARCHAR(50)
)


CREATE TABLE Filho (
 ID_Filho SMALLINT IDENTITY PRIMARY KEY,
 Nome_Filho VARCHAR(50),
 ID_Pai SMALLINT,
 CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
 REFERENCES Pai(ID_Pai)
 ON DELETE NO ACTION
)

SELECT *FROM Pai, Filho

INSERT INTO Pai
VALUES (1,'João'), (2,'Mário'), (3,'Renato'), (4,'Emerson'), (5,'André');

INSERT INTO Filho (Nome_Filho, ID_Pai)
VALUES ('João',1), ('Mário',1), ('Renato',3), ('Emerson',4), ('André',3);
