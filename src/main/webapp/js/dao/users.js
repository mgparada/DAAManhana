function findByName(name, page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/users/name/' + name + '/' + num_results + '/' + page;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findById(user_id, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/users/' + user_id;
	
	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}