function findUserByName(name, page, num_results, done, fail) {
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

function findAllUsers(page, num_results, done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};

	url = 'rest/users/';
	
	if (page.length != 0 && num_results.length != 0) {
		url = 'rest/users/' + num_results + "/" + page ;
	}

	$.ajax({
		dataType: "json",
		url: url,
		type: 'GET'
	})
	.done(done)
	.fail(fail);
}

function findUserById(user_id, num_results, done, fail) {
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

function countUsers (done, fail) {
	done = typeof done !== 'undefined' ? done : function() {};
	fail = typeof fail !== 'undefined' ? fail : function() {};
	
	url = 'rest/users/count';
	
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