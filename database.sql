CREATE TABLE pracownik
(
idPracownika INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(40) NOT NULL, 
nazwisko VARCHAR(60) NOT NULL,
dataUrodzenia DATE 
);

INSERT INTO pracownik(imie,nazwisko,dataUrodzenia)
VALUES ("Michał","Kordian", 20-11-2005),
("Kacper","Słoma", 24-01-2002),
("Kamil","Belka", 01-12-2003);




CREATE TABLE zadanie
(
idZadania int AUTO_INCREMENT PRIMARY KEY,
nazwaProjectu varchar(150) NOT NULL,
prio enum("normalny","wysoki","niski"),
opis text,
pracownik FOREIGN KEY
);

CREATE TABLE project
(
idProjectu int AUTO_INCREMENT PRIMARY KEY,
nazwaProjectu varchar(150),
dataRozpoczecia date,
dataZakonczenia date
);

ALTER TABLE project
ADD menadzerProjectu INT,
ADD FOREIGN KEY (menadzerProjectu)
	REFERENCES pracownik(idPracownika);

INSERT INTO pracownik(nazwaProjectu, dataRozpoczecia, dataZakończenia)
VALUES ("belka", "20-11-26", "22-11-26"),
("ProjectUG", "05-11-26", "10-12-26");

CREATE TABLE sprint
(
idSprintu int AUTO_INCREMENT PRIMARY KEY,
numerSprintu INT NOT NULL CHECK (numerSprintu >= 0),
dataRozpoczecia date,
dataZakonczenia date
);

ALTER TABLE zadanie
ADD sprint int,
ADD FOREIGN KEY (sprint)
	REFERENCES sprint(sprint);

INSERT INTO sprint(numerSprintu, dataRozpoczecia, dataZakonczenia)
VALUES (14, "20-11-26", "20-11-26");

CREATE TABLE statusy
(
idStatusu int AUTO_INCREMENT PRIMARY KEY,
nazwaStatusu varchar(20)
);

INSERT INTO statusy(nazwaStatusu)
VALUES ("jest"),("nie ma"),("bedzie");

CREATE TABLE zadanieHasStatus
(
idZdarzenia int PRIMARY KEY AUTO_INCREMENT,
idZadania int,
idStatusu int,
dataZdarzenia timestamp default current_timestamp,
FOREIGN KEY (idZadania)
	REFERENCES zadania(idZadania),
FOREIGN KEY (idStatusu)
	REFERENCES zadania(idStatusu)
);



DELETE FROM project 
WHERE idProjectu = 1;


DROP TABLE sprint








