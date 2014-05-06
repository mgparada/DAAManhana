function countArticles(name, category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/count';
	
	if (name.length != 0) {
		url = 'rest/' + category + '/name/' + name + '/count';
	}
	
	$.ajax({
		dataType: "JSON",
		url: url,
		async: false,
		header: 'Content-type: application/json',
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
		dataType: "JSON",
		url: url,
		header: 'Content-type: application/json',
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findArticleById(article_id, category, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	category = typeof category !== 'undefined' ? category : "articles";
	
	url = 'rest/' + category + '/' + article_id;
	
	$.ajax({
		dataType: "JSON",
		url: url,
		header: 'Content-type: application/json',
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findByCategory(category, page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "JSON",
		url: url,
		header: 'Content-type: application/json',
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findLastestArticlesByPage(page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/articles/last/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "json",
		url: url,
		header: 'Content-type: application/json',
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

