/***************************************************************************/
/***************************************************************************/

/*-----------------------------*/
//Detalla un artículo
function detailProduct(id) {
	$(document).ready(function() { //ERROR ESTO NO VA
                $("#article"+id).click(function(event) {
                    $("#auxDiv").load('productDetail.html');
                });
            });
	changeContent(7);
}

/*-----------------------------*/

/*-----------------------------*/
//Intercambia los tabs de forma dinámica
function changeContent(aux) {
		
	//Oculta todos para garantizar que solo se muestra el elegido (primero oculta, luego muestra)
	document.getElementById('auxDiv').style.display = 'none';
	document.getElementById('contentDiv').style.display = 'none';
	document.getElementById('loginDiv').style.display = 'none';
	document.getElementById('registerDiv').style.display = 'none';
	document.getElementById('searchDiv').style.display = 'none';
	document.getElementById('aboutDiv').style.display = 'none';
	document.getElementById('supportDiv').style.display = 'none';
	document.getElementById('termsDiv').style.display = 'none';
	document.getElementById('privacyDiv').style.display = 'none';
	
	switch (aux) {
		case 0:
			document.getElementById('searchDiv').style.display = 'block';
			break;
		case 1:
			document.getElementById('aboutDiv').style.display = 'block';
			break;
		case 2:
			document.getElementById('supportDiv').style.display = 'block';
			break;
		case 3:
			document.getElementById('termsDiv').style.display = 'block';
			break;
		case 4:
			document.getElementById('privacyDiv').style.display = 'block';
			break;
		case 5:
			document.getElementById('loginDiv').style.display = 'block';
			break;
		case 6:
			document.getElementById('registerDiv').style.display = 'block';
			break;
		case 7:
			document.getElementById('auxDiv').style.display = 'block';
			break;
		default:
			document.getElementById('contentDiv').style.display = 'block';
	}			
}
/*-----------------------------*/

/***************************************************************************/
/***************************************************************************/