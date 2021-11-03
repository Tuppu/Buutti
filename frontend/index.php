<script type="text/javascript" src="js/dynamic.js"></script>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<?php 
require 'config.php';

include 'php/header.php';
include 'php/booksList.php';

echo '<H2>Book Editor</H1>';
echo '<form>';
echo ' <div id="fields">';
echo '  <input type="hidden" id="fid" name="fid">';
echo '  <label for="ftitle">Title:</label><br>';
echo '  <input type="text" id="ftitle" name="ftitle"><br>';
echo '  <label for="lauthor">Author:</label><br>';
echo '  <input type="text" id="lauthor" name="lauthor"><br>';
echo '  <label for="ldescription">Description:</label><br>';
echo '  <textarea id="ldescription" name="ldescription" cols="40" rows="5"></textarea><br>';
echo ' </div>';
echo ' <div id="buttons">';
echo '  <input type="button" id="lsave" name="lsave" value="Save">';
echo '  <input type="button" value="Save New">';
echo '  <input type="button" value="Delete">';
echo ' </div>';
echo '</form>';

include 'php/footer.php';