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

insert into articles (releaseDate, name, description, discriminator, image) values ("1994-03-26 20:40:23", "Forrest Gump", "Forrest Gump (Tom Hanks) es un chico que sufre un cierto retraso mental. A pesar de todo, gracias a su tenacidad y a su buen corazón será protagonista de acontecimientos cruciales de su país. Jenny, su gran amor desde la infancia, será la persona más importante de su vida.", "movie","img/articles/forrestgump.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Robert Zemeckis", 5,"Estados Unidos",142,"Inglés", "Paramount pictures");
insert into actors (Movie_articleId, actors) values (5, "Tom Hanks");
insert into actors (Movie_articleId, actors) values (5, "Robin Wright Penn");

insert into articles (releaseDate, name, description, discriminator, image) values ("2003-03-26 20:40:23", "Big Fish", "William Bloom (Billy Crudup) no tiene muy buena relación con su padre (Albert Finney), pero tras enterarse de que padece una enfermedad terminal, regresa a su hogar para estar a su lado en sus últimos momentos. Una vez más, William se verá obligado a escucharlo mientras cuenta las interminables historias de su juventud. Pero, en esta ocasión, tratará de averiguar cosas que le permitan conocer mejor a su padre, aunque para ello tendrá que separar claramente realidad y fantasía, elementos que aparecen siempre mezclados en los relatos de su progenitor.", "movie","img/articles/bigfish.jpg");
insert into movies (director, articleId, country, duration, language, producer) values ("Tim Burton", 6,"Estados Unidos",126,"Inglés","Columbia Pictures" );
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
insert into movies (director, articleId, country, duration, language, producer) values ("Peter Jackson", 11,"Estados Unidos",160,"Inglés","MGM/New Line Cinema/Wingnut Films");
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

-- Insert articles and books --
insert into articles (releaseDate, name, description, discriminator, image) values ("2014-02-14 18:14:25", "EL JUEGO DE RIPPER", "Mi madre todavía está viva, pero la matará el Viernes Santo a medianoche, le advirtió Amanda Martín al inspector jefe y éste no lo puso en duda.", "book","img/articles/eljuegoderipper.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Isabel Allende", "2014-02-14 18:14:25", "PLAZA & JANES EDITORES", "9788401342547", 480, "","", 34);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-02-11 18:14:25", "Divergent Book 1", "In Beatrice Prior’s dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue—Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent).", "book","img/articles/divergentbook1.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Veronica Roth", "2012-02-11 18:14:25", "Katherine Tegen Books", "42343", 487,"","", 35);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-05-1 8:12:01", "Divergent Book 2", "One choice can transform you—or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love.", "book","img/articles/divergentbook2.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Veronica Roth", "2012-05-1 8:12:01", "Katherine Tegen Books", "952852842", 544,"","", 36);

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-11-11 8:12:01", "La vida es suero: Historias de una Enfermera Saturada", "¿Alguna vez te has preguntado si existe el apósito del tamaño adecuado? o ¿De dónde surge la leyenda urbana del aire en el suero? Si no tienes claro si una enfermera que pincha en el turno de noche, es una DJ. Si estás convencido de que la persona que inventa el tamaño de las pastillas, no es buena persona, crees firmemente que llamarle pijama a la ropa de trabajo no es serio, no soportas a las señoras que te dicen en qué vena tienes que pincharlas y alguna vez te has quedado mirando las venas de alguien en el metro, éste es tu libro. Bienvenido al mundo de Enfermera Saturada. Un mundo donde el delirio se mezcla con el humor, a veces negro y siempre muy fino, pero donde el día a día del hospital siempre supera a la ficción. Os lo juro por Florence Nightingale.", "book","img/articles/lavidaessuero.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Enfermera Saturada", "2013-11-11 8:12:01", "Createspace", "1494331918", 116,"","", 37);

