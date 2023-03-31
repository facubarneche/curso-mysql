USE fbarneche_mysql;

CREATE TABLE IF NOT EXISTS libros(
id INT(6) ZEROFILL  AUTO_INCREMENT,
titulo VARCHAR(40) NOT NULL,
editorial VARCHAR(15),
autor VARCHAR(30) DEFAULT 'Desconocido',
precio DECIMAL (5,2) UNSIGNED DEFAULT 8.25,
cantidad MEDIUMINT ZEROFILL UNSIGNED NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO libros VALUES(NULL,'Programacion', 'Javascript', 'Facundo', 25.2, 50);
INSERT INTO libros VALUES(NULL,'Programacion I', 'Javascript', 'Facundo', 28.2, 50);
INSERT INTO libros VALUES(NULL,'Programacion II', 'Javascript', 'Facundo', 40, 500);
INSERT INTO libros(titulo, editorial, autor, cantidad) VALUES ('JAVA', 'KDK', 'Juan', 30);
INSERT INTO libros(titulo, cantidad) VALUES ('SQL', 200);

SELECT * FROM libros;
DROP TABLE libros;