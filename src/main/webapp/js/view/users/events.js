/**
 * Este evento se dispara cuando se hace click en la imagen de búsqueda (lupa).
 * En caso de que en el input se hubiera introducido texto, se buscan los articulos que lo contengan.
 * En caso contrario, se obtienen todos los articulos.
 */
$(".img_search").on("click",function(){
	setUpSearchResultDiv();
	initContext("users");
	setUpDivs();
	
	actual_name = $("#search_users").val();
	
	if(actual_name != "") {
		searchUserByName(actual_name);
	} else
		allUsers();
	
	changeContent(0);
});


$(document).on("click", ".usr_name", function() {
	userByNickname( $(this).text() );
	
	changeContent(7);
});