<script type="text/javascript" src="js/dynamic.js"></script>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<?php 
include 'config.php';
include 'php/BooksList.php';

echo '<H1>Buutti Back End REST API example</H1>';

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

include 'php/footer.php';