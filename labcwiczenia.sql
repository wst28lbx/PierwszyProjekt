CREATE TABLE pracownik (
    id_pracownika INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(40) NOT NULL,
    nazwisko VARCHAR(60) NOT NULL,
    data_urodzenia DATE NOT NULL
);

INSERT INTO pracownik (imie, nazwisko, data_urodzenia)
VALUES
	('Jan', 'Kowalski', '2007-03-12'),
    ('Piotr', 'Szczeciniak', '2010-07-23'),
    ('Krzysztof', 'Konop', '2002-12-29');
    
    SELECT * FROM pracownik;
    
    UPDATE pracownik
SET data_urodzenia = '2001-06-20'
WHERE id_pracownika = 1;

SELECT * FROM pracownik; 

CREATE TABLE zadania (
	id_zadania INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_zadania VARCHAR(150) NOT NULL,
    priorytet ENUM('normalny', 'wysoki', 'niski') NOT NULL,
    opis TEXT NULL,
     pracownik INT NULL,
	 FOREIGN KEY (pracownik)
        REFERENCES pracownik(id_pracownika)
        ON DELETE SET NULL
);

    
    