insert into articles (releaseDate, name, description, discriminator, image) values ("2011-01-11 8:12:01", "La ladrona de libros", "En el pueblo vivía una niña que quería leer, un hombre que tocaba el acordeón y un joven judío que escribía bellos cuentos para escapar del horror de la guerra. Al cabo de un tiempo, la niña se convirtió en una ladrona que robaba libros y regalaba palabras. Con estas palabras se escribió una historia hermosa y cruel que ahora ya es una novela inolvidable. «La ladrona de libros deslumbra por sus extraordinarios personajes, su capacidad de emocionar sin clichés y, ante todo, por su omnipresente refl exión sobre el valor de las palabras.» RICARD RUIZ GARZÓN, El Periódico de Catalunya «Cuenta una historia en la que los libros se convierten en tesoros. [...] Un sentimiento como este es indiscutible.» The New York Times", "book","img/articles/laladronadelibros.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Markus Zusak", "2011-01-11 8:12:01", "Debolsillo", "8499088074", 544,"","", 38);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-04-25 8:12:01", "La mirada de los ángeles ", "Tras la muerte accidental de su hijo pequeño, Ebba y Mårten se trasladan a la isla de Valö para rehacer su vida. Ahí, se instalan en una granja enla que vivió la familia de Ebba hace muchos años. Pero la tragedia los sigue acechando, y un incendio, a todas luces provocado, saca a relucir la historia siniestra que pesa sobre la granja. Hace treinta años toda la familia de Ebba desapareció sin dejar rastro. Solo se salvó ella, entonces un bebé de un año, a quien encontraron sola en la casa. Desde ese momento, recibe una misteriosa felicitación el día de su cumpleaños, rmada con una simple G…Patrik abre una investigación, y Erica, siempre en busca de material narrativo, empieza a tirar del hilo de la historia de la granja por su cuenta. Un acto impulsivo de Anna, la hermana de Erica, aún afectada por la pérdida del bebé que esperaba, revelará la verdad de golpe.", "book","img/articles/lamiradadelosangeles.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Camilla Läckberg ", "2014-04-25 8:12:01", "Maeva Ediciones", "8415893388", 448,"","", 39);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-03-25 8:12:01", "Una revolución liberal para España: Anatomía de un país libre y próspero: ¿cómo sería y qué beneficios obtendríamos?", "Todos deseamos disfrutar de un excelente sistema sanitario y educativo; todos aspiramos a que las pensiones y los salarios sean lo más elevados posible; todos queremos vivir en una comunidad innovadora, culturalmente vanguardista, respetuosa con el medio ambiente y solidaria con los más necesitados. La mayoría de ciudadanos cree que la manera de alcanzar todos estos loables objetivos pasa por aumentar el tamaño del Estado a pesar de que éste ya se halla en máximos históricos. El conocido economista Juan Ramón Rallo ofrece en este libro una propuesta radicalmente distinta a la habitual: el camino a la prosperidad colectiva no pasa por incrementar todavía más el intervencionismo estatal, sino por reducirlo a su mínima expresión; es decir, su propuesta pasa por que sea la propia sociedad, y no los políticos y los burócratas, la que se haga cargo de servicios tan esenciales como la educación, la sanidad, las pensiones o la protección del medio ambiente. Eso es justamente lo que encontrará en esta obra: una rigurosa y documentada explicación de por qué el bienestar de todos los ciudadanos mejoraría muy notablemente con menos impuestos, menos gasto público y menos regulaciones.", "book","img/articles/unarevolucionliberalparaespanha.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Juan Ramón Rallo Julián", "2014-03-25 8:12:01", "Deusto", "8423418537", 400,"","", 40);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-04-29 8:12:01", "Los muertos vivientes: Guerra sin cuartel", "El mayor arco argumental de Los Muertos Vivientes comienza en este volumen. Rick y su némesis se enfrentan en una batalla sin tregua en la que nadie puede elegir la neutralidad. Si todavía no conoces a Ezequiel, Jesus o Negan, ¡no te pierdas esta saga! Y si los conoces... ni te imaginas lo que Robert Kirkman tiene preparado para ellos...Sinopsis de la serie: Una epidemia de proporciones apocalípticas ha barrido la Tierra haciendo que los muertos se levanten y se alimenten de los vivos. En una historia de zombies sin fin, un grupo de supervivientes intentan marcar la diferencia y, sobre todo, seguir existiendo. Este es el argumento central de la exitosa colección creada por Robert Kirkman. El autor nos ofrece un relato que nos hace reflexionar sobre el mundo en el que vivimos y en qué lo estamos convirtiendo.  La exitosa serie de TV, que bate récords de audiencia a nivel mundial, está directamente supervisada por el propio Kirkman.Título original: The Walking Dead # 115-120", "book","img/articles/losmuertosvivientes.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Robert Kirkman, Charlie Adlard ", "2014-04-29 8:12:01", "Planeta DeAgostini", "8468477729", 144,"","", 41);

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-09-09 8:12:01", "Canción de hielo y fuego: Danza de dragones", "Canción de hielo y fuego: Libro quinto La novela río más espectacular jamás escrita Daenerys Targaryen intenta mitigar el rastro de sangre y fuego que dejó en las Ciudades Libres y se empeña en erradicar la esclavitud en Meereen. Mientras, un enano parricida, un príncipe de incógnito, un capitán implacable y un enigmático caballero acuden a la llamada de los dragones desde el otro lado del mar Angosto, ajenos al peligro que se cierne sobre el Norte, y que solo las menguadas huestes de uno de los reyes en discordia y la Guardia de la Noche se aprestan a afrontar. George R. R. Martin sigue añadiendo sutiles e intrincadas tramas a su impresionante retablo de intrigas y pasiones, y sumando admiradores incondicionales. Rebasa las barreras de los géneros como si nunca hubieran existido: Danza de dragones marca su consagración definitiva entre los más grandes creadores de la historia de la literatura, más allá de cualquier distinción de etiquetas «Tolkien ha muerto. Larga vida a George Martin.» Dana Jennings, The New York Times El preludio de una danza de dragones que regresa, después de siglos, a los Siete Reinos. Tras un largo e infructuoso peregrinaje por las Ciudades Libres para recabar recursos que le permitan reclamar el Trono de Hierro, Daenerys de la Tormenta decide asentarse en Meereen y gobernar la ciudad. Pero esa labor tampoco está exenta de peligros: sus enemigos proliferan, y en los Siete Reinos se tejen redes de conspiraciones de variada índole, todas atraídas por el inmenso poder de los dragones. Mientras tanto, en el Norte, asolado tras la guerra y abandonado a los salvajes que cruzaron el Muro, Jon Nieve se ve obligado a ejercer una delicada diplomacia para preservar la vigilia de la Guardia de la Noche frente a la amenaza que se aproxima implacable y ominosa hacia Poniente. George R. R. Martin demuestra de nuevo su genio narrativo al retomar personajes y tramas, e hilvanar con todos estos elementos una entrega que, pese a su tremenda complejidad, no decae un ápice en interés ni intensidad. Danza de dragones jalona hasta el momento una saga que, gracias a su impecable adaptación televisiva, pero sustentada en todo momento por sus propios méritos, ha logrado trascender las barreras de los géneros y se ha convertido en un fenómeno mundial y en una de las obras de referencia de la literatura contemporánea. Mientras el trono de Poniente sigue en el aire, Martin se ha erigido ya en soberano indiscutido de verdaderas huestes de lectores de toda ralea. Una saga que está cautivando, a fuerza de tesón y talento, a toda una generación.", "book","img/articles/canciondehiloyfuego5.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("George R.R. Martin", "2013-09-09 8:12:01", "Ediciones Gigamesh", "8496208672", 1280,"","", 42);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-10-05 8:12:01", "Canción de hielo y fuego: Juego de tronos", "Canción de hielo y fuego: Libro primero La novela río más espectacular jamás escrita Tras el largo verano, el invierno se acerca a los Siete Reinos. Lord Eddard Stark, señor de Invernalia, deja sus dominios para unirse a la corte de su amigo el rey Robert Baratheon, llamado el Usurpador, hombre díscolo y otrora guerrero audaz cuyas mayores aficiones son comer, beber y engendrar bastardos. Eddard Stark ocupará el cargo de Mano del Rey e intentará desentrañar una maraña de intrigas que pondrá en peligro su vida y la de todos los suyos. En un mundo cuyas estaciones pueden durar decenios y en el que retazos de una magia inmemorial y olvidada surgen en los rincones más sombríos y maravillosos, la traición y la lealtad, la compasión y la sed de venganza, el amor y el poder hacen del juego de tronos una poderosa trampa que atrapará en sus fauces a los personajes... y al lector.", "book","img/articles/canciondehieloyfuego1.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("George R.R. Martin", "2012-10-05 8:12:01", "Ediciones Gigamesh", "8496208923", 800,"","", 43);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-15 8:12:01", "Sinsajo", "Katnis Everdeen ha sobrevivido dos veces a Los juegos del hambre, pero no está a salvo. La revolución se extiende y, al parecer, todos han tenido algo que ver en el meticuloso plan, todos excepto Katniss. Aun así su papel en la batalla final es el más importante de todos. Katniss debe convertirse en el Sinsajo, en el símbolo de la rebelión... a cualquier precio. ¡Que empiecen los septuagésimo sextos juegos del hambre!", "book","img/articles/sinsajo.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Suzanne Collins", "2012-03-15 8:12:01", "Molino", "8427202148", 432,"","", 44);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-15 8:12:01", "Juegos del hambre", "GANAR SIGNIFICA FAMA Y RIQUEZA. PERDER SIGNIFICA UNA MUERTE SEGURA. En una oscura versión del futuro próximo, doce chicos y doce chicas se ven obligados a participar en un reality show llamado Los juegos del hambre. Solo hay una regla: matar o morir. Cuando Katniss Everdeen, una joven de dieciséis años se presenta voluntaria para ocupar el lugar de su hermana en los juegos, lo entiende como una condena a muerte. Sin embargo Katniss ya ha visto la muerte de cerca y la supervivencia forma parte de su naturaleza. ¡Que empiecen los septuagésimo cuartos juegos del hambre!", "book","img/articles/losjuegosdelhambre.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Suzanne Collins", "2012-03-15 8:12:01", "Molino", "8427202121", 400,"","", 45);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-15 8:12:01", "En llamas", "Katniss Everdeen ha sobrevivido a Los juegos del hambre. Pero el Capitolio quiere venganza. Contra todo pronóstico, Katniss Everdeen y Peeta Mellark siguen vivos. Aunque Katniss debería sentirse aliviada, se rumorea que existe una rebelión contra el Capitolio, una rebelión que puede que Katniss y Peeta hayan ayudado a inspirar. La nación les observa y hay mucho en juego. Un movimiento en falso y las consecuencias serán inimaginables.", "book","img/articles/enllamas.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Suzanne Collins", "2012-03-15 8:12:01", "Molino", "842720213X", 416,"","", 46);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-06-28 8:12:01", "Fahrenheit 451", "Fahrenheit 451: la temperatura a la que el papel se enciende y arde. Guy Montag es un bombero y el trabajo de un bombero es quemar libros, que están prohibidos porque son causa de discordia y sufrimiento. El Sabueso Mecánico del Departamento de Incendios, armado con una letal inyección hipodérmica, escoltado por helicópteros, está preparado para rastrear a los disidentes que aún conservan y leen libros. Como 1984, de George Orwell, como Un mundo feliz, de Aldous Huxley, Fahrenheit 451 describe una civilización occidental esclavizada por los medios, los tranquilizantes y el conformismo. La visión de Bradbury es asombrosamente profética: pantallas de televisión que ocupan paredes y exhiben folletines interactivos; avenidas donde los coches corren a 150 kilómetros por hora persiguiendo a peatones; una población que no escucha otra cosa que una insípida corriente de música y noticias transmitidas por unos diminutos auriculares insertados en las orejas.", "book","img/articles/fahrenheit.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Ray Bradbury", "2012-06-28 8:12:01", "Debolsillo", "8490321477", 192,"","", 47);

