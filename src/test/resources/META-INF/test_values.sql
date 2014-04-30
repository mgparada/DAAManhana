-- Insert articles and movies --
insert into articles (releaseDate, name, description, discriminator, image) values ("1972-03-26 00:34:04", "El padrino", "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", "movie", "img/articles/elpadrino.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Francis Ford Coppola", 1, "United States", 175, "English", "Paramount Pictures / Albert S. Ruddy Production");
insert into actors (Movie_articleId, actors) values (1, "Marlon Brando");
insert into actors (Movie_articleId, actors) values (1, "Al Pacino");
insert into actors (Movie_articleId, actors) values (1, "James Caan");



insert into articles (releaseDate, name, description, discriminator, image) values ("1994-03-26 21:34:23", "Cadena Perpetua", "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", "movie", "img/articles/cadenaperpetua.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Frank Darabont", 2, "United States", 142, "English", "Columbia Pictures / Castle Rock Entertainment");
insert into movies (director, articleId, country, duration, language, producer) values ("Francis Ford Coppola", 1, "United States", 175, "English", "Paramount Pictures / Albert S. Ruddy Production");
insert into actors (Movie_articleId, actors) values (2, "Tim Robbins");
insert into actors (Movie_articleId, actors) values (2, "Morgan Freeman");

insert into articles (releaseDate, name, description, discriminator, image) values ("1974-03-26 20:40:23", "El padrino. Parte II", "The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.", "movie");
insert into movies (director, articleId, country, duration, language, producer) values ("Damian Chapa", 3);

insert into articles (releaseDate, name, description, discriminator, image) values ("1976-03-26 20:40:23", "Rocky", "Rocky Balboa es un desconocido boxeador a quien se le ofrece la posibilidad de pelear por el título mundial de los pesos pesados. Con una gran fuerza de voluntad, Rocky se prepara concienzudamente para el combate y también para los cambios que acabarán produciéndose en su vida.", "movie","img/articles/elpadrino.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("John G. Avildsen", 4, "Estados Unidos",119,"Inglés","United Artist");

insert into articles (releaseDate, name, description, discriminator, image) values ("1994-03-26 20:40:23", "Forrest Gump", "Forrest Gump (Tom Hanks) es un chico que sufre un cierto retraso mental. A pesar de todo, gracias a su tenacidad y a su buen corazón será protagonista de acontecimientos cruciales de su país. Jenny, su gran amor desde la infancia, será la persona más importante de su vida.", "movie","img/articles/forestgump.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Robert Zemeckis", 5,"Estados Unidos",142,"Inglés", "Paramount pictures");

insert into articles (releaseDate, name, description, discriminator, image) values ("2003-03-26 20:40:23", "Big Fish", "William Bloom (Billy Crudup) no tiene muy buena relación con su padre (Albert Finney), pero tras enterarse de que padece una enfermedad terminal, regresa a su hogar para estar a su lado en sus últimos momentos. Una vez más, William se verá obligado a escucharlo mientras cuenta las interminables historias de su juventud. Pero, en esta ocasión, tratará de averiguar cosas que le permitan conocer mejor a su padre, aunque para ello tendrá que separar claramente realidad y fantasía, elementos que aparecen siempre mezclados en los relatos de su progenitor.", "movie","img/articles/bigfish.jpg");
insert into movies (director, articleId, country, duration, language, producerd) values ("Tim Burton", 6,"Estados Unidos",126,"Inglés","Columbia Pictures" );

insert into articles (releaseDate, name, description, discriminator, image) values ("2001-03-26 00:34:04", "El señor de los anillos: La comunidad del anillo", "En la Tierra Media, el Señor Oscuro Saurón ordenó a los Elfos que forjaran los Grandes Anillos de Poder. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Pero Saurón también forjó, en secreto, el Anillo Único, que tiene el poder de esclavizar toda la Tierra Media. Con la ayuda de sus amigos y de valientes aliados, el joven hobbit Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el malvado Sauron ordena la persecución del grupo, compuesto por Frodo y sus leales amigos hobbits, un mago, un hombre, un elfo y un enano. La misión es casi suicida pero necesaria, pues si Sauron con su ejército de orcos lograra recuperar el Anillo, sería el final de la Tierra Media.", "movie","img/articles/elsenordelosanillos.jpg" );
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 7,"Estados Unidos",180,"Inglés","New Line Cinema/Wingnut Films");

