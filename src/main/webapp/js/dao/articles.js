function findByName(article_name, category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/name/' + article_name;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findById(article_id, category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/' + article_id;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findByCategory(category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/';
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

