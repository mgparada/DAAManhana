-- Insert articles and movies --
insert into articles (releaseDate, name, description, discriminator, image) values ("1972-03-26 00:34:04", "El padrino", "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", "movie", "img/articles/elpadrino.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Francis Ford Coppola", 1, "United States", 175, "Inglés", "Paramount Pictures / Albert S. Ruddy Production");
insert into actors (Movie_articleId, actors) values (1, "Marlon Brando");
insert into actors (Movie_articleId, actors) values (1, "Al Pacino");
insert into actors (Movie_articleId, actors) values (1, "James Caan");



insert into articles (releaseDate, name, description, discriminator, image) values ("1994-03-26 21:34:23", "Cadena Perpetua", "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", "movie", "img/articles/cadenaperpetua.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Frank Darabont", 2, "United States", 142, "Inglés", "Columbia Pictures / Castle Rock Entertainment");
insert into actors (Movie_articleId, actors) values (2, "Tim Robbins");
insert into actors (Movie_articleId, actors) values (2, "Morgan Freeman");

insert into articles (releaseDate, name, description, discriminator, image) values ("1974-03-26 20:40:23", "El padrino. Parte II", "The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.", "movie", "img/articles/elpadrinoparte2.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Damian Chapa", 3, "Estados Unidos", 200, "Inglés", "Paramount Pictures presents a Francis Ford Coppola Production");
insert into actors (Movie_articleId, actors) values (3, "Al Pacino");
insert into actors (Movie_articleId, actors) values (3, "Robert de Niro");
insert into actors (Movie_articleId, actors) values (3, "James Caan");



insert into articles (releaseDate, name, description, discriminator, image) values ("1976-03-26 20:40:23", "Rocky", "Rocky Balboa es un desconocido boxeador a quien se le ofrece la posibilidad de pelear por el título mundial de los pesos pesados. Con una gran fuerza de voluntad, Rocky se prepara concienzudamente para el combate y también para los cambios que acabarán produciéndose en su vida.", "movie","img/articles/rocky.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("John G. Avildsen", 4, "Estados Unidos",119,"Inglés","United Artist");
insert into actors (Movie_articleId, actors) values (4, "Sylvester Stallone");
insert into actors (Movie_articleId, actors) values (4, "Talia Shire");

insert into articles (releaseDate, name, description, discriminator, image) values ("1994-03-26 20:40:23", "Forrest Gump", "Forrest Gump (Tom Hanks) es un chico que sufre un cierto retraso mental. A pesar de todo, gracias a su tenacidad y a su buen corazón será protagonista de acontecimientos cruciales de su país. Jenny, su gran amor desde la infancia, será la persona más importante de su vida.", "movie","img/articles/forestgump.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Robert Zemeckis", 5,"Estados Unidos",142,"Inglés", "Paramount pictures");
insert into actors (Movie_articleId, actors) values (5, "Tom Hanks");
insert into actors (Movie_articleId, actors) values (5, "Robin Wright Penn");

insert into articles (releaseDate, name, description, discriminator, image) values ("2003-03-26 20:40:23", "Big Fish", "William Bloom (Billy Crudup) no tiene muy buena relación con su padre (Albert Finney), pero tras enterarse de que padece una enfermedad terminal, regresa a su hogar para estar a su lado en sus últimos momentos. Una vez más, William se verá obligado a escucharlo mientras cuenta las interminables historias de su juventud. Pero, en esta ocasión, tratará de averiguar cosas que le permitan conocer mejor a su padre, aunque para ello tendrá que separar claramente realidad y fantasía, elementos que aparecen siempre mezclados en los relatos de su progenitor.", "movie","img/articles/bigfish.jpg");
insert into movies (director, articleId, country, duration, language, producerd) values ("Tim Burton", 6,"Estados Unidos",126,"Inglés","Columbia Pictures" );
insert into actors (Movie_articleId, actors) values (6, "Ewan McGregor");
insert into actors (Movie_articleId, actors) values (6, "Albert Finney");

insert into articles (releaseDate, name, description, discriminator, image) values ("2001-03-26 00:34:04", "El señor de los anillos: La comunidad del anillo", "En la Tierra Media, el Señor Oscuro Saurón ordenó a los Elfos que forjaran los Grandes Anillos de Poder. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Pero Saurón también forjó, en secreto, el Anillo Único, que tiene el poder de esclavizar toda la Tierra Media. Con la ayuda de sus amigos y de valientes aliados, el joven hobbit Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el malvado Sauron ordena la persecución del grupo, compuesto por Frodo y sus leales amigos hobbits, un mago, un hombre, un elfo y un enano. La misión es casi suicida pero necesaria, pues si Sauron con su ejército de orcos lograra recuperar el Anillo, sería el final de la Tierra Media.", "movie","img/articles/elsenordelosanillos.jpg" );
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 7,"Estados Unidos",180,"Inglés","New Line Cinema/Wingnut Films");
insert into actors (Movie_articleId, actors) values (7, "Elijah Wood");
insert into actors (Movie_articleId, actors) values (7, "Orlando Bloom");

