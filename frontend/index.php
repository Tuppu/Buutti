<?php 

echo '<H1>Buutti Back End REST API example</H1>';

echo '<H2>List of the Books</H1>';
echo '<table id="books">';
echo '  <tr>';
echo '    <th>Title</th>';
echo '    <th>Author</th>';
echo '  </tr>';
echo '  <tr>';
echo '    <td>title1</td>';
echo '    <td>author1</td>';
echo '  </tr>';
echo '  <tr>';
echo '    <td>title2</td>';
echo '    <td>author2</td>';
echo '  </tr>';
echo '</table>';

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