<?php
$data = array('key1' => 'value1', 'key2' => 'value2');

// use key 'http' even if you send the request to https://...
$options = array(
    'http' => array(
        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        'method'  => 'POST'
    )
);
$context  = stream_context_create($options);
$result = file_get_contents($url . 'backend/books/read', false, $context);
$books = json_decode($result);
if ($result === FALSE) { /* Handle error */ }

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