insert into articles (releaseDate, name, description, discriminator, image) values ("2004-09-13 8:12:01", "Cien años de soledad", "1967. En Buenos Aires aparece la novela de un escritor colombiano de cuarenta años. No queda hoy lengua literaria a la que no haya sido traducida.  Cien años de soledad  no sólo cautiva a los lectores de cualquier condición: su impulso poderoso ha levantado las letras castellanas de todo un continente. Desvelar la magia de su prosa, acotar las arenas movedizas de su particular quehacer literario son tareas tan imposibles como dañinas; sí agradecerá el lector, en cambio, la aclaración de ciertas alusiones, la comprobación de la densidad que subyace a un texto aparentemente diáfano. No nos engañemos: son millones las páginas que han engendrado las de la novela, pero ante ella al lector no le queda otra actitud que la misma lectura devoradora y deslumbrada del último de los Aurelianos.", "book","img/articles/100anhosdesoledad.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Gabriel García Márquez", "2004-09-13 8:12:01", "Cátedra", "843760494X", 560,"","", 48);

insert into articles (releaseDate, name, description, discriminator, image) values ("2009-09-04 8:12:01", "Ruido de fondo", "El profesor universitario Jack Gladney, vive en una pequeña ciudad americana con su esposa y sus hijos. Marcados por el consumismo y el miedo a la muerte, los Gladney tratan de llevar una vida familiar tranquila hasta que un accidente industrial pone en peligro la ciudad. En palabras de DeLillo: «Una historia sobre el miedo, la muerte y la tecnología. Una comedia, por supuesto.»", "book","img/articles/ruidodefondo.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Don DeLillo", "2009-09-04 8:12:01", "Austral", "8432248444", 432,"","", 49);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-03-04 8:12:01", "Estoy bien: El más allá nunca estuvo tan cerca", "Si creía conocer las investigaciones de J. J. Benítez, se equivoca. Estoy bien es otra vuelta de tuerca en la producción literaria del autor navarro.Veamos algunos pensamientos de Juanjo Benítez sobre el delicado asunto de los «resucitados»,como llama él a los muertos que han vuelto: «Estoy bien es tan increíble como cierto.»«Se trata de 160 casos “al sur de la razón”.»«Quizá este libro sea mucho más de lo que parece.»«Estoy bien debe ser leído despacio, muy despacio.»«El padre Azul (y su “gente”) se han sentado conmigo a la hora de escribirlo.»«Si usted tiene miedo a la muerte, éste es su libro; si no es así, con más razón.»«Algún día seremos esféricos.»«Al abrir Estoy bien, usted debería ver una luz.»«El concepto “vivo” necesita ser revisado.»", "book","img/articles/estoybien.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("J. J. Benítez", "2014-03-04 8:12:01", " Editorial Planeta", "8408120166", 576,"","", 50);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-03-06 8:12:01", "Qué hacer cuando en la pantalla aparece THE END", "Un libro sobre finales que llegan, sin avisar, que nos parten en dos mitades, que se arrastran durante años y que nunca se acaban porque confunden orgullo con recuerdo. Y entonces cogemos trenes, reservamos habitaciones de hotel en pueblos olvidados, vivimos enganchados a pantallas esperando que alguien decida hablarnos para informarnos del siguiente movimiento, el que nos acercará conscientemente a un final que hace años que buscamos. Pero ese final no llega. Y de repente un día nos despertamos y sentimos el vacío: en la pantalla aparece THE END y decidimos empezar otra historia. Una en la que nunca tengamos que fingir que no nos conocemos.", "book","img/articles/quehacercuando.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Paula Bonet", "2014-03-06 8:12:01", "Lunwerg Editores", "8415888503", 200,"","", 51);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-10-04 8:12:01", "El espejo del mar", "Las crónicas que conforman este libro repasan las vivencias marítimas de Conrad, primero como marinero en Francia y más adelante en la marina mercante británica. Estos textos componen un vivísimo retrato de la relación entre el hombre y el mar en una época en que la llegada del vapor supuso el fin de la hegemonía de los barcos de vela. Considerado como el cruce entre un cantar de gesta sobre la navegación a vela y la biblia del oleaje, El espejo del mar es la insuperable reminiscencia de una forma de vida y una obra imprescindible para comprender a su autor. «Todo el libro es Conrad cien por cien, y, además, el mejor Conrad, el que sabía dibujar un hecho del mar con la más perfecta forma literaria, y el que sabía ilustrar un acontecimiento narrativo con la más acertada imagen marinera.» Juan Benet", "book","img/articles/elespejodelmar.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Joseph Conrad", "2012-10-04 8:12:01", "Debolsillo", "8499897274", 288,"","", 52);

