<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/Database.php';
include_once '../class/books.php';

$database = new Database();
$db = $database->getConnection();
 
$books = new books($db);

$books->id = (isset($_GET['id']) && $_GET['id']) ? $_GET['id'] : '0';

$result = $books->read();

if($result->num_rows > 0){    
    $bookRecords=array();
    $bookRecords["books"]=array(); 
	while ($book = $result->fetch_assoc()) { 	
        extract($book); 
        $bookDetails=array(
            "id" => $id,
            "name" => $name,
            "description" => $description,
			"author" => $author,        
			"created" => $created,
            "modified" => $modified			
        ); 
       array_push($bookRecords["books"], $bookDetails);
    }    
    http_response_code(200);     
    echo json_encode($bookRecords);
}else{     
    http_response_code(404);     
    echo json_encode(
        array("message" => "No book found.")
    );
} 