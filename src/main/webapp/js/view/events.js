/**
 * Buscar por categoria
 */
$(".subart").on("click", function(){
	var name = $(".input_search").val();
	var category = $(this).data("category");
	
	$(".search_result").empty();
	$('.search_result_count').empty();
	
	findByName(name, category, function(articles) {
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		$('.search_result_count').append("<span> Se han encontrado " + articles.length + " resultados.</span>");
	});
});


/**
 * Buscar por todos los articulos por nombre, independiente de categoria
 */
$(".img_search").on("click",function(){
	var name = $(".input_search").val();
	
	$(".search_result").empty();
	$('.search_result_count').empty();
	
	if(name == "")
		findArticles();
	else
		findArticlesByName(name);
});

/**
 * Buscar todos los articulos 
 */
$("#first").on("click",function(){
	var name = $(".input_search").val();
	
	$(".search_result").empty();
	$('.search_result_count').empty();

	if(name == "")
		findArticles();
	else
	findArticlesByName(name);
});


function findArticlesByName(name) {
	findAllByName(name, function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		$('.search_result_count').append("<span> Se han encontrado " + articles.length + " resultados.</span>");
	});
}

function findArticles() {
	findAll(function(articles){
		$.each(articles, function(key, value) {
			appendArticle(value["name"], value["discriminator"], value["description"]);
		});
		$('.search_result_count').append("<span> Se han encontrado " + articles.length + " resultados.</span>");
	});
}

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

function getCategory(discriminator) {
	switch(discriminator) {
		case "book": return "Libro"; break;
		case "movie": return "Película"; break;
		case "comic": return "Comic"; break;
		case "cd": return "CD"; break;
	}
}