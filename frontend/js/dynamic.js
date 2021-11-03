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
		}
	};
	xhr.send(deleteJson);
};

function selectBookByID(id) {
	getJSON('http://localhost/backend/books/read?id=' + id,
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
	
	postJSON('http://localhost/backend/books/update', bookJson);
	location.reload();
};
function deleteBookByID() {
	const bookData = { id: document.getElementById('id').value };
	var bookJson = JSON.stringify(bookData);
	
	postJSON('http://localhost/backend/books/delete', bookJson);
	location.reload();
};
function saveBookAsNew() {
	
	const bookData = { name: document.getElementById('title').value,
		author : document.getElementById('author').value,
		description: document.getElementById('description').value };
	
	var bookJson = JSON.stringify(bookData);
	postJSON('http://localhost/backend/books/create', bookJson);
	location.reload();
};