<script type="text/javascript" src="js/dynamic.js"></script>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<link rel="apple-touch-icon" sizes="180x180" href="misc/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="misc/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="misc/favicon-16x16.png">
<link rel="manifest" href="misc/site.webmanifest">
<?php 
require 'config.php';

include 'php/header.php';
include 'php/booksList.php';

echo '<H2>Book Editor</H1>';
echo '<form>';
echo ' <div id="fields">';
echo '  <input type="hidden" id="id" name="id">';
echo '  <label for="title">Title:</label><br>';
echo '  <input type="text" id="title" name="title"><br>';
echo '  <label for="author">Author:</label><br>';
echo '  <input type="text" id="author" name="author"><br>';
echo '  <label for="description">Description:</label><br>';
echo '  <textarea id="description" name="description" cols="40" rows="5"></textarea><br>';
echo ' </div>';
echo ' <div id="buttons">';
echo '  <input type="button" onclick="saveBookByID()" id="lsave" name="lsave" value="Save">';
echo '  <input type="button" onclick="saveBookAsNew()" value="Save New">';
echo '  <input type="button" onclick="deleteBookByID()" value="Delete">';
echo ' </div>';
echo '</form>';

include 'php/footer.php';