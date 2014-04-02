-- Creating databases and users
CREATE database DAAManhana;
GRANT ALL PRIVILEGES ON DAAManhana.* to 'DAA'@'localhost' IDENTIFIED BY 'vacio';

create database DAAManhana_test;
GRANT ALL PRIVILEGES ON DAAManhana_test.* to 'daa_test'@'localhost' IDENTIFIED BY 'vacio';

-- Creating tables DAAManhana
	-- articles
CREATE TABLE DAAManhana.articles (
  `discriminator` varchar(31) NOT NULL,
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(200) NOT NULL,
  `releaseDate` datetime NOT NULL,
  PRIMARY KEY (`articleId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
ALTER TABLE DAAManhana.articles AUTO_INCREMENT = 1;

	-- books
CREATE TABLE DAAManhana.books (
  `author` varchar(70) NOT NULL,
  `editionDate` datetime NOT NULL,
  `editorial` varchar(70) NOT NULL,
  `isbn` varchar(70) NOT NULL,
  `pages` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`),
  CONSTRAINT `FK_687t0jgyivxp1fr5mmkhmxabr` FOREIGN KEY (`articleId`) REFERENCES `articles` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE DAAManhana.books AUTO_INCREMENT = 1;
	-- comics
CREATE TABLE DAAManhana.comics (
  `chapter` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`),
  CONSTRAINT `FK_gjjxmoog9j1bdw47kq7ujr5am` FOREIGN KEY (`articleId`) REFERENCES `books` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE DAAManhana.comics AUTO_INCREMENT = 1;

	-- cds
CREATE TABLE DAAManhana.cds (
  `duration` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`),
  CONSTRAINT `FK_sxpkdmaxcdtcb30ddd5h44a39` FOREIGN KEY (`articleId`) REFERENCES `articles` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE DAAManhana.cds AUTO_INCREMENT = 1;

	-- movies
CREATE TABLE DAAManhana.movies (
  `director` varchar(255) DEFAULT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`),
  CONSTRAINT `FK_ef9d413g8e9r7c7rn1sxf1mso` FOREIGN KEY (`articleId`) REFERENCES `articles` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE DAAManhana.movies AUTO_INCREMENT = 1;

	-- users
CREATE TABLE DAAManhana.users (
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Inserting default values for test in browser
	-- movies
insert into articles (articleId, releaseDate, name, description, discriminator) values (1, "1972-03-26 00:34:04", "El padrino", "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", "movie" );
insert into movies (director, articleId) values ("Francis Ford Coppola", 1);

insert into articles (articleId, releaseDate, name, description, discriminator) values (2, "1994-03-26 21:34:23", "Cadena Perpetua", "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", "movie");
insert into movies (director, articleId) values ("Frank Darabont", 2);

insert into articles (articleId, releaseDate, name, description, discriminator) values (3, "1974-03-26 20:40:23", "El padrino. Parte II", "The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.", "movie");
insert into movies (director, articleId) values ("Damian Chapa", 3);

	-- articles
insert into articles (articleId, releaseDate, name, description, discriminator) values (4, "2008-03-26 19:25:12", "El caballero oscuro", "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.", "movie");
insert into articles (articleId, releaseDate, name, description, discriminator) values (5, "1994-05-13 14:27:23", "Cadena Perpetua", "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", "movie");
insert into articles (articleId, releaseDate, name, description, discriminator) values (6, "1994-11-03 11:44:12", "Pulp Fiction", "The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", "movie");
insert into articles (articleId, releaseDate, name, description, discriminator) values (7, "1993-01-26 03:32:43", "12 Hombres sin Piedad", "A dissenting juror in a murder trial slowly manages to convince the others that the case is not as obviously clear as it seemed in court.", "movie");
insert into articles (articleId, releaseDate, name, description, discriminator) values (8, "1957-02-14 18:14:25", "La lista de Schindler", "In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.", "movie");

	-- books
insert into articles (articleId, releaseDate, name, description, discriminator) values (9, "2014-02-14 18:14:25", "EL JUEGO DE RIPPER", "Mi madre todavía está viva, pero la matará el Viernes Santo a medianoche, le advirtió Amanda Martín al inspector jefe y éste no lo puso en duda.", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Isabel Allende", "2014-02-14 18:14:25", "PLAZA & JANES EDITORES", "9788401342547", 480,  9);

insert into articles (articleId, releaseDate, name, description, discriminator) values (10, "2012-02-11 18:14:25", "Divergent Book 1", "In Beatrice Prior’s dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue—Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent).", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Veronica Roth", "2012-02-11 18:14:25", "Katherine Tegen Books", "42343", 487, 10);

insert into articles (articleId, releaseDate, name, description, discriminator) values (11, "2012-05-1 8:12:01", "Divergent Book 2", "One choice can transform you—or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love.", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Veronica Roth", "2012-05-1 8:12:01", "Katherine Tegen Books", "952852842", 544, 11);

	-- cds
insert into articles (articleId, releaseDate, name, description, discriminator) values (12, "2013-11-25 8:12:01", "Frozen", "Music CD from Idina Menzel", "cd");
insert into cds (duration, articleId) values (64, 12);

insert into articles (articleId, releaseDate, name, description, discriminator) values (13, "2010-11-2 12:12:01", "Menudo Es El Fary", "Music CD from El Fary", "cd");
insert into cds (duration, articleId) values (47, 13);

insert into articles (articleId, releaseDate, name, description, discriminator) values (14, "2000-09-26 14:34:01", "Por Pasodobles Por Sevillanas", "Music CD from Manolo Escobar", "cd");
insert into cds (duration, articleId) values (48, 14);

	-- comics
insert into articles (articleId, releaseDate, name, description, discriminator) values (15, "1975-04-30 8:12:01", "Cigars of the Pharoah (The Adventures of Tintin)", "The classic graphic novel. Tintin tries to take a vacation, but while on his cruise ship a mystery unfolds! He meets Dr. Sarcophagus who leads him to the undiscovered tomb of the Pharaoh Kih-Oskh.", "comic");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Herge", "1975-04-30 8:12:01", "Little, Brown Books for Young Readers", "0316358363", 62, 15);
insert into comics (chapter, articleId) values (3, 15);

insert into articles (articleId, releaseDate, name, description, discriminator) values (16, "1984-12-03 8:12:01", "Dragon ball", "A comic masterpiece . . . Dragon Ball's spirit of fun and adventure is unparalleled.", "comic");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Akira Toriyama", "2003-03-12 18:32:31", "VIZ Media LLC; 2nd Edition edition", "1569319200", 192, 16);
insert into comics (chapter, articleId) values (1, 16);

	-- users
insert into users (name) values ("aalopez"), ("alfredo"), ("alfonso"), ("alonso"), ("mgparada"), ("mnceleiro");