function findByName(article_name, category, function_done, fail) {
	function_done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	$.ajax({
		url: 'rest/' + category + "/name",
		type: 'GET',
		data: {name: article_name}
	})
	.done(function_done)
	.fail(fail);
}