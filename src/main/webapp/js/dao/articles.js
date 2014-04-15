//function findByName(article_name, category, done, fail) {
//	done = typeof done !== 'undefined' ? done : function() {};
//	fail = typeof fail !== 'undefined' ? fail : function() {};
//	
//	url = 'rest/' + category + '/name/' + article_name;
//	
//	$.ajax({
//		dataType: "json",
//		url: url,
//		type: 'GET'
//	})
//	.done(done)
//	.fail(fail);
//}

// PROVISIONAL
var num_results = 10;
var page = 1;

function findByName(article_name, category, page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/' + category + '/name/' + article_name + '/' + num_results + '/' + page;
	
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
	
	url = 'rest/' + category + '/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

