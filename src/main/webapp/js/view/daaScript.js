/***************************************************************************/
/***************************************************************************/

/*-----------------------------*/
//Cambio de pestaña de busqueda
function changeTab(aux) {
	document.getElementById('tab1').style.display = 'none';
	document.getElementById('tab2').style.display = 'none';
	
	$('.search_container').empty();
	
	$('ul.tabs li:first').addClass('active');
	$('ul.tabs li').on('click',function(){
		$('ul.tabs li').removeClass('active');
		$(this).addClass('active')
		var activeTab = $(this).find('a').attr('href');
	});
	
	switch (aux) {
		case 0:
			document.getElementById('tab1').style.display = 'block';
			break;
		case 1:
			document.getElementById('tab2').style.display = 'block';
			break;
	}
}
/*-----------------------------*/

/*-----------------------------*/
//Intercambia los tabs de forma din�mica
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