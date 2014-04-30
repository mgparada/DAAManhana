// Variables globales
var num_results;
var page;
var actual_name;
var actual_category;
var count;
var do_count;
var show_ad;

function initContext(category) {
	do_count = true;
	num_results = 10;
	page = 1;
	actual_name = "";
	count = 1;
	$(".div_banner_search").css('display', '');
	
	totalPages();
}


function totalPages() {
	countArticles($("#search_articles").val(), $(".select_article").val(), 
		function(a){
			count = Math.ceil(a/10);
	});
}

function showLastInsertedArticles() {
	setUpSearchResultDiv();
	initContext();
	setUpDivs();
	$(".div_banner_search").css('display', 'none');
	findLastestArticles();
}


$(document).ready(function() {
	showLastInsertedArticles();
});

$("#articles").on("click", function() {
	showLastInsertedArticles();
});

$(".logo").on("click", function() {
	showLastInsertedArticles();
});

/**
 * Este evento se dispara cuando se hace click en alguno de los tipos de articulos (CD, Peliculas, Libros o Cómics).
 * Se obtiene el texto introducido en el input y la categoría en la que se disparó el evento
 * y se llama a la funcion de /dao/article.js findByName, pasandole esos parámetros
 * 
 * En caso de que el input no tenga valor, la función devolverá todos los elementos de la categoría
 */
$(".subart").on("click", function(){	
	setUpSearchResultDiv();
	initContext();
	setUpDivs();
	
	actual_name = getInputText();
	actual_category = $(this).data("category");
	
	if( actual_name != "" ) {
		findArticlesByName();
	}else
		findAllArticlesByCategory();
	
	setUpPagination();
});


/**
 * Este evento se dispara cuando se hace click en la imagen de búsqueda (lupa).
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$(".img_search_2").on("click",function() {
	setUpSearchResultDiv();
	initContext(actual_category);
	setUpDivs();
	
	actual_name = getInputText();
	actual_category = $(".select_article").val();

	if(actual_name != "") {
		findArticlesByName();
	} else
		findAllArticlesByCategory();
	
	setUpPagination();
});

function setUpPagination() {	
	var options = {
            currentPage: 1,
            totalPages: count,
            onPageClicked: function(e,originalEvent,type,page) {            	
            	setUpSearchResultDiv();
            	setUpDivs();
            	
            	if($("#search_articles").val() !== '')
	            	findByName( $("#search_articles").val(), $(".select_article").val(), page, 10, function(articles){
	            		$.each(articles, function(key, value) {
	            			appendArticle(value["name"], value["discriminator"], value["description"], value["id"], value["image"]);
	            		});
	            	});
            	else
            		findByCategory( $(".select_article").val(), page, 10, function(articles){
            			$.each(articles, function(key, value) {
            				appendArticle(value["name"], value["discriminator"], value["description"], value["id"], value["image"]);
            			});
            		});
            },
            onPageChanged: function(e,oldPage,newPage){
            	var paginator = $(".pagination:first").clone(true);
            	
            	$(".pagination:eq(1)").remove();
            	
            	$(paginator).insertBefore(".search_container");
            	$(paginator).insertAfter(".search_container");
            }
    	};

	if( $(".pagination").length <= 0 ) {
		$('.paginator').bootstrapPaginator(options);
		$('.pagination').clone(true).insertAfter(".search_container");
	}
}

/*
 * Función para mostrar los detalles de un elemento en concreto
 */
function show_element(that) {
	$('#auxDiv').empty();
	
	setElementDetails($(that).data("category"), $(that).attr("id"));
	
	changeContent(7);
}


function setElementDetails(category, id) {
	switch(category) {
		case 'movie': 
				setMovieDetails(id);
			break;
			
		case 'cd':
				setCdDetails(id);
			break;
			
		case 'comic':
				setComicDetails(id);
			break;
			
		case 'book':
				setBookDetails(id);
			break;
	}
}

/**
 * Función interna para obtener el valor del input text
 */
function getInputText() {
	return $("#search_articles").val();
}

/*
 * Función para poner los valores por defecto (vacio) del
 * div en los que se muestran los resultados, y el contador de resultados mostrados.
 */
function setUpSearchResultDiv() {
	$('.search_container').empty();
	$("#container").empty();
	$('.search_result_count').empty();
}

/*
 * Función para obtener los artículos por nombre y categoría
 * Los obtiene y los muestra en el div, además de mostrar el número de ocurrencias
 */
function findArticlesByName() {	
	findByName(actual_name, actual_category, page, num_results, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"], value["id"], value["image"]);
		});
		setPaginationInfo(articles);
	});
}

function findLastestArticles() {
	findLastestArticlesByPage(page, num_results, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"], value["id"], value["image"]);
		});
		setPaginationInfo(articles);
	});	
}

/*
 * Función para obtener los artículos por categoría
 * Los obtiene y los muestra en el div, además de mostrar el número de ocurrencias
 */
function findAllArticlesByCategory() {	
	findByCategory(actual_category, page, num_results, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"], value["id"], value["image"]);
		});
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