insert into articles (releaseDate, name, description, discriminator, image) values ("2002-03-26 20:40:23", "El señor de los anillos: Las dos torres", "Tras la disolución de la Compañía del Anillo, Frodo y su fiel amigo Sam se dirigen hacia Mordor para destruir el Anillo Único y acabar con el poder de Sauron. Mientras, y tras la dura batalla contra los orcos donde cayó Boromir, el hombre Aragorn, el elfo Legolas y el enano Gimli intentan rescatar a los medianos Merry y Pipin, secuestrados por los orcos de Mordor. Por su parte, Saurón y el traidor Sarumán continúan con sus planes en Mordor, a la espera de la guerra contra las razas libres de la Tierra Media.", "movie","img/articles/elsenordelosanillos2.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 8,"Estados Unidos",179,"Inglés","Coprodcción USA-Nueva Zelanda; New Line Cinema");

insert into articles (releaseDate, name, description, discriminator, image) values ("2003-03-26 20:40:23", "El señor de los anillos: El retorno de rey", "Las fuerzas de Saruman han sido destruidas, y su fortaleza sitiada. Ha llegado el momento de decidir el destino de la Tierra Media, y, por primera vez, parece que hay una pequeña esperanza. El interés del señor oscuro Sauron se centra ahora en Gondor, el último reducto de los hombres, cuyo trono será reclamado por Aragorn. Sauron se dispone a lanzar un ataque decisivo contra Gondor. Mientras tanto, Frodo y Sam continuan su camino hacia Mordor, con la esperanza de llegar al Monte del Destino.", "movie","img/articles/elsenordelosanillos3.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 9,"Estados Unidos",201,"Inglés","Coprodcción USA-Nueva Zelanda; New Line Cinema");

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-26 20:40:23", "El Hobbit: Un viaje inesperado", "Precuela de la trilogía El Señor de los Anillos, obra de J.R.R. Tolkien. En compañía del mago Gandalf y de trece enanos, el hobbit Bilbo Bolsón emprende un viaje a través del país de los elfos y los bosques de los trolls, desde las mazmorras de los orcos hasta la Montaña Solitaria, donde el dragón Smaug esconde el tesoro de los Enanos. Finalmente, en las profundidades de la Tierra, encuentra el Anillo Único, hipnótico objeto que será posteriormente causa de tantas sangrientas batallas en la Tierra Media.", "movie","img/articles/elhobbit.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 10,"Estados Unidos",169,"Inglés", "Coproducción USA-Nueva Zelanda; Warner Bros. Pictures/MGM/New Line Cinema/Wingnut Films");

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-03-26 20:40:23", "El Hobbit: La desolación de Smaug", "El Hobbit: La Desolación de Smaug continua la aventura de Bilbo Bolsón en su viaje con el mago Gandalf y trece enanos liderados por Thorin Escudo de Roble en una búsqueda épica para reclamar el reino enano de Erebor. En su camino toparán con multitud de peligros y harán frente al temible dragón Smaug. ", "movie","img/articles/elhobbit2.jpg");
insert into movies ((director, articleId, country, duration, language, producer) values ("Peter Jackson", 11,"Estados Unidos",160,"Inglés","MGM/New Line Cinema/Wingnut Films");

insert into articles (releaseDate, name, description, discriminator, image) values ("1999-03-26 20:40:23", "La guerra de las galaxias. Episodio I: La amenaza fantasma", "Ambientada treinta años antes que La guerra de las galaxias (1977), muestra la infancia de Darth Vader, el pasado de Obi-Wan Kenobi y el resurgimiento de los Sith, los caballeros Jedi dominados por el Lado Oscuro. La Federación de Comercio ha bloqueado el pequeño planeta de Naboo, gobernado por la joven Reina Amidala; se trata de un plan ideado por Sith Darth Sidious, que, manteniéndose en el anonimato, dirige a los neimoidianos, que están al mando de la Federación. El Jedi Qui-Gon Jinn y su aprendiz Obi-Wan Kenobi convencen a Amidala para que vaya a Coruscant, la capital de la República y sede del Consejo Jedi, e trate de neutralizar esta amenaza. Pero, al intentar esquivar el bloqueo, la nave real resulta averiada, viéndose así obligada la tripulación a aterrizar en el desértico y remoto planeta de Tatooine...", "movie","img/articles/starwarsepisodio1.jpg");
insert into movies ((director, articleId, country, duration, language, producer) values ("George Lucas", 12,"Estados Unidos",131,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

insert into articles (releaseDate, name, description, discriminator, image) values ("2002-03-26 20:40:23", "La guerra de las galaxias. Episodio II: El ataque de los clones", "Corren tenebrosos tiempos para la República, que continúa envuelta en luchas y sumida en el caos. Un movimiento separatista, formado por centenares de planetas y poderosas alianzas encabezadas por el misterioso conde Dooku, amenaza la galaxia. Ni siquiera los Jedi parecen capaces de conjurar el peligro. Este movimiento provoca el estallido de las guerras clones, que representa el principio del fin de la República. Para allanar el camino, los separatistas intentan asesinar a la senadora Padme Amidala. Para evitar futuros atentados, su seguridad es encomendada a dos caballeros Jedi...", "movie","img/articles/starwarsepisodio2.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 13,"Estados Unidos",132,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

insert into articles (releaseDate, name, description, discriminator, image) values ("2005-03-26 20:40:23", "La guerra de las galaxias. Episodio III: La venganza de los Sith", "Último capítulo de la saga de Star Wars, en el que Anakin Skywalker definitivamente se pasa al lado oscuro. En el Episodio III aparece el General Grievous, un ser implacable mitad-alien mitad-robot, el líder del ejército separatista Droid. Los Sith son los amos del lado oscuro de la Fuerza y los enemigos de los Jedi. Ellos fueron prácticamente exterminados por los Jedi hace mil años, pero la orden del mal sobrevivió en la clandestinidad. ", "movie","img/articles/starwarsepisodio3.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 14,"Estados Unidos",140,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

insert into articles (releaseDate, name, description, discriminator, image) values ("1977-03-26 20:40:23", "La guerra de las galaxias. Episodio IV: Una nueva esperanza", "La princesa Leia, líder del movimiento rebelde que desea reinstaurar la República en la galaxia en los tiempos ominosos del Imperio, es capturada por las Fuerzas Imperiales, capitaneadas por el implacable Darth Vader, el sirviente más fiel del Emperador. El intrépido y joven Luke Skywalker, ayudado por Han Solo, capitán de la nave espacial El Halcón Milenario, y los androides, R2D2 y C3PO, serán los encargados de luchar contra el enemigo y e intentar rescatar a la princesa para volver a instaurar la justicia en el seno de la galaxia.", "movie","img/articles/starwarsepisodio4.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 15,"Estados Unidos",121,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

insert into articles (releaseDate, name, description, discriminator, image) values ("1980-03-26 20:40:23", "La guerra de las galaxias. Episodio V: Una nueva esperanza", "Tras un ataque sorpresa de las tropas imperiales a las bases camufladas de la alianza rebelde, Luke Skywalker, en compañía de R2D2, parte hacia el planeta Dagobah en busca de Yoda, el último maestro Jedi, para que le enseñe los secretos de la Fuerza. Mientras, Han Solo, la princesa Leia, Chewbacca, y C3PO esquivan a las fuerzas imperiales y piden refugio al antiguo propietario del Halcón Milenario, Lando Calrissian, en la ciudad minera de Bespin, donde les prepara una trampa urdida por Darth Vader. ", "movie","img/articles/starwarsepisodio5.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 16,"Estados Unidos",124,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1983-03-26 20:40:23", "La guerra de las galaxias. Episodio VI: El retorno del Jedi", "Para ir a Tatooine y liberar a Han Solo, Luke Skywalker y la princesa Leia deben infiltrarse en la peligrosa guarida de Jabba the Hutt, el gángster más temido de la galaxia. Una vez reunidos, el equipo recluta a tribus de Ewoks para combatir a las fuerzas imperiales en los bosques de la luna de Endor. Mientras tanto, el Emperador y Darth Vader conspiran para atraer a Luke al lado oscuro, pero el joven está decidido a reavivar el espíritu del Jedi en su padre. La guerra civil galáctica termina con un último enfrentamiento entre las fuerzas rebeldes unificadas y una segunda Estrella de la Muerte, indefensa e incompleta, en una batalla que decidirá el destino de la galaxia.", "movie","img/articles/starwarsepisodio6.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 17,"Estados Unidos",133,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");

-- Insert articles --
insert into articles (releaseDate, name, description, discriminator, image) values ("2008-03-26 19:25:12", "El caballero oscuro", "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.", "movie");
insert into articles (releaseDate, name, description, discriminator, image) values ("1994-05-13 14:27:23", "Cadena Perpetua", "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", "movie");
insert into articles (releaseDate, name, description, discriminator, image) values ("1994-11-03 11:44:12", "Pulp Fiction", "The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", "movie");
insert into articles (releaseDate, name, description, discriminator, image) values ("1993-01-26 03:32:43", "12 Hombres sin Piedad", "A dissenting juror in a murder trial slowly manages to convince the others that the case is not as obviously clear as it seemed in court.", "movie");
insert into articles (releaseDate, name, description, discriminator, image) values ("1957-02-14 18:14:25", "La lista de Schindler", "In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.", "movie");

-- Insert articles and books --
insert into articles (releaseDate, name, description, discriminator, image) values ("2014-02-14 18:14:25", "EL JUEGO DE RIPPER", "Mi madre todavía está viva, pero la matará el Viernes Santo a medianoche, le advirtió Amanda Martín al inspector jefe y éste no lo puso en duda.", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Isabel Allende", "2014-02-14 18:14:25", "PLAZA & JANES EDITORES", "9788401342547", 480,  9);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-02-11 18:14:25", "Divergent Book 1", "In Beatrice Prior’s dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue—Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent).", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Veronica Roth", "2012-02-11 18:14:25", "Katherine Tegen Books", "42343", 487, 10);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-05-1 8:12:01", "Divergent Book 2", "One choice can transform you—or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love.", "book");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Veronica Roth", "2012-05-1 8:12:01", "Katherine Tegen Books", "952852842", 544, 11);

-- Insert articles and cds --
insert into articles (releaseDate, name, description, discriminator, image) values ("2013-11-25 8:12:01", "Frozen", "Music CD from Idina Menzel", "cd");
insert into cds (duration, articleId) values (64, 12);

insert into articles (releaseDate, name, description, discriminator, image) values ("2010-11-2 12:12:01", "Menudo Es El Fary", "Music CD from El Fary", "cd");
insert into cds (duration, articleId) values (47, 13);

insert into articles (releaseDate, name, description, discriminator, image) values ("2000-09-26 14:34:01", "Por Pasodobles Por Sevillanas", "Music CD from Manolo Escobar", "cd");
insert into cds (duration, articleId) values (48, 14);

-- Insert comics --
insert into articles (releaseDate, name, description, discriminator, image) values ("1975-04-30 8:12:01", "Cigars of the Pharoah (The Adventures of Tintin)", "The classic graphic novel. Tintin tries to take a vacation, but while on his cruise ship a mystery unfolds! He meets Dr. Sarcophagus who leads him to the undiscovered tomb of the Pharaoh Kih-Oskh.", "comic");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Herge", "1975-04-30 8:12:01", "Little, Brown Books for Young Readers", "0316358363", 62, 15);
insert into comics (chapter, articleId) values (3, 15);

insert into articles (releaseDate, name, description, discriminator, image) values ("1984-12-03 8:12:01", "Dragon ball", "A comic masterpiece . . . Dragon Ball's spirit of fun and adventure is unparalleled.", "comic");
insert into books (author, editionDate, editorial, isbn, pages, articleId) values ("Akira Toriyama", "2003-03-12 18:32:31", "VIZ Media LLC; 2nd Edition edition", "1569319200", 192, 16);
insert into comics (chapter, articleId) values (1, 16);

-- Insert users --
insert into users (name) values ("aalopez"), ("alfredo"), ("alfonso"), ("alonso"), ("mgparada"), ("mnceleiro");

