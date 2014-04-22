// Variables globales
var num_results;
var page;
var actual_name;
var actual_category;
var count;
var do_count;

function initContext(category) {
//	category = typeof category !== "undefined" ? category : "articles";
	do_count = true;
	num_results = 10;
	page = 1;
	count = 0;
	actual_name = "";
	
	// Si no le paso nada como parámetro a la función actual_category no se actualiza.
	// Esto se usa para que al pulsar el botón "buscar" se mantenga la configuración de la última búsqueda
	actual_category = typeof category !== "undefined" ? actual_category : "articles";
}


/**
 * Este evento se dispara cuando se hace click en alguno de los tipos de articulos (CD, Peliculas, Libros o Cómics).
 * Se obtiene el texto introducido en el input y la categoría en la que se disparó el evento
 * y se llama a la funcion de /dao/article.js findByName, pasandole esos parámetros
 * 
 * En caso de que el input no tenga valor, la función devolverá todos los elementos de la categoría
 */
$(".subart").on("click", function(){
	initContext();
	
	actual_name = getInputText();
	actual_category = $(this).data("category");
	
	setUpSearchResultDiv();
	
	if( actual_name != "" ) {
		findArticlesByName();
	}else
		findAllArticlesByCategory();
});


/**
 * Este evento se dispara cuando se hace click en la imagen de búsqueda (lupa).
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$(".img_search").on("click",function(){
	initContext(actual_category);
	
	actual_name = getInputText();
	
	setUpSearchResultDiv();
	
	if(actual_name != "") {
		findArticlesByName();
	} else
		findAllArticlesByCategory();
});

/**
 * Este evento se dispara cuando se hace click en la pestaña de "Todos".
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$("#first").on("click",function(){
	initContext();
	
	actual_name = getInputText();
	
	setUpSearchResultDiv();

	if(actual_name != "") {
		findArticlesByName();
	}else
		findAllArticlesByCategory();
});

$(".search_result_count").on('click', '#next_page', function(){
	do_count = false;
	page++;

	setUpSearchResultDiv();
	
	if(actual_name != "") {
		findArticlesByName();
	}else
		findAllArticlesByCategory();
});

$(".search_result_count").on('click', '#previous_page', function(){
	do_count = false;
	page--;

	setUpSearchResultDiv();
	
	if(actual_name != "") {
		findArticlesByName();
	}else
		findAllArticlesByCategory();
});



/**
 * Función interna para obtener el valor del input text
 */
function getInputText() {
	return $(".input_search").val();
}

/*
 * Función para poner los valores por defecto (vacio) del
 * div en los que se muestran los resultados, y el contador de resultados mostrados.
 */
function setUpSearchResultDiv() {
	$(".search_result").empty();
	$('.search_result_count').empty();
}

/*
 * Función para obtener los artículos por nombre y categoría
 * Los obtiene y los muestra en el div, además de mostrar el número de ocurrencias
 */
function findArticlesByName() {
	if (do_count) {
		countArticles(actual_name, actual_category, function(a) {
			count = a;
			alert(count);
		});
	}
	
	findByName(actual_name, actual_category, page, num_results, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		setPaginationInfo(articles);
	});
}

/*
 * Función para obtener los artículos por categoría
 * Los obtiene y los muestra en el div, además de mostrar el número de ocurrencias
 */
function findAllArticlesByCategory() {
	if (do_count) {
		countArticles(actual_name, actual_category, function(c) {
			count = c;
			alert(count);
		});
	}
	
	findByCategory(actual_category, num_results, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		setPaginationInfo(articles);
	});
}


function setPaginationInfo(articles) {
	upper_bound = page * num_results - (num_results - articles.length);
	
	if ( articles.length != 0 ) {
		lower_bound = page * num_results - (num_results - 1);
	} else {
		lower_bound = 0;
	}
	
	if (page > 1) {
		$('.search_result_count').append(
		'<div id="pagination_left" style="float:left; display:inline;">'
		+ '<a id="previous_page" href="#">Anterior</a>'
		+ '</div>'
		);
	}
	
	if (upper_bound < count) {
		$('.search_result_count').append(
				'<div id="pagination_right" style="float: right; display: inline;">'
				+ '<a id="next_page" href="#">Siguiente</a>'
				+ '</div>'
		);
	}
	
	if ( articles.length != 0) {
		$('.search_result_count').append(
				'<div style="text-align: center;">'
				+ '<span> Se muestran articulos del '
				+ lower_bound + " al " + upper_bound + 
				" de un total de " + count + ".</span></div>"	
		);	
	} else {
		$('.search_result_count').append(
				'<div style="text-align: center;">'
				+ '<span> No se han encontrado artículos.</span>'
				+ '</span></div>'
		);
	}
}


/*
 * Función para añadir un artículo y sus datos al div principal
 */
function appendArticle(name, discriminator, description) {
	var category = getCategory(discriminator);
	var toAppend = "<div class='element_container'>" +
			"<div class='element_img'>" +
			"<img src='' alt=''>" +
			"</div>" +
			"<div class='element_description_contaniner'>" +
				"<div class='element_name'><a id='article0' href='#' onclick='detailProduct(0);'>" + name + "</a></div>"+
				"<div class='element_cat'>" + category + "</div>"+
				"<div class='element_description'>" + description + "</div>"+
			"</div>"+
		"</div>";
	
	$(".search_result").append(toAppend);
}

/*
 * Función que obtiene la cateoría del artículo para mostrarla correctamente
 */
function getCategory(discriminator) {
	switch(discriminator) {
		case "book": return "Libro"; break;
		case "movie": return "Película"; break;
		case "comic": return "Comic"; break;
		case "cd": return "CD"; break;
	}
}



