function countArticles(name, category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/count';
	
	if (name.length != 0) {
		url = 'rest/' + category + '/name/' + name + '/count';
	}
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
	
}

function findByName(name, category, page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/name/' + name + '/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findById(article_id, category, num_results, done, fail) {
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

function findByCategory(category, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

