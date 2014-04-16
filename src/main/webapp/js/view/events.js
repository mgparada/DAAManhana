// PROVISIONAL
var num_results;
var page;
var actual_name;	// Necesitas mantener un nombre global entre llamadas a las funciones js (por paginacion)
var actualCategory;

function initFunction() {
	num_results = 10;
	page = 1;
}
/**
 * Este evento se dispara cuando se hace click en alguno de los tipos de articulos (CD, Peliculas, Libros o Cómics).
 * Se obtiene el texto introducido en el input y la categoría en la que se disparó el evento
 * y se llama a la funcion de /dao/article.js findByName, pasandole esos parámetros
 * 
 * En caso de que el input no tenga valor, la función devolverá todos los elementos de la categoría
 */
$(".subart").on("click", function(){
	initFunction();
	var name = getInputText();
	var category = $(this).data("category");
	
	setUpSearchResultDiv();
	
	if( name != "" ) {
		findArticlesByName(name, category);
	}else
		findAllArticlesByCategory(category);
	
	
});


/**
 * Este evento se dispara cuando se hace click en la imagen de búsqueda (lupa).
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$(".img_search").on("click",function(){
	initFunction();
	var name = getInputText();
	actual_name = name;
	
	setUpSearchResultDiv();
	
	if(name != "") {
		findArticlesByName(name);
	}else
		findAllArticlesByCategory("articles");
});

/**
 * Este evento se dispara cuando se hace click en la pestaña de "Todos".
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$("#first").on("click",function(){
	initFunction();
	var name = getInputText();
	actual_name = name;
	
	setUpSearchResultDiv();

	if(name != "") {
		findArticlesByName(name);
	}else
		findAllArticlesByCategory("articles");
});

$(".search_result_count").on('click', '#next_page', function(){
	name = actual_name;
	category = actual_category;
	page++;
	
	setUpSearchResultDiv();
	
	if(name != "") {
		findArticlesByName(name);
	}else
		findAllArticlesByCategory("articles");
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
function findArticlesByName(name, category) {
	category = typeof category !== "undefined" ? category : "articles";
	page = typeof page !== "undefined" ? page : 1;
	num_results = typeof num_results !== "undefined" ? num_results : 10;
	
	findByName(name, category, page, num_results, function(articles){
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
function findAllArticlesByCategory(category) {
	findByCategory(category, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		setPaginationInfo(articles);
	});
}


function setPaginationInfo(articles) {
	if (articles.length == 10) {
		$('.search_result_count').append(
				'<div id="pagination_left" style="float: left; display: inline;">'
				+ '<a id="previous_page" href="#">Anterior</a>'
				+ '</div>'
				+ '<div id="pagination_right" style="float: right;display: inline;">'
				+ '<a id="next_page" href="#">Siguiente</a>'
				+ '</div>'
		);
	} else if ( articles.length != 0) {
		$('.search_result_count').append(
				'<div style="text-align: center;">'
				+ '<span> Se muestran los artículos del ' 			// pagina 1 limite 10 por pagina serían:
				+ (page * articles.length - articles.length + 1)	// del 1 (1 * 10 - 1) = 1
				+ " al " + (page * articles.length) + ".</span></div>"	// al 10 (1 * 10) = 10
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



