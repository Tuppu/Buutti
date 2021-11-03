<script type="text/javascript" src="js/dynamic.js"></script>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<?php 

echo '<H1>Buutti Back End REST API example</H1>';

$url = 'http://localhost/backend/books/read';
$data = array('key1' => 'value1', 'key2' => 'value2');

// use key 'http' even if you send the request to https://...
$options = array(
    'http' => array(
        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        'method'  => 'POST'
    )
);
$context  = stream_context_create($options);
$result = file_get_contents($url, false, $context);
$books = json_decode($result);
if ($result === FALSE) { /* Handle error */ }

//var_dump($books->books);

if (count($books->books)) {
        // Open the table
echo '<H2>List of the Books</H1>';
echo '<table id="books">';
echo '  <tr>';
echo '    <th>Title</th>';
echo '    <th>Author</th>';
echo '  </tr>';
        // Cycle through the array
        foreach ($books->books as $book) {
            // Output a row
            echo "<tr>";
            echo "<td>$book->name</td>";
            echo "<td>$book->author</td>";
            echo "</tr>";
        }

        // Close the table
        echo "</table>";
    }

echo '<H2>Book Editor</H1>';
echo '<form>';
echo ' <div id="fields">';
echo '  <label for="ftitle">Title:</label><br>';
echo '  <input type="text" id="ftitle" name="ftitle"><br>';
echo '  <label for="lauthor">Author:</label><br>';
echo '  <input type="text" id="lauthor" name="lauthor">';
echo ' </div>';
echo ' <div id="buttons">';
echo '  <input type="button" id="lsave" name="lsave" value="Save">';
echo '  <input type="button" value="Save New">';
echo '  <input type="button" value="Delete">';
echo ' </div>';
echo '</form>';