function setMovieDetails(id) {
	findArticleById(id, function(article){
		appendMovie(article);
	});
}

function setCdDetails(id) {
	findArticleById(id, function(article){
		appendCd(article);
	});
}

function setBookDetails(id) {
	findArticleById(id, function(article){
		appendBook(article);
	});
}

function setComicDetails(id) {
	findArticleById(id, function(article){
		appendComic(article);
	});
}


function appendComic(article) {
	var date = article['releaseDate'].split("-");
	
	var toAppend = "<div class='article_content'>" +
				"<div class='article_img'>" +
					"<a class='image_link' href='img/comics_amazing_spider_man_700_variant.jpg' data-lightbox='coso'>" +
						"<img style='width:180px; height:190px;' src='img/comics_amazing_spider_man_700_variant.jpg'/>" +
					"</a>" +
				"</div>" +
				"<div class='article_atributes_content'>" +
					"<div class='article_tittle'>" +
						"<b>" + article["name"] + "</b>" +
					"</div>" +
					"<div class='article_date'>" +
						date[2] + "-" + date[1] + "-" + date[0] +
					"</div>" +
					"<div class='article_description'>" +
						 article["description"] +
					"</div>" +
				"</div>" +
			"</div>" +
			"<div class='cd_content'>" +
				"<div class='cd_atributes_1'>" +
						"<div class='cd_atribute'>" +
							"<b>Autor:</b> <a href='#'>" + article["author"] + "</a> y <a href='#'>¿MAIS?</a>" +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>Editorial:</b> " + article["editorial"] +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>Género:</b> <a href='#'>Comic</a>" +
						"</div>" +
				"</div>" +
				"<!-- Idioma + Numero + Coleccion -->" +
				"<div class='cd_atributes_2'>" +
						"<div class='cd_atribute'>" +
							"<b>Idioma:</b> FALTA" +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>Número: ¿Capitulo? </b> " + article["chapter"] +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>Paginas: </b> " + article["pages"] +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>ISBN: </b> " + article["isbn"] +
						"</div>" +
						"<div class='cd_atribute'>" +
							"<b>Colección:</b> FALTA" +
						"</div>" +
				"</div>" +
			"</div>" +
			"<div class='ilustrators_content'>" +
				"<div class='ilustrator_head_content'>" +
					"<div class='ilustrator_name'>" +
						"<b>Nombre</b>" +
					"</div>" +
					"<div class='ilustrator_job'>" +
						"<b>Trabajo</b>" +
					"</div>" +
				"</div>" +
				
				"<!-- Dibujante -->" +
				"<div class='ilustrator_content_impar'>" +
					"<div class='ilustrator_name'>" +
						"<a href='#'>Steve Ditko</a>" +
					"</div>" +
					"<div class='ilustrator_job'>" +
						"Dibujante" +
					"</div>" +
				"</div>" +
				"<!--       -->" +
			
			"</div>" +		
			"<!-- Banner -->" +
			"<div class='article_banner_content'>" +
				"<img src='img/imagen_404.jpg'  class='article_banner' alt='' />" +
			"</div>";
	
	$('#auxDiv').append(toAppend);
}

function appendBook(article) {
	var date = article['releaseDate'].split("-");
	var editionDate = article['editionDate'].split("-");
	
	var toAppend = "<div class='article_content'>" +
		"<div class='article_img'>" +
			"<a class='image_link' href='img/Esdla-libro.jpg' data-lightbox='coso'>" +
				"<img style='width:150px; height:190px;' src='img/Esdla-libro.jpg'/>" +
			"</a>" +
		"</div>" +
		"<div class='article_atributes_content'>" +
			"<div class='article_tittle'>" +
				"<b>" + article["name"] + "</b>" +
			"</div>" +
			"<div class='article_date'>" +
				date[2] + "-" + date[1] + "-" + date[0] +
			"</div>" +
			"<div class='article_description'>" +
				article["description"] +
			"</div>" +
		"</div>" +
	"</div>" +
	"<div class='cd_content'>" +
		"<div class='cd_atributes_1'>" +
				"<div class='cd_atribute'>" +
					"<b>Autor:</b> <a href='#'>" + article["author"] + "</a>" +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Editorial:</b> " + article["editorial"] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Género:</b> <a href='#'>FALTA</a>" +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Estilo:</b> FALTA1, FALTA2" +
				"</div>" +
		"</div>" +
		"<div class='cd_atributes_2'>" +
				"<div class='cd_atribute'>" +
					"<b>ISBN:</b> " + article["isbn"] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Idioma:</b> FALTA" + 
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Páginas:</b> " + article["pages"] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Fecha de Edición:</b> " + editionDate[2] + "-" + editionDate[1] + "-" + editionDate[0] +
				"</div>" +
		"</div>" +
	"</div>" +
	"<!-- Banner -->" +
	"<div class='article_banner_content'>" +
		"<img src='img/imagen_404.jpg'  class='article_banner' alt='' />" +
	"</div>";
	
	$('#auxDiv').append(toAppend);
}

