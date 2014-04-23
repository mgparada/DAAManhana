function setMovieDetails(id) {
	findArticleById(id, function(article){
		appendMovie(article);
	});
}

function setCdDetails(id) {
	
}

function setBookDetails(id) {
	
}

function setComicDetails(id) {
	
}

function appendMovie(article) {
	var toAppend = "" +
		"<div class='article_content'>" +
			"<div class='article_img'>" +
			"<a class='image_link' href='img/Guia_del_autoestopista_galactico-447876128-large.jpg' data-lightbox='coso'>" +
				"<img style='width:160px; height:190px;' src='img/Guia_del_autoestopista_galactico-447876128-large.jpg'/>" +
			"</a>" +
		"</div>" +
		"<div class='article_atributes_content'>" +
			"<div class='article_tittle'>" +
				"<b>" + article['name'] + "</b>" +
			"</div>" +
			"<div class='article_date'>" +
				"2005" +
			"</div>" +
			"<div class='article_description'>" +
				article['description'] +
			"</div>" +
		"</div>" +
		"</div>" +
		"<div class='cd_content'>" +
		"<div class='cd_atributes_1'>" +
				"<div class='cd_atribute'>" +
					"<b>Director:</b>" + article['directors']
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Productora:</b> Touchstone Pictures" +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Estilo:</b> <a href='#'>Ciencia ficción</a> <a href='#'>Comedia</a>" +
				"</div>" +
		"</div>" +
		"<div class='cd_atributes_2'>" +
				"<div class='cd_atribute'>" +
					"<b>País:</b> Estados Unidos" +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Idioma:</b> Castellano" +
				"</div>" +
				"<div class='cd_atribute'>" +
					"<b>Duración:</b> 110 minutos" +
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
		"<div class='actor_content_impar'>" +
			"<div class='actor_name'>" +
				"<a href='#'>Martin Freeman</a>" +
			"</div>" +
			"<div class='actor_paper'>" +
				"Arthur Dent" +
			"</div>" +
		"</div>" +
		
		"</div>" +
		"<div class='article_banner_content'>" +
		"<img src='img/imagen_404.jpg'  class='article_banner' alt='' />" +
		"</div>";
	
	$('#auxDiv').append(toAppend);
}

/*
 * Función para añadir un artículo y sus datos al div principal
 */
function appendArticle(name, discriminator, description, id) { 
	
	var toAppend = "<div class='element_container'>" +
			"<div class='element_img'>" +
			"<img src='' alt=''>" +
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
			"<div class='div_banner_search'>" +
				"<img src='img/imagen_404.jpg' class='img_banner_search' alt='' />" +
			"</div>" +
			"<div id='container' class='content_articles_and_users'>" +
			"</div>";
	
	$('.search_container').append(toAppend);
}
	
function setUpPagination() {
	
	var toAppend = "" +
		"<div class='container_nav_top'>" +
			"<div class='nav_button'>" +
				"<a href=''>Anterior</a>" +
			"</div>" +
			"<div class='nav_number'>" +
				"<a href=''>1</a>" +
			"</div>" +
			"<div class='nav_point'>" +
				"..." +
			"</div>" +
			"<div class='nav_button'>" +
				"<a href=''>Siguiente</a>" +
			"</div>" +
		"</div>";

	$('.search_container').append(toAppend);
}