insert into articles (releaseDate, name, description, discriminator, image) values ("2012-03-08 8:12:01", "El espacio vacío: Arte y técnica del teatro ", "«Un incomprensible equívoco persigue a este libro desde su aparición. Pese a tratarse de una obra tan clara y profunda como entretenida, mucha gente todavía cree, a tenor de su título, que El espacio vacío es un texto sobre esencialismos escenográficos o, peor todavía, un tratado abstruso y teórico sobre teatro experimental según el signo de los tiempos: el caótico pero vivísimo final de la década de 1960.» Con estas palabras arranca el prólogo de esta nueva edición de El espacio vacío. Nada más justo y cierto. Nos encontramos con un texto, que apareció en 1968, que es mucho más que un tratado sobre el teatro. El autor mira el mundo con una intensidad inusitada (dentro y fuera del ámbito teatral) y en su aproximación a la realidad nos vemos reflejados. Dice Brook: «una obra de teatro es un juego.» Juguemos (y aprendamos) con los libros buenos, imprescindibles. Sin miedo.Los editores", "book","img/articles/elespaciovacio.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Peter Brook", "2012-03-08 8:12:01", "Ediciones Península", "8499421423", 192,"","", 53);

insert into articles (releaseDate, name, description, discriminator, image) values ("2005-04-05 8:12:01", "Historia de un alemán", "¿Qué condujo a Alemania a la locura del nazismo? Desde la propia historia del autor, un reencuentro con las emociones y contradicciones del pueblo alemán que nos ayuda a comprender los complejos procesos que permitieron la aparición y consolidación del movimiento nazi en la sociedad alemana entre los años 1914 y 1933, y el ascenso de Hitler al poder.", "book","img/articles/historiadeunaleman.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Sebastian Haffner", "2005-04-05 8:12:01", "Booket", "8423338045", 320,"","", 54);

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-10-09 8:12:01", "Clase de literatura", "Berkeley, California, otoño de 1980. En la cima de su carrera y después de años de negativas, Julio Cortázar acepta dar un curso universitario de dos meses en los Estados Unidos. Como cabía esperar, no se tratará de conferencias magistrales sino de una serie de charlas sobre literatura, y sobre todo acerca de su experiencia de escritor y la génesis de sus obras. Las clases tratan gran diversidad de temas: aspectos del cuento fantástico; la musicalidad, el humor, el erotismo y lo lúdico en la literatura; la imaginación y el realismo, la literatura social y las trampas del lenguaje, todos ellos encarnados en lecturas y ejemplos tomados de la cultura universal. Las clases llegan a su punto máximo de interés cuando Cortázar, ya en la edad de los balances, se refiere a su evolución de escritor y analiza su obra: cómo nacieron los cronopios y cuentos insuperables como La noche boca arriba o Continuidad de los parques; el sentido de Rayuela y su proceso de escritura; el desafío de Libro de Manuel. Quien lea la minuciosa y fiel transcripción de trece horas de grabaciones, al cabo de este encuentro con el Cortázar oral, valorará lo mismo que en sus textos: la soltura y cercanía, la vastedad de lecturas, la honestidad intelectual, la imaginación y el rigor de tamaño profesor. El Cortázar que nos quedaba por conocer, este que ya entra en el aula y sonríe.", "book","img/articles/clasesdeliteratura.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Julio Cortázar", "2013-10-09 8:12:01", "Alfaguara", "8420415162", 320,"","", 55);

insert into articles (releaseDate, name, description, discriminator, image) values ("2011-02-16 8:12:01", "La vuelta de los 25", "Una ecologista china, una madre de familia del sur de África, un chamán peruano, un pescador filipino, una maorí de Nueva Zelanda, una futura cosmonauta rusa Y todos de la misma edad. ¿Qué tienen en común? ¿Qué les preocupa? ¿Cómo viven? ¿Cómo afrontan el futuro? Éstas son las preguntas que durante un año el periodista Ma rc Serena ha planteado a 25 jóvenes durante un viaje que le llevó a dar la vuelta al mundo y a convivir con chicos de su misma edad, 25 años, de 25 países diferentes. Jóvenes pobres, ricos, con estudios, sin estudios, revolucionarios, conformistas, de grandes ciudades, de pequeños pueblos Perfiles muy diferentes, pero todos actuales, sorprendentes, llenos de matices, que ofrecen nuevos puntos de vista sobre el mundo en que vivimos. El resultado es una crónica amena, sincera y divertida, que conforma un retrato generacional.", "book","img/articles/lavueltadelos25.jpg");
insert into books (author, editionDate, editorial, isbn, pages, genre, language, articleId) values ("Marc Serena Casaldaglia", "2011-02-16 8:12:01", "EDB FICCION", "8466646647", 352,"","", 56);


