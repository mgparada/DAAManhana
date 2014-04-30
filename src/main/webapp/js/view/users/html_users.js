/*
 * Función para añadir un artículo y sus datos al div principal
 */
function appendUser(name) {	
	var toAppend = 
		"<!-- Elemento User -->"
		+ "<div class='element_container'>"
			+ "<div class='user_img'>"
				+ "<img class='img_radius' src='tumblr_n3tfcvdwpB1qduclao1_500.jpg'/>"
			+ "</div>"
			+ "<div class='element_description_container'>"
				+ "<div class='element_name'><a id='article0' href='#'Nombre</a>" + name + "</div>"
				+ "<div class='element_cat'><img src='img/user.png' class='img_cat'/></div>"
				+ "<div class='element_description'>Datos varios</div>" + "</div>"
			+ "</div>";

	$("#container").append(toAppend);
}