insert into articles (releaseDate, name, description, discriminator, image) values ("2002-03-26 20:40:23", "El señor de los anillos: Las dos torres", "Tras la disolución de la Compañía del Anillo, Frodo y su fiel amigo Sam se dirigen hacia Mordor para destruir el Anillo Único y acabar con el poder de Sauron. Mientras, y tras la dura batalla contra los orcos donde cayó Boromir, el hombre Aragorn, el elfo Legolas y el enano Gimli intentan rescatar a los medianos Merry y Pipin, secuestrados por los orcos de Mordor. Por su parte, Saurón y el traidor Sarumán continúan con sus planes en Mordor, a la espera de la guerra contra las razas libres de la Tierra Media.", "movie","img/articles/elsenordelosanillos2.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 8,"Estados Unidos",179,"Inglés","Coprodcción USA-Nueva Zelanda; New Line Cinema");
insert into actors (Movie_articleId, actors) values (8, "Elijah Wood");
insert into actors (Movie_articleId, actors) values (8, "Orlando Bloom");

insert into articles (releaseDate, name, description, discriminator, image) values ("2003-03-26 20:40:23", "El señor de los anillos: El retorno de rey", "Las fuerzas de Saruman han sido destruidas, y su fortaleza sitiada. Ha llegado el momento de decidir el destino de la Tierra Media, y, por primera vez, parece que hay una pequeña esperanza. El interés del señor oscuro Sauron se centra ahora en Gondor, el último reducto de los hombres, cuyo trono será reclamado por Aragorn. Sauron se dispone a lanzar un ataque decisivo contra Gondor. Mientras tanto, Frodo y Sam continuan su camino hacia Mordor, con la esperanza de llegar al Monte del Destino.", "movie","img/articles/elsenordelosanillos3.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 9,"Estados Unidos",201,"Inglés","Coprodcción USA-Nueva Zelanda; New Line Cinema");
insert into actors (Movie_articleId, actors) values (9, "Elijah Wood");
insert into actors (Movie_articleId, actors) values (9, "Orlando Bloom");

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-26 20:40:23", "El Hobbit: Un viaje inesperado", "Precuela de la trilogía El Señor de los Anillos, obra de J.R.R. Tolkien. En compañía del mago Gandalf y de trece enanos, el hobbit Bilbo Bolsón emprende un viaje a través del país de los elfos y los bosques de los trolls, desde las mazmorras de los orcos hasta la Montaña Solitaria, donde el dragón Smaug esconde el tesoro de los Enanos. Finalmente, en las profundidades de la Tierra, encuentra el Anillo Único, hipnótico objeto que será posteriormente causa de tantas sangrientas batallas en la Tierra Media.", "movie","img/articles/elhobbit.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 10,"Estados Unidos",169,"Inglés", "Coproducción USA-Nueva Zelanda; Warner Bros. Pictures/MGM/New Line Cinema/Wingnut Films");
insert into actors (Movie_articleId, actors) values (10, "Martin Freeman"); 
insert into actors (Movie_articleId, actors) values (10, "Ken Stott");

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-03-26 20:40:23", "El Hobbit: La desolación de Smaug", "El Hobbit: La Desolación de Smaug continua la aventura de Bilbo Bolsón en su viaje con el mago Gandalf y trece enanos liderados por Thorin Escudo de Roble en una búsqueda épica para reclamar el reino enano de Erebor. En su camino toparán con multitud de peligros y harán frente al temible dragón Smaug. ", "movie","img/articles/elhobbit2.jpg");
insert into movies ((director, articleId, country, duration, language, producer) values ("Peter Jackson", 11,"Estados Unidos",160,"Inglés","MGM/New Line Cinema/Wingnut Films");
insert into actors (Movie_articleId, actors) values (11, "Martin Freeman"); 
insert into actors (Movie_articleId, actors) values (11, "Ken Stott");

insert into articles (releaseDate, name, description, discriminator, image) values ("1999-03-26 20:40:23", "La guerra de las galaxias. Episodio I: La amenaza fantasma", "Ambientada treinta años antes que La guerra de las galaxias (1977), muestra la infancia de Darth Vader, el pasado de Obi-Wan Kenobi y el resurgimiento de los Sith, los caballeros Jedi dominados por el Lado Oscuro. La Federación de Comercio ha bloqueado el pequeño planeta de Naboo, gobernado por la joven Reina Amidala; se trata de un plan ideado por Sith Darth Sidious, que, manteniéndose en el anonimato, dirige a los neimoidianos, que están al mando de la Federación. El Jedi Qui-Gon Jinn y su aprendiz Obi-Wan Kenobi convencen a Amidala para que vaya a Coruscant, la capital de la República y sede del Consejo Jedi, e trate de neutralizar esta amenaza. Pero, al intentar esquivar el bloqueo, la nave real resulta averiada, viéndose así obligada la tripulación a aterrizar en el desértico y remoto planeta de Tatooine...", "movie","img/articles/starwarsepisodio1.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 12,"Estados Unidos",131,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (12, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (12, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ("2002-03-26 20:40:23", "La guerra de las galaxias. Episodio II: El ataque de los clones", "Corren tenebrosos tiempos para la República, que continúa envuelta en luchas y sumida en el caos. Un movimiento separatista, formado por centenares de planetas y poderosas alianzas encabezadas por el misterioso conde Dooku, amenaza la galaxia. Ni siquiera los Jedi parecen capaces de conjurar el peligro. Este movimiento provoca el estallido de las guerras clones, que representa el principio del fin de la República. Para allanar el camino, los separatistas intentan asesinar a la senadora Padme Amidala. Para evitar futuros atentados, su seguridad es encomendada a dos caballeros Jedi...", "movie","img/articles/starwarsepisodio2.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 13,"Estados Unidos",132,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (13, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (13, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ("2005-03-26 20:40:23", "La guerra de las galaxias. Episodio III: La venganza de los Sith", "Último capítulo de la saga de Star Wars, en el que Anakin Skywalker definitivamente se pasa al lado oscuro. En el Episodio III aparece el General Grievous, un ser implacable mitad-alien mitad-robot, el líder del ejército separatista Droid. Los Sith son los amos del lado oscuro de la Fuerza y los enemigos de los Jedi. Ellos fueron prácticamente exterminados por los Jedi hace mil años, pero la orden del mal sobrevivió en la clandestinidad. ", "movie","img/articles/starwarsepisodio3.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 14,"Estados Unidos",140,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (14, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (14, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ("1977-03-26 20:40:23", "La guerra de las galaxias. Episodio IV: Una nueva esperanza", "La princesa Leia, líder del movimiento rebelde que desea reinstaurar la República en la galaxia en los tiempos ominosos del Imperio, es capturada por las Fuerzas Imperiales, capitaneadas por el implacable Darth Vader, el sirviente más fiel del Emperador. El intrépido y joven Luke Skywalker, ayudado por Han Solo, capitán de la nave espacial El Halcón Milenario, y los androides, R2D2 y C3PO, serán los encargados de luchar contra el enemigo y e intentar rescatar a la princesa para volver a instaurar la justicia en el seno de la galaxia.", "movie","img/articles/starwarsepisodio4.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 15,"Estados Unidos",121,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (15, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (15, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ("1980-03-26 20:40:23", "La guerra de las galaxias. Episodio V: Una nueva esperanza", "Tras un ataque sorpresa de las tropas imperiales a las bases camufladas de la alianza rebelde, Luke Skywalker, en compañía de R2D2, parte hacia el planeta Dagobah en busca de Yoda, el último maestro Jedi, para que le enseñe los secretos de la Fuerza. Mientras, Han Solo, la princesa Leia, Chewbacca, y C3PO esquivan a las fuerzas imperiales y piden refugio al antiguo propietario del Halcón Milenario, Lando Calrissian, en la ciudad minera de Bespin, donde les prepara una trampa urdida por Darth Vader. ", "movie","img/articles/starwarsepisodio5.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 16,"Estados Unidos",124,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (16, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (16, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1983-03-26 20:40:23", "La guerra de las galaxias. Episodio VI: El retorno del Jedi", "Para ir a Tatooine y liberar a Han Solo, Luke Skywalker y la princesa Leia deben infiltrarse en la peligrosa guarida de Jabba the Hutt, el gángster más temido de la galaxia. Una vez reunidos, el equipo recluta a tribus de Ewoks para combatir a las fuerzas imperiales en los bosques de la luna de Endor. Mientras tanto, el Emperador y Darth Vader conspiran para atraer a Luke al lado oscuro, pero el joven está decidido a reavivar el espíritu del Jedi en su padre. La guerra civil galáctica termina con un último enfrentamiento entre las fuerzas rebeldes unificadas y una segunda Estrella de la Muerte, indefensa e incompleta, en una batalla que decidirá el destino de la galaxia.", "movie","img/articles/starwarsepisodio6.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("George Lucas", 17,"Estados Unidos",133,"Inglés","Lucas Film. Distribuhida por 20th Century Fox");
insert into actors (Movie_articleId, actors) values (17, "Harrison Ford");
insert into actors (Movie_articleId, actors) values (17, "Carrie Fisher");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1940-03-26 20:40:23", "El gran dictador", "Un humilde barbero judío tiene un parecido asombroso con el dictador de Tomania, un tirano que culpa a los judíos de la crítica situación que atraviesa el país. Un día, sus propios guardias lo confunden con el barbero y lo llevan a un campo de concentración. Al mismo tiempo, al pobre barbero lo confunden con el tirano.", "movie","img/articles/elgrandictador.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Charles Chaplin", 18,"Estados Unidos",128,"Inglés","United Artists");
insert into actors (Movie_articleId, actors) values (18, "Charles Chaplin");
insert into actors (Movie_articleId, actors) values (18, "Paulette Goddard");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1962-03-26 20:40:23", "Harakiri", "Un samurái, pide permiso para practicarse el Seppuku (o Harakiri), ceremonia durante la cual se quitará la vida abriéndose el estómago al tiempo que otro samurái lo decapitará. Solicita también poder contar la historia que le ha llevado a tomar tan trágica decisión.", "movie","img/articles/harakiri.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Masaki Kobayashi", 19,"Japón",133,"Japonés","Shochiku Kinema Kenkyû-jo");
insert into actors (Movie_articleId, actors) values (19, "Tatsuya Nakadai");
insert into actors (Movie_articleId, actors) values (19, "Rentaro Mikuni");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1960-03-26 20:40:23", "La evasión", "Francia, 1947. Gaspard Claude ha sido acusado del intento de asesinato de su mujer, pero es inocente. Una vez en la cárcel, comparte celda con cuatro duros criminales que han decidido escapar de la prisión construyendo un laborioso túnel. A duras penas, convencen al joven para que se una al plan de fuga y participe en los trabajos de excavación. Brillante ejercicio de precisión narrativa, apabullante en su perfecta simplicidad; es, sin duda alguna, la obra más redonda de Becker.", "movie","img/articles/laevasion.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Jacques Becker", 20,"Francia",113,"Francés","Coproducción Francia-Italia; Filmsonor / Play Art / Titanus");
insert into actors (Movie_articleId, actors) values (20, "Philippe Leroy");
insert into actors (Movie_articleId, actors) values (20, "Marc Michel");

insert into articles (releaseDate, name, description, discriminator, image) values ( "2002-03-26 20:40:23", "Ciudad de Dios", "Basada en hechos reales, este es relato del incremento del crimen organizado en Cidade de Deus, un suburbio de Río de Janeiro, desde finales de los años sesenta hasta el comienzo de los ochenta, cuando el tráfico de drogas y la violencia impusieron su ley en las favelas. Todo comienza a finales de los sesenta, cuando Buscapé tiene 11 años y es sólo un niño más en Cidade de Deus. Tímido y delicado, observa a los niños duros de su barrio, sus robos, sus peleas, sus enfrentamientos diarios con la policía. Ya sabe lo que quiere ser si consigue sobrevivir: fotógrafo. Dadinho, un niño de su misma edad, se traslada al barrio. Sueña con ser el criminal más peligroso de Río de Janeiro y empieza su aprendizaje haciendo recados para los delincuentes locales. Admira a Cabeleira y su pandilla, que se dedica a atracar los camiones del gas y hacen otros pequeños robos armados. Un día Cabeleira da a Dadinho la oportunidad de cometer su primer asesinato...", "movie","img/articles/ciudaddedios.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Fernando Meirelles", 21,"Brasil",130,"Portugués","O2 Filmes / VideoFilmes / Globo Filmes / Wild Bunch");
insert into actors (Movie_articleId, actors) values (21, "Alexandre Rodrigues");
insert into actors (Movie_articleId, actors) values (21, "Leandro Firmino");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1942-03-26 20:40:23", "Casablanca", "Durante la Segunda Guerra Mundial (1939-1945), Casablanca era una ciudad a la que llegaban huyendo del nazismo gentes de todas partes: llegar era fácil, pero salir era casi imposible, especialmente si el nombre del fugitivo figuraba en las listas de la Gestapo. En esta ocasión, el objetivo de la policía secreta alemana es el líder checo y héroe de la resistencia Victor Laszlo, cuya única esperanza es Rick Blaine, propietario del 'Rick’s Café' y antiguo amante de su mujer, Ilsa. Cuando Ilsa se ofrece a quedarse a cambio de un visado para sacar a Laszlo del país, Rick deberá elegir entre su propia felicidad o el idealismo que rigió su vida en el pasado.", "movie","img/articles/casablanca.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Michael Curtiz", 22,"Estados Unidos",102,"Inglés","Warner Bros. Pictures; Productor: Hal B. Wallis");
insert into actors (Movie_articleId, actors) values (22, "Humphrey Bogart");
insert into actors (Movie_articleId, actors) values (22, "Ingrid Bergman");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1975-03-26 20:40:23", "Alguien voló sobre el nido del cuco", "Randle McMurphy (Jack Nicholson), un hombre condenado por asalto, y un espíritu libre que vive contracorriente, es recluido en un hospital psiquiátrico. La inflexible disciplina del centro acentúa su contagiosa tendencia al desorden, que acabará desencadenando una guerra entre los pacientes y el personal de la clínica con la fría y severa enfermera Ratched (Louise Fletcher) a la cabeza. La suerte de cada paciente del pabellón está en juego. ", "movie","img/articles/alguienvolosobreelnidodelcuco.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Milos Forman", 23,"Estados Unidos",133,"Inglés","United Artists / Fantasy Film");
insert into actors (Movie_articleId, actors) values (23, "Jack Nicholson");
insert into actors (Movie_articleId, actors) values (23, "Louise Fletcher");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1998-03-26 20:40:23", "American History X", "Derek (Edward Norton), un joven skin head californiano de ideología neonazi, fue encarcelado por asesinar a un negro que pretendía robarle su furgoneta. Cuando sale de prisión y regresa a su barrio dispuesto a alejarse del mundo de la violencia, se encuentra con que su hermano pequeño (Edward Furlong), para quien Derek es el modelo a seguir, sigue el mismo camino que a él lo condujo a la cárcel. ", "movie","img/articles/americanhistoryx.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Tony Kaye", 24,"Estados Unidos",119,"Inglés","New Line Cinema");
insert into actors (Movie_articleId, actors) values (24, "Edward Norton");
insert into actors (Movie_articleId, actors) values (24, "Edward Furlong");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1963-03-26 20:40:23", "El verdugo", "José Luis, el empleado de una funeraria, proyecta emigrar a Alemania para convertirse en un buen mecánico. Su novia es hija de Amadeo, un verdugo profesional. Cuando éste los sorprende en la intimidad, los obliga a casarse. Ante la acuciante falta de medios económicos de los recién casados, Amadeo, que está a punto de jubilarse, trata de persuadir a José Luis para que solicite la plaza que él va a dejar vacante, lo que le daría derecho a una vivienda. José Luis acaba aceptando la propuesta de su suegro con el convencimiento de que jamás se presentará la ocasión de ejercer tan ignominioso oficio.", "movie","img/articles/elverdugo.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Luis García Berlanga", 25,"España",87,"Castellano","Coproducción España-Italia; Naga Films / Zabra Films");
insert into actors (Movie_articleId, actors) values (25, "José Isbert");
insert into actors (Movie_articleId, actors) values (25, "Nino Manfredi");

insert into articles (releaseDate, name, description, discriminator, image) values ( "2002-03-26 20:40:23", "El pianista", "Wladyslaw Szpilman, un brillante pianista polaco de origen judío, vive con su familia en el ghetto de Varsovia. Cuando, en 1939, los alemanes invaden Polonia, consigue evitar la deportación gracias a la ayuda de algunos amigos. Pero tendrá que vivir escondido y completamente aislado durante mucho tiempo, y para sobrevivir tendrá que afrontar constantes peligros. ", "movie","img/articles/elpianista.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Roman Polanski", 26,"Estados Unidos",148,"Inglés","Coproducción GB-Francia-Polonia-Alemania; R.P. Productions / Heritage Films / Studio Babelsberg / Runteam Ltd.");
insert into actors (Movie_articleId, actors) values (26, "Adrien Brody");
insert into actors (Movie_articleId, actors) values (26, "Thomas Kretschmann");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1979-03-26 20:40:23", "Apocalypse Now", "El Capitán Willard es un oficial de los servicios de inteligencia del ejército estadounidense al que se le ha encomendado en Camboya la peligrosa misión de eliminar a Kurtz, un coronel renegado que se ha vuelto loco. En el corazón de la selva, en un campamento sembrado de cabezas cortadas y cadáveres putrefactos, la enorme y enigmática figura de Kurtz reina como un buda despótico sobre los miembros de la tribu Montagnard, que le adoran como a un dios.", "movie","img/articles/apocalypsenow.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Francis Ford Coppola", 27,"Estados Unidos",153,"Inglés","United Artists (Omni Zoetrope Production)");
insert into actors (Movie_articleId, actors) values (27, "Martin Sheen");
insert into actors (Movie_articleId, actors) values (27, "Marlon Brando");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1963-03-26 20:40:23", "La gran evasión", "Segunda Guerra Mundial (1939-1945). Un grupo de oficiales ingleses y norteamericanos que están prisioneros en un campo de concentración nazi, se proponen organizar una fuga en la que se verán implicados doscientos cincuenta presos. Para llevar a cabo su plan comienzan a excavar tres túneles. ", "movie","img/articles/lagranevasion.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("John Sturges", 28,"Estados Unidos",168,"Inglés","Coproducción USA / Alemania; MGM / UA");
insert into actors (Movie_articleId, actors) values (28, "Steve McQueen");
insert into actors (Movie_articleId, actors) values (28, "James Garner");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1991-03-26 20:40:23", "El silencio de los corderos", "El FBI busca a Buffalo Bill, un asesino en serie que mata a sus víctimas, todas adolescentes, después de prepararlas minuciosamente y arrancarles la piel. Para poder atraparlo recurren a Clarice Starling, una brillante licenciada universitaria, experta en conductas psicópatas, que aspira a formar parte del FBI. Siguiendo las instrucciones de su jefe, Jack Crawford, Clarice visita la cárcel de alta seguridad donde el gobierno mantiene encerrado a Hannibal Lecter, antiguo psicoanalista y asesino, dotado de una inteligencia superior a la normal. Su misión será intentar sacarle información sobre los patrones de conducta de Buffalo Bill. ", "movie","img/articles/elsilenciodeloscorderos.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Jonathan Demme", 29,"Estados Unidos",118,"Inglés","Orion Pictures");
insert into actors (Movie_articleId, actors) values (29, "Jodie Foster");
insert into actors (Movie_articleId, actors) values (29, "Anthony Hopkins");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1971-03-26 20:40:23", "La naranja mecánica", "Gran Bretaña, en un futuro indeterminado. Alex (Malcolm McDowell) es un joven muy agresivo que tiene dos pasiones: la violencia desaforada y Beethoven. Es el jefe de la banda de los drugos, que dan rienda suelta a sus instintos más salvajes apaleando, violando y aterrorizando a la población. Cuando esa escalada de terror llega hasta el asesinato, Alex es detenido y, en prisión, se someterá voluntariamente a una innovadora experiencia de reeducación que pretende anular drásticamente cualquier atisbo de conducta antisocial. ", "movie","img/articles/lanaranjamecanica.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Stanley Kubrick", 30,"Reino Unido",137,"Inglés","Warner Bros Pictures / Stanley Kubrick Production");
insert into actors (Movie_articleId, actors) values (30, "Malcolm McDowell");
insert into actors (Movie_articleId, actors) values (30, "Patrick Magee");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1941-03-26 20:40:23", "Ciudadano Kane", "Un importante magnate estadounidense, Charles Foster Kane, dueño de una importante cadena de periódicos, de una red de emisoras, de dos sindicatos y de una inimaginable colección de obras de arte, muere en Xanadú, su fabuloso castillo de estilo oriental. La última palabra que pronuncia antes de expirar, Rosebud, cuyo significado es un enigma, despierta una enorme curiosidad tanto en la prensa como entre la población. Así las cosas, un grupo de periodistas emprende una investigación para desentrañar el misterio. ", "movie","img/articles/ciudadanokane.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Orson Welles", 31,"Estados Unidos",119,"Inglés","RKO / Mercury Theatre Productions");
insert into actors (Movie_articleId, actors) values (31, "Orson Welles");
insert into actors (Movie_articleId, actors) values (31, "Joseph Cotten");

insert into articles (releaseDate, name, description, discriminator, image) values ( "2008-03-26 20:40:23", "Gran Torino", "Walt Kowalski (Clint Eastwood), un veterano de la guerra de Corea (1950-1953), es un obrero jubilado del sector del automóvil que ha enviudado recientemente. Su máxima pasión es cuidar de su más preciado tesoro: un coche Gran Torino de 1972. Es un hombre inflexible y cascarrabias, al que le cuesta trabajo asimilar los cambios que se producen a su alrededor, especialmente la llegada de multitud de inmigrantes asiáticos a su barrio. Sin embargo, las circustancias harán que se vea obligado a replantearse sus ideas.", "movie","img/articles/grantorino.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Clint Eastwood", 32,"Estados Unidos",119,"Inglés","Warner Bros. Pictures / Village Roadshow Pictures / Malpaso Productions / Double Nickel Entertainment");
insert into actors (Movie_articleId, actors) values (32, "Clint Eastwood");
insert into actors (Movie_articleId, actors) values (32, "Christopher Carley");

insert into articles (releaseDate, name, description, discriminator, image) values ( "1987-03-26 20:40:23", "La chaqueta metálica", "Un grupo de reclutas se prepara en Parish Island, centro de entrenamiento de la marina norteamericana. Allí está el sargento Hartmann, duro e implacable, cuya única misión en la vida es endurecer el cuerpo y el alma de los novatos, para que puedan defenderse del enemigo. Pero no todos los jóvenes están preparados para soportar sus métodos.", "movie","img/articles/lachaquetametalica.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Stanley Kubrick", 33,"Estados Unidos",120,"Inglés","Warner Bros. Pictures");
insert into actors (Movie_articleId, actors) values (33, "Matthew Modine");
insert into actors (Movie_articleId, actors) values (33, "Vincent D'Onofrio");


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

