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
}