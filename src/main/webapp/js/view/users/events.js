// Variables globales
var num_results;
var page;
var actual_name;
var count;
var do_count;

function initContext(category) {
	do_count = true;
	num_results = 10;
	page = 1;
	count = 0;
	actual_name = "";
}

/**
 * Este evento se dispara cuando se hace click en la imagen de búsqueda (lupa).
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$(".img_search").on("click",function(){
	initContext(actual_category);
	
	actual_name = getInputText();
	actual_category = $(".select_article").val();
	
	setUpSearchResultDiv();
	
	if(actual_name != "") {
		findArticlesByName();
	} else
		findAllArticlesByCategory();
});