function appendCd(article) {
	var date = article['releaseDate'].split("-");
	
	var toAppend = "<div class='article_content'>" +
			"<div class='article_img'>" +
				"<a class='image_link' href='img/tumblr_n3tfcvdwpB1qduclao1_500.jpg' data-lightbox='coso'>" +
					"<img style='width:200px; height:190px;' src='img/tumblr_n3tfcvdwpB1qduclao1_500.jpg'/>" +
				"</a>" +
			"</div>" +
			"<div class='article_atributes_content'>" +
				"<div class='article_tittle'>" +
					"<a href='#' class='article_autor'>NOMBRE_GRUPO</a><b>" + article["name"] + "</b>" +
				"</div>" +
				"<div class='article_date'>" +
					date[2] + "-" + date[1] + "-" + date[0] +
				"</div>" +
				"<div class='article_description'>" +
					article["description"] +
				"</div>" +
			"</div>" +
		"</div>" +
		"<div class='cd_content'>" +
			"<div class='cd_atributes_1'>" +
					"<div class='cd_atribute'>" +
						"<b>Discográfica:</b> FALTA" +
					"</div>" +
					"<div class='cd_atribute'>" +
						"<b>ASIN:</b> FALTA" +
					"</div>" +
					"<div class='cd_atribute'>" +
						"<b>Estilo:</b> FALTA1, FALTA2.." +
					"</div>" +
			"</div>" +
			"<div class='cd_atributes_2'>" +
					"<div class='cd_atribute'>" +
						"<b>Nº Discos:</b> FALTA" +
					"</div>" +
					"<div class='cd_atribute'>" +
						"<b>Nº Pistas:</b> FALTA" +
					"</div>" +
					"<div class='cd_atribute'>" +
					"<b>Duración:</b> " + article["duration"] + " minutos" +
				"</div>" +
			"</div>" +
		"</div>" +
		"<!-- Pistas -->" +
		"<div class='tasks_content'>" +
			"<div class='task_head_content'>" +
				"<div class='task_number'>" +
					"<b>Nº</b>" +
				"</div>" +
				"<div class='task_name'>" +
					"<b>Título</b>" +
				"</div>" +
				"<div class='task_legth'>" +
					"<b>Duración</b>" +
				"</div>" +
			"</div>" +
			
			"<div class='task_content_impar'>" +
				"<div class='task_number'>" +
					"1." +
				"</div>" +
				"<div class='task_name'>" +
					"Hells Bells" +
				"</div>" +
				"<div class='task_legth'>" +
					"5:13" +
				"</div>" +
			"</div>" +
		"</div>" +
		"<div class='article_banner_content'>" +
			"<img src='img/imagen_404.jpg'  class='article_banner' alt='' />" +
		"</div>";
	
	$('#auxDiv').append(toAppend);
}

function appendMovie(article) {
	var date = article['releaseDate'].split("-");
	var actors = ""
	
	$.each(article['actors'], function(k, v) {
		var toConcat = 
			"<div class='actor_content_impar'>" +
					"<div class='actor_name'>" +
					"<a href='#'>" + v + "</a>" +
				"</div>"+
			"</div>";
		
		actors = actors.concat(toConcat)
	})
	
	var toAppend = "" +
		"<div class='article_content'>" +
			"<div class='article_img'>" +
			"<a class='image_link' href='" + article["image"] + "' data-lightbox='coso'>" +
				"<img style='width:160px; height:190px;' src='" + article["image"] + "'/>" +
			"</a>" +
		"</div>" +
		"<div class='article_atributes_content'>" +
			"<div class='article_tittle'>" +
				"<b>" + article['name'] + "</b>" +
			"</div>" +
			"<div class='article_date'>" +
				date[2] + "-" + date[1] + "-" + date[0] +
			"</div>" +
			"<div class='article_description'>" +
				article['description'] +
			"</div>" +
		"</div>" +
		"</div>" +
		"<div class='cd_content'>" +
		"<div class='cd_atributes_1'>" +
				"<div class='cd_atribute'>" +
					"<b>Director: </b>" + article['directors'] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Productora:</b> " + article['producer'] +
				"</div>" +
		"</div>" +
		"<div class='cd_atributes_2'>" +
				"<div class='cd_atribute'>" +
					"<b>País:</b> " +  article['country'] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Idioma:</b> " +  article['language'] +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Duración:</b> " +  article['duration'] + " min" +
				"</div>" +
		"</div>" +
		"</div>" +
		"<div class='actors_content'>" +
			"<div class='actor_head_content'>" +
				"<div class='actor_name'>" +
					"<b>Nombre</b>" +
				"</div>" +
			"<div class='actor_paper'>" +
				"<b>Papel</b>" +
			"</div>" +
		"</div>" +
			actors +
		"<div class='article_banner_content'>" +
			"<img src='img/imagen_404.jpg'  class='article_banner' alt='' />" +
		"</div>";
	
	$('#auxDiv').append(toAppend);
}

/*
 * Función para añadir un artículo y sus datos al div principal
 */
function appendArticle(name, discriminator, description, id, image) { 
	alert(image);
	var toAppend = "<div class='element_container'>" +
			"<div class='element_img'>" +
			"<img style='width: 160px; height: 190px;' src='" + image + "' alt=''>" +
			"</div>" +
			"<div class='element_description_container'>" +
				"<div class='element_name'>" +
					"<a id="+ id +" class='element_link' data-category=" + discriminator + " href='#' onclick='show_element(this)'>" + name + "</a>" +
				"</div>"+
				"<div class='element_cat'><img src='img/" + discriminator + ".png' class='img_cat'/></div>"+
				"<div class='element_description'>" + description + "</div>"+
			"</div>"+
		"</div>";
	
	$("#container").append(toAppend);
}

function setUpDivs() {
	var toAppend = "" +
			"<div id='container' class='content_articles_and_users'>" +
			"</div>";
	
	$('.search_container').append(toAppend);
}