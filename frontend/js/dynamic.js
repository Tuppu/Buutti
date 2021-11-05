var base_url = window.location.origin;
var backend_url = base_url + '/backend';

window.onload = () => {
}

var getJSON = function(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function() {
      var status = xhr.status;
      if (status === 200) {
        callback(null, xhr.response);
      } else {
        callback(status, xhr.response);
      }
    };
    xhr.send();
};

var postJSON = function(url, postJson) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.onreadystatechange = function () {
		if (xhr.readyState === 4 && xhr.status === 200) {
			var responseJson = JSON.parse(xhr.responseText);
			return responseJson;
		} else {
		  alert('Error ' + xhr.status);
		}
	};
	xhr.send(postJson);
};

var deleteJSON = function(url, deleteJson) {
	var xhr = new XMLHttpRequest();
	xhr.open("DELETE", url, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.onreadystatechange = function () {
		if (xhr.readyState === 4 && xhr.status === 200) {
			var responseJson = JSON.parse(xhr.responseText);
			return responseJson;
		} else {
		  alert('Error ' + xhr.status);
		}
	};
	xhr.send(deleteJson);
};

function selectBookByID(id) {
	getJSON(backend_url + '/books/read?id=' + id,
	function(err, data) {
	  if (err !== null) {
		alert('Something went wrong: ' + err);
	  } else {
		  if (data.books[0]) {
			  var book = data.books[0];
			  document.getElementById('id').value = book.id;
			  document.getElementById('title').value = book.name;
			  document.getElementById('author').value = book.author;
			  document.getElementById('description').value = book.description;
		  }
	  }
	});
};

function saveBookByID() {
	
	const bookData = { id: document.getElementById('id').value,
		name: document.getElementById('title').value,
		author : document.getElementById('author').value,
		description: document.getElementById('description').value };
	
	var bookJson = JSON.stringify(bookData);
	
	postJSON(backend_url + '/books/update', bookJson);
	location.reload();
};

function deleteBookByID() {
	const bookData = { id: document.getElementById('id').value };
	var bookJson = JSON.stringify(bookData);
	
	postJSON(backend_url + '/books/delete', bookJson);
	
	document.getElementById('id').value = '';
	document.getElementById('title').value = '';
	document.getElementById('author').value = '';
	document.getElementById('description').value = '';
	
	location.reload();
};

function saveBookAsNew() {
	
	const bookData = { name: document.getElementById('title').value,
		author : document.getElementById('author').value,
		description: document.getElementById('description').value };
	
	var bookJson = JSON.stringify(bookData);
	postJSON(backend_url + '/books/create', bookJson);
	location.reload();
};

window.onbeforeunload = function() {
	
	var id = document.getElementById('id').value;
	var title = document.getElementById('title').value;
	var author = document.getElementById('author').value;
	var description = document.getElementById('description').value;
	
    localStorage.setItem("id", id);
	localStorage.setItem("title", title);
	localStorage.setItem("author", author);
	localStorage.setItem("description", description);
}

window.onload = function() {

	var id = localStorage.getItem("id");
    var title = localStorage.getItem("title");
	var author = localStorage.getItem("author");
    var description = localStorage.getItem("description");
	
    if (id !== null) document.getElementById('id').value = id;
	if (title !== null) document.getElementById('title').value = title;
	if (author !== null) document.getElementById('author').value = author;
	if (description !== null) document.getElementById('description').value = description;
}