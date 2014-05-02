function searchUserByName(name) {
	findUserByName(name, function(user) {
		$.each(user, function(key, value) {
			appendUser(value);
		});
	});
}

function allUsers() {
	findAllUsers(page, num_results, function(users) {
		$.each(users, function(key, value) {
			appendUser(value);
		});
	});
}

function userByNickname(nickname) {
	findUserByNickname(nickname, function(user) {
		appendFullUser(user);
	});
}

/*
 * Función para mostrar los usuarios
 */
function appendUser(user) {	
	var toAppend = 
		"<!-- Elemento User -->"
		+ "<div class='element_container'>"
			+ "<div class='user_img'>"
				+ "<img class='img_radius' src='" + user["image"] + "'/>"
			+ "</div>"
			+ "<div class='element_description_container'>"
				+ "<div class='element_name'><a class='usr_name' href='#'Nombre</a>" + user["nickname"] + "</div>"
				+ "<div class='element_cat'><img src='img/user.png' class='img_cat'/></div>"
				+ "<div class='element_description'>"
					+ "<span>" + user["name"] + " " + user["surname"] + "</span>" 
				+ "</div>"
			+"</div>"
		+ "</div>";

	$("#container").append(toAppend);
}

/*
 * Función para mostrar los datos completos de un usuario
 */
function appendFullUser(user) {	
	var toAppend = 
		"<!-- Elemento User -->"
		+ "<div class='element_container'>"
			+ "<div class='user_img'>"
				+ "<a class='image_link' href='" + user["image"] + "' data-lightbox='coso'>"
					+ "<img class='img_radius' style='width:180px; height:190px;' src='" + user["image"] + "'/>"
				+ "</a>"
			+ "</div>"
			+ "<div class='element_description_container'>"
				+ "<div class='element_name'><span>" + user["nickname"] + "</span></div>"
				+ "<div class='element_cat'><img src='img/user.png' class='img_cat'/></div>"
				+ "<div class='element_description'>"
					+ "<p><b>Nombre: </b>" + user["name"] + " " + user["surname"] + "</p>"
					+ "<p><b>Correo electrónico: </b>" + user["email"] + "</p>"
				+ "</div>" 
			+ "</div>"
		+ "</div>";

	$('#auxDiv').empty();
	$("#auxDiv").append(toAppend);
}