-- Insert articles and cds --
insert into articles (releaseDate, name, description, discriminator, image) values ("2012-09-03 19:35:27", "Tetra", "Primer álbum del grupo electrónico francés C2C", "cd","img/articles/tetra.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("C2C", "B008MMFC56", 1, 61, 57);
insert into tracks (title, duration, cd_articleId) values ("The Cell", 5, 57);
insert into tracks (title, duration, cd_articleId) values ("Down the Road", 3, 57);
insert into tracks (title, duration, cd_articleId) values ("Kings Season (feat. Blitz the Ambassador and Ledeunff and Moongai)", 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Because of You (feat. Pigeon John)", 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Delta", 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Who Are You (feat. Olivier Daysoul)", 5, 57);
insert into tracks (title, duration, cd_articleId) values ("Happy (feat. Derek Martin)" , 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Give Up the Ghost (feat. Jay-Jay Johanson)", 5, 57);
insert into tracks (title, duration, cd_articleId) values ("Genius (feat. Gush)", 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Together (feat. Blitz the Ambassador and Ledeunff)" , 5, 57);
insert into tracks (title, duration, cd_articleId) values ("Arcades", 4, 57);
insert into tracks (title, duration, cd_articleId) values ("Le Banquet (feat. Kentaro and Netik and Rafik and Tigerstyle and Vajra)", 5, 57);
insert into tracks (title, duration, cd_articleId) values ("F-U-Y-A", 5, 57);


insert into articles (releaseDate, name, description, discriminator, image) values ("2007-09-03 19:35:27", "Take The Heat Off Me", "Primer álbum del grupo vocal alemán Boney M", "cd","img/articles/taketheheatoffme.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Boney M", "B000NJLXLI", 1, 36,  58);
insert into tracks (title, duration, cd_articleId) values ("Daddy Cool", 4, 58);
insert into tracks (title, duration, cd_articleId) values ("Take The Heat Off Me", 5, 58);
insert into tracks (title, duration, cd_articleId) values ("Sunny", 4, 58);
insert into tracks (title, duration, cd_articleId) values ("Baby Do You Wanna Bump", 7, 58);
insert into tracks (title, duration, cd_articleId) values ("No Woman, No Cry", 5, 58);
insert into tracks (title, duration, cd_articleId) values ("Fever", 5, 58);
insert into tracks (title, duration, cd_articleId) values ("Got a Man On My Mind", 3, 58);
insert into tracks (title, duration, cd_articleId) values ("Lovin' Or Leavin", 5, 58);


insert into articles (releaseDate, name, description, discriminator, image) values ("2013-05-21 19:35:27", "Random Access Memories", "Cuarto álbum del famoso dúo francés Daft Punk", "cd","img/src/randomaccessmemories.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Daft Punk", "B00C061I3K", 1, 74, 59);
insert into tracks (title, duration, cd_articleId) values ("Give Life Back to Music", 5, 59);
insert into tracks (title, duration, cd_articleId) values ("The Game of Love", 5, 59);
insert into tracks (title, duration, cd_articleId) values ("Giorgio by Moroder", 9, 59);
insert into tracks (title, duration, cd_articleId) values ("Within", 4, 59);
insert into tracks (title, duration, cd_articleId) values ("Instant Crush", 6, 59);
insert into tracks (title, duration, cd_articleId) values ("Lose Yourself to Dance", 8, 59);
insert into tracks (title, duration, cd_articleId) values ("Touch", 6, 59);
insert into tracks (title, duration, cd_articleId) values ("Get Lucky", 5, 59);
insert into tracks (title, duration, cd_articleId) values ("Beyond", 6, 59);
insert into tracks (title, duration, cd_articleId) values ("Motherboard", 5, 59);
insert into tracks (title, duration, cd_articleId) values ("Fragments of Time", 5, 59);
insert into tracks (title, duration, cd_articleId) values ("Doin'it Right", 4, 59);
insert into tracks (title, duration, cd_articleId) values ("Contact", 6, 59);

insert into articles (releaseDate, name, description, discriminator, image) values ("1990-09-03 19:35:27", "Painkiller", "Álbum de la banda británica de heavy metal Judas Priest", "cd","img/articles/painkiller.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Judas Priest", "B00005Y0S3", 1, 55, 60);
insert into tracks (title, duration, cd_articleId) values ("Painkiller", 6, 60);
insert into tracks (title, duration, cd_articleId) values ("Hell Patrol", 4, 60);
insert into tracks (title, duration, cd_articleId) values ("All Guns Blazing", 4, 60);
insert into tracks (title, duration, cd_articleId) values ("Leather Rebel", 4, 60);
insert into tracks (title, duration, cd_articleId) values ("Metal Meltdown", 5, 60);
insert into tracks (title, duration, cd_articleId) values ("Night Crawler", 6, 60);
insert into tracks (title, duration, cd_articleId) values ("Between the Hammer & the Anvil", 5, 60);
insert into tracks (title, duration, cd_articleId) values ("A Touch of Evil", 6, 60);
insert into tracks (title, duration, cd_articleId) values ("Battle Hymn", 1, 60);
insert into tracks (title, duration, cd_articleId) values ("One Shot Glory", 7, 60);
insert into tracks (title, duration, cd_articleId) values ("Living Bad Dremas", 5, 60);
insert into tracks (title, duration, cd_articleId) values ("Leather Rebel(Live)", 5, 60);
insert into tracks (title, duration, cd_articleId) values ("Painkiller", 5, 60);


insert into articles (releaseDate, name, description, discriminator, image) values ("2003-12-09 19:35:27", "Splinter", "Séptimo álbum de la banda americana de punk rock The Offspring", "cd","img/articles/splinter.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("The Offspring", "B0000CC4X6", 1, 32, 61);
insert into tracks (title, duration, cd_articleId) values ("Neocon", 1, 61);
insert into tracks (title, duration, cd_articleId) values ("The Noose", 3, 61);
insert into tracks (title, duration, cd_articleId) values ("Long Way Home", 2, 61);
insert into tracks (title, duration, cd_articleId) values ("Hit That", 3, 61);
insert into tracks (title, duration, cd_articleId) values ("Race Against Myself", 4, 61);
insert into tracks (title, duration, cd_articleId) values ("(Can't Get My) Head Around You", 2, 61);
insert into tracks (title, duration, cd_articleId) values ("The Worst Hangover Ever", 3, 61);
insert into tracks (title, duration, cd_articleId) values ("Never Gonna Find Me", 3, 61);
insert into tracks (title, duration, cd_articleId) values ("Lightning Rodrigues", 3, 61);
insert into tracks (title, duration, cd_articleId) values ("Spare Me the Details", 4, 61);
insert into tracks (title, duration, cd_articleId) values ("Da Hui", 2, 61);
insert into tracks (title, duration, cd_articleId) values ("When You're in Prison", 3, 61);


insert into articles (releaseDate, name, description, discriminator, image) values ("2007-11-12 19:35:27", "Mothership", "Álbum recopilación de los mayores éxitos de la grupo de rock inglés Led Zeppelin", "cd","img/articles/mothership.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Led Zeppelin", "B000VLE3IS", 3, 135, 62);
insert into tracks (title, duration, cd_articleId) values ("Good Times Bad Times", 3, 62);
insert into tracks (title, duration, cd_articleId) values ("Communication Breakdown" , 3, 62);
insert into tracks (title, duration, cd_articleId) values ("Dazed and Confused", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Babe I'm Gonna Leave You", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Whole Lotta Love", 6, 62);
insert into tracks (title, duration, cd_articleId) values ("Ramble On", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Heartbreaker", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Immigrant Song", 3, 62);
insert into tracks (title, duration, cd_articleId) values ("Since I've Been Loving You", 8, 62);
insert into tracks (title, duration, cd_articleId) values ("Rock and Roll", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Black Dog", 5, 62);
insert into tracks (title, duration, cd_articleId) values ("When the Levee Breaks", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Stairway to Heaven", 8, 62);

insert into tracks (title, duration, cd_articleId) values ("The Song Remains the Same", 6, 62);
insert into tracks (title, duration, cd_articleId) values ("Over the Hills and Far Away", 5, 62);
insert into tracks (title, duration, cd_articleId) values ("D'yer Mak'er", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("No Quarter", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Trampled Under Foot", 6, 62);
insert into tracks (title, duration, cd_articleId) values ("Houses of the Holy", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Kashmir", 9, 62);
insert into tracks (title, duration, cd_articleId) values ("Nobody's Fault but Mine", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Achilles Last Stand", 10, 62);
insert into tracks (title, duration, cd_articleId) values ("In the Evening", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("All My Love", 6, 62);

insert into tracks (title, duration, cd_articleId) values ("We're Gonna Groove", 3, 62);
insert into tracks (title, duration, cd_articleId) values ("I Can't Quit You Baby", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Dazed and Confused (Part)", 16, 62);
insert into tracks (title, duration, cd_articleId) values ("White Summer (Part)", 12, 62);
insert into tracks (title, duration, cd_articleId) values ("What Is and What Should Never Be", 5, 62);
insert into tracks (title, duration, cd_articleId) values ("Moby Dick (Ending)", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Whole Lotta Love", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Communication Breakdown", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Bring It on Home", 7, 62);
insert into tracks (title, duration, cd_articleId) values ("Immigrant Song", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Black Dog", 6, 62);
insert into tracks (title, duration, cd_articleId) values ("Misty Mountain Hop", 5, 62);
insert into tracks (title, duration, cd_articleId) values ("The Ocean", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Going to California", 5, 62);
insert into tracks (title, duration, cd_articleId) values ("In My Time of Dying", 11, 62);
insert into tracks (title, duration, cd_articleId) values ("Stairway to Heaven", 11, 62);
insert into tracks (title, duration, cd_articleId) values ("Rock and Roll", 4, 62);
insert into tracks (title, duration, cd_articleId) values ("Nobody's Fault but Mine", 6, 62);
insert into tracks (title, duration, cd_articleId) values ("Kashmir", 9, 62);
insert into tracks (title, duration, cd_articleId) values ("Whole Lotta Love", 7, 62);


insert into articles (releaseDate, name, description, discriminator, image) values ("2013-01-17 19:35:27", "In a Time Lapse", "In a Time Lapse fue compuesto durante un periodo de dos años y grabado en octubre de 2012 en un monasterio cercano a Verona. Los catorce nuevos originales que conforman In a Time Lapse contienen piano, cuerdas, percusiones y electrónica, y toman vida en forma de suite que está concebida para ser escuchada #como los capítulos de un libro#.", "cd","img/articles/inatimelapse.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Ludovico Einaudi", "B00AIQVLV8", 1, 65, 63);
insert into tracks (title, duration, cd_articleId) values ("Corale", 2, 63);
insert into tracks (title, duration, cd_articleId) values ("Time Lapse", 6, 63);
insert into tracks (title, duration, cd_articleId) values ("Life", 4, 63);
insert into tracks (title, duration, cd_articleId) values ("Walk", 3, 63);
insert into tracks (title, duration, cd_articleId) values ("Discovery at Night", 4, 63);
insert into tracks (title, duration, cd_articleId) values ("Run", 6, 63);
insert into tracks (title, duration, cd_articleId) values ("Brothers", 5, 63);
insert into tracks (title, duration, cd_articleId) values ("Orbits", 3, 63);
insert into tracks (title, duration, cd_articleId) values ("Two Trees", 6, 63);
insert into tracks (title, duration, cd_articleId) values ("Newton's Cradle", 8, 63);
insert into tracks (title, duration, cd_articleId) values ("Waterways", 4, 63);
insert into tracks (title, duration, cd_articleId) values ("Experience", 4, 63);
insert into tracks (title, duration, cd_articleId) values ("Underwood", 5, 63);
insert into tracks (title, duration, cd_articleId) values ("Burning", 5, 63);


insert into articles (releaseDate, name, description, discriminator, image) values ("2011-04-12 19:35:27", "Wasting Light", "Último álbum de la banda creada por el ex batería de Nirvana", "cd","img/articles/wastinlight.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Foo Fighters", "B004LUHQ1G", 1, 47, 64);
insert into tracks (title, duration, cd_articleId) values ("Bridge Burning", 5, 64);
insert into tracks (title, duration, cd_articleId) values ("Rope", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("Dear Rosemary", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("White Limo", 3, 64);
insert into tracks (title, duration, cd_articleId) values ("Arlandria", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("These Days", 5, 64);
insert into tracks (title, duration, cd_articleId) values ("Back & Forth", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("A Matter Of Time", 5, 64);
insert into tracks (title, duration, cd_articleId) values ("Miss The Misery", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("I Should Have Known", 4, 64);
insert into tracks (title, duration, cd_articleId) values ("Walk", 4, 64);


insert into articles (releaseDate, name, description, discriminator, image) values ("1973-03-01 19:35:27", "Wasting Light", "Octavo álbum de la banda de rock progresivo Pink Floyd", "cd","img/articles/thedarksideofthemoon.jpg");
insert into cds (groupName, asin, discsNumber, duration,  articleId) values ("Pink Floyd", "B00008CLOA", 1, 43, 65);
insert into tracks (title, duration, cd_articleId) values ("Speak To Me", 2, 65);
insert into tracks (title, duration, cd_articleId) values ("Breathe (Breathe In The Air)", 3, 65);
insert into tracks (title, duration, cd_articleId) values ("Time", 4, 65);
insert into tracks (title, duration, cd_articleId) values ("The Great Gig In The Sky", 7, 65);
insert into tracks (title, duration, cd_articleId) values ("Money", 5, 65);
insert into tracks (title, duration, cd_articleId) values ("Us And Them", 6, 65);
insert into tracks (title, duration, cd_articleId) values ("Any Colour You Like", 8, 65);
insert into tracks (title, duration, cd_articleId) values ("Brain Damage", 3, 65);
insert into tracks (title, duration, cd_articleId) values ("Eclipse", 4, 65);
insert into tracks (title, duration, cd_articleId) values ("On The Run", 2, 65);

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-11-25 19:35:27", "Frozen", "Walt Disney Animation Studios' 'Frozen' features eight original songs from Kristen Anderson-Lopez ('In Transit,' 'Winnie the Pooh') and Tony Award-winning songwriter Robert Lopez ('Avenue Q,' 'The Book of Mormon'), plus a phenomenal score by the composer of last year's Oscar-winning short 'Paperman,' Christophe Beck. The original motion picture soundtrack, which features the end-credit recording of 'Let It Go' by Demi Lovato as well as performances by Kristen Bell, Idina Menzel, Josh Gad, Jonathan Groff and more, is available for sale on Nov. 25, 2013. Directed by Chris Buck ('Tarzan,' 'Surf's Up') and Jennifer Lee (screenwriter, 'Wreck-It Ralph'), who also wrote the screenplay, and produced by Peter Del Vecho ('Winnie the Pooh,' 'The Princess and the Frog') 'Frozen' hits theaters in 3D on Nov. 27, 2013.", "cd","img/articles/frozen.jpg");
insert into cds (groupName, asin, discsNumber, duration, articleId) values ("Demi Lovato", "B00EDY5KTA", 2, 42, 66);
insert into tracks (title, duration, cd_articleId) values ("Cast - Frozen - Corazón de Hielo", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Emma Amselem - Hazme un Muñeco de Nieve", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Carmen López - Por Primera Vez en Años", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Carmen López - La Puerta Hacia el Amor", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Gisela - ¡Sueltalo!", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Erick Cruz - Renos Mejor Que Personas", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Miguel Antelo - En Verano", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Carmen López - Por Primera Vez en Años ", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Cast - Frozen - Solo Tiene Que Mejorar un Poco ", 2, 66);
insert into tracks (title, duration, cd_articleId) values ("Demi Lovato - Let It Go", 2, 66);


insert into articles (releaseDate, name, description, discriminator, image) values ("2014-05-13 19:35:27", "Frozen", "Exclusive Mr. Brainwash poster – Michael Jackson was an early admirer of Mr. Brainwash and they became friends. Now he has created an original piece of art which has been included as a poster with the CD version.", "cd","img/articles/xscape.jpg");
insert into cds (groupName, asin, discsNumber, duration, articleId) values ("Michael Jackson", "B00JDB4PEY", 1, 42, 67);
insert into tracks (title, duration, cd_articleId) values ("Love Never Felt So Good", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Chicago", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Loving You", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("A Place With No Name", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Slave to the Rhythm", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Do You Know Where Your Children Are", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Blue Gangsta", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Xscape", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Love Never Felt So Good (Original Version)", 2, 67);
insert into tracks (title, duration, cd_articleId) values ("Chicago (Original Version)", 2, 67);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-05-19 19:35:27", "XSCApE", "Sin descripcion por el momento", "cd","img/articles/ghoststories.jpg");
insert into cds (groupName, asin, discsNumber, duration, articleId) values ("Coldplay", "B00IQE4NUK", 1, 42, 68);
insert into tracks (title, duration, cd_articleId) values ("Always In My Head", 3, 68);
insert into tracks (title, duration, cd_articleId) values ("Magic", 3, 68);
insert into tracks (title, duration, cd_articleId) values ("Ink", 3, 68);
insert into tracks (title, duration, cd_articleId) values ("True Love", 4, 68);
insert into tracks (title, duration, cd_articleId) values ("Midnight", 4, 68);
insert into tracks (title, duration, cd_articleId) values ("Another's Arms", 5, 68);
insert into tracks (title, duration, cd_articleId) values ("Oceans", 4, 68);
insert into tracks (title, duration, cd_articleId) values ("A Sky Full Of Stars", 4, 68);
insert into tracks (title, duration, cd_articleId) values ("O", 3, 68);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-05-06 19:35:27", "Frozen", "In a press release, McLachlan revealed that the album was inspired by her father's passing and her own appreciation of life: This album is about moving through the second half of my life in a more mindful and meaningful way, recognizing that every day, every moment is precious and though we all have our issues and problems, our damages, we all have the ability to continue to learn, grow from our experiences, thrive and shine on. Many of the songs are inspired at least partially or wholly by my father's passing three years ago and the profound effect losing him had on me. I had to find my footing again without the anchor of his unconditional love.", "cd","img/articles/shineon.jpg");
insert into cds (groupName, asin, discsNumber, duration, articleId) values ("Sarah McLachlan", "B00I86JUSG", 1, 42, 69);
insert into tracks (title, duration, cd_articleId) values ("In Your Shoes", 3, 69);
insert into tracks (title, duration, cd_articleId) values ("Flesh And Blood", 3, 69);
insert into tracks (title, duration, cd_articleId) values ("Monsters", 3, 69);
insert into tracks (title, duration, cd_articleId) values ("Broken Heart", 4, 69);
insert into tracks (title, duration, cd_articleId) values ("Surrender And Certainty", 4, 69);
insert into tracks (title, duration, cd_articleId) values ("Song For My Father", 5, 69);
insert into tracks (title, duration, cd_articleId) values ("Turn The Lights Down Low", 4, 69);
insert into tracks (title, duration, cd_articleId) values ("Love Beside Me", 4, 69);
insert into tracks (title, duration, cd_articleId) values ("Brink Of Destruction", 3, 69);
insert into tracks (title, duration, cd_articleId) values (" Beautiful Girl", 4, 69);
insert into tracks (title, duration, cd_articleId) values ("The Sound That Love Makes", 4, 69);


-- Insert articles and comics --
insert into articles (releaseDate, name, description, discriminator, image) values ("2008-03-19 18:14:25", "Marvels Captain America: The Winter Soldier: The Art of the Movie Slipcase", "A comic masterpiece.", "comic","img/articles/captainamerica.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion", "ingles"," Alan Moore", "2008-03-19 18:14:25", "DC Comics", "1401216676", 64,  70);
insert into comics (chapter, number, collection, articleId) values (1, 1, 16, 70);
insert into cartoonists (name, work, comic_articleId) values ("Brian Bolland","Writer",70);

insert into articles (releaseDate, name, description, discriminator, image) values ("2014-02-14 18:14:25", "Watchmen ", "This Hugo Award-winning graphic novel chronicles the fall from grace of a group of super-heroes plagued by all-too-human failings. Along the way, the concept of the super-hero is dissected as the heroes are stalked by an unknown assassin.", "comic","img/articles/watchmen.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion", "ingles", "Alan Moore", "2014-02-14 18:14:25", "DC Comics", "9788401342547", 416, 71);
insert into comics (chapter, number, collection, articleId) values (1,1,20, 71);
insert into cartoonists (name, work, comic_articleId) values ("Dave Gibbons", "Illustrator", 71);

insert into articles (releaseDate, name, description, discriminator, image) values ("2013-10-15 18:14:25", "Batman Vol. 2: The City of Owls", "NIGHT OF THE OWLS continues here! Batman must stop the TALONS that have breeched the Batcave in order to save an innocent life ... and Gotham City! In the backup story, learn more about the PENNYWORTH family and the secrets they've kept from the Wayne family! Collects BATMAN #8-12 and BATMAN ANNUAL #1.", "comic","img/articles/batmanvol2.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion", "ingles", "Scott Snyder", "2014-02-14 18:14:25", "DC Comics", "1401237789", 208, 72);
insert into comics (chapter, number, collection, articleId) values (2,2,5, 72);
insert into cartoonists (name, work, comic_articleId) values ("Rafael Albuquerque", "Illustrator", 72);




insert into articles (releaseDate, name, description, discriminator, image) values ("2011-10-28 19:35:27", "Cometas en el cielo", "Empeñado en demostrarle a su padre que ya es todo un hombre, el joven Amir se propone ganar la competición anual de cometas de la forma que sea, incluso a costa de su inseparable Hassan, un hazara de clase inferior que ha sido su sirviente y compañero de juegos desde la más tierna infancia. Después de tantos años de haberse defendido mutuamente de todos los peligros imaginables, Amir se aprovecha de la fidelidad de su amigo, poniendo en riesgo uno de los tesoros más preciados del ser humano: la amistad. Cometas en el cielo, uno de los éxitos más resonantes de los últimos tiempos, es la conmovedora historia de dos padres y dos hijos, de su amistad y de cómo la casualidad puede marcar un hito inesperado en nuestro destino.", "comic","img/articles/cometasenelcielo.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion","Español","Khaled Hosseini", "2011-10-28 8:12:01", "PUBLICACIONES Y EDICIONES SALAMANDRA S.A.", "8498383986", 136, 73);
insert into comics (chapter, number, collection, articleId) values (10,1,0,73);
insert into cartoonists (name, work, comic_articleId) values ("Fito López","Illustrator", 73);


insert into articles (releaseDate, name, description, discriminator, image) values ("2013-07-26 19:35:27", "Final Fantasy: La Leyenda de Los Cristales", "Sin descripción de momento", "comic","img/articles/finalfantasy.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion","Español","Pablo González Taboada", "2011-07-26 8:12:01", "Dolmen", "8415296959", 256, 74);
insert into comics (chapter, number, collection, articleId) values (20,1,1,74);
insert into cartoonists (name, work, comic_articleId) values ("Guity  elRey","Illustrator", 74);


insert into articles (releaseDate, name, description, discriminator, image) values ("2013-09-16 19:35:27", "Historias Perversas de Demonios: Antología", "Es un proyecto Solidario. El dinero se destinará a Felinos Bilbao. Historias Perversas de Demonios es una antología de relatos que os hará experimentar más de una sensación, que buscada o no, os revolverá vuestro ser por completo. Con una extensa temática, os llevará desde el terror hasta el género erótico, pasando por momentos de locura, celos, posesión, amor sin fin y siniestras relaciones. Ya que este libro que estáis a punto de abrir viene cargado con altas dosis de sensualidad, de misterio, de sexo... Cuando lo terminéis, ya no seréis los mismos, y miraréis cada esquina oscura, cada rincón apartado... deseando que un ser de otro plano os lleve hasta los límites de la resistencia humana. Os damos la bienvenida desde la pista central de este circo de los deseos... ¿Preparado para experimentar oscuros placeres? *** Pero sobre todo, de ilusión. De la ilusión de un variopinto grupo de creadores, que bajo la batuta de la escritora bilbaína Maialen Alonso, han aunado fuerzas en un altruista intento de mejorar la vida de cientos de animales. Ya que esta antología nace bajo la directriz de que cada céntimo recaudado se destine a la protectora Felinos Bilbao. Por lo que desde estas páginas, y a priori, os agradecemos sinceramente la adquisición de esta obra. Autores: Maialen Alonso, Enrique García Díaz, Carlos Rodón, Amy García, Roberto Malo, Déborah F. Muñoz, Inmaculada Ruiz, D.W. Nichols, Chabi Angulo, David Ruiz del Portal, Isabel García Delgado, Sergio Fdéz. A. Ilustraciones: Kike Alapont, Agarwen, Pablo Brenes Guillén, Inmaculada Ruiz, Love Macabre, Daniel Medina Ramos, Dagam (David García). ...Os dan la bienvenida a este extraño mundo en donde todo va a ser posible. Respirad hondo, henchir vuestros corazones de valor y empezad el viaje.", "comic","img/articles/historiasperversas.jpg");
insert into books (genre, language, author, editionDate, editorial, isbn, pages, articleId) values ("Ciencia-ficcion","Español","Maialen Alonso", "2013-09-16 8:12:01", "Createspace", "1492198552", 270, 75);
insert into comics (chapter, number, collection, articleId) values (10,1,3,75);
insert into cartoonists (name, work, comic_articleId) values ("Kike Alapont","Illustrator", 75);
insert into cartoonists (name, work, comic_articleId) values ("Agarwen Art","Illustrator", 75);
insert into cartoonists (name, work, comic_articleId) values ("Pablo Brenes","Illustrator", 75);

insert into users (nickname, name, surname, email, image) values ("aalopez", "Adolfo", "Álvarez López" ,"aalopez@esei.uvigo.es", "img/users/aalopez.jpg");
insert into users (nickname, name, surname, email, image) values ("mgparada", "Mauro", "Gómez Parada" ,"mgparada@esei.uvigo.es", "img/users/mgparada.jpg");
insert into users (nickname, name, surname, email, image) values ("mnceleiro", "Marcos", "Núñez Celeiro" ,"mnceleiro@esei.uvigo.es", "img/users/mnceleiro.jpg");
insert into users (nickname, name, surname, email, image) values ("lgvarela", "Luís", "González Vareña", "lgvarela@esei.uvigo.es", "img/users/lgvarela.jpg");
insert into users (nickname, name, surname, email, image) values ("tggarcia", "Tania", "Guzmán García", "tggarcia@esei.uvigo.es", "img/users/tggarcia.jpg");
insert into users (nickname, name, surname, email, image) values ("egrey", "Edgar", "Guitian Rey" ,"egrey@esei.uvigo.es", "img/users/egrey.jpg");
insert into users (nickname, name, surname, email, image) values ("rtbenavides", "Roberto", "Teixeira Benavides" ,"rtbenavides@esei.uvigo.es", "img/users/rtbenavides.jpg");