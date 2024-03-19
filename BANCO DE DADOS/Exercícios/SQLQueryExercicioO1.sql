CREATE TABLE Pais (
	ID_Pais SMALLINT IDENTITY PRIMARY KEY,
	Nome_Pais VARCHAR (35) NOT NULL,
	Pop_mi DECIMAL (10,2) NOT NULL,
	PIB_tri DECIMAL(10,2) NOT NULL, 
	Expec_vida DECIMAL(5,2) NOT NULL
);

CREATE TABLE Cidade (
	ID_Cidade SMALLINT IDENTITY PRIMARY KEY,
	Nome_Cidade VARCHAR (35) NOT NULL,
	ID_Pais SMALLINT NOT NULL, 
	CONSTRAINT fk_ID_Pais FOREIGN KEY (ID_Pais) REFERENCES Pais(ID_Pais),
	Pop_mi DECIMAL(10,2) NOT NULL,
    Capital_pais VARCHAR(5) NOT NULL
);

INSERT INTO Pais (Nome_Pais, Pop_mi, PIB_tri, Expec_vida)
VALUES
('Canadá', 38 , 1.6 , 77.2),
('México', 129 , 1.1 , 69.1),
('Brasil', 212 , 1.4 , 65.7),
('Estados Unidos', 329 , 20 , 75.7);

SELECT * FROM Pais;

INSERT INTO Cidade (Nome_Cidade, ID_Pais , Pop_mi, Capital_pais)
VALUES
('Washington' , 4 ,	3.3, 'Sim'),
('Monterrey', 2 , 2.0 , 'Não'),
('Brasília', 3 , 3.0 , 'sim'),
('São Paulo', 3 , 12.3 , 'Não'),
('Ottawa', 1 , 0.8 , 'Sim'),
('Cidade do México', 2 , 14.1 , 'Sim'),
('Guadalajara', 2 , 1.5 , 'Não'),
('New York', 4 , 8.8 , 'Não'),
('Toronto', 1 , 2.9 , 'Não');

SELECT * FROM Cidade;