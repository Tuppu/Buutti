<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
include_once '../config/Database.php';
include_once '../class/books.php';
 
$database = new Database();
$db = $database->getConnection();
 
$books = new books($db);
 
$data = json_decode(file_get_contents("php://input"));

if(!empty($data->name) && !empty($data->description) &&
!empty($data->author)){    

    $books->name = $data->name;
	$books->author = $data->author;
    $books->description = $data->description;
    $books->created = date('Y-m-d H:i:s');
    
    if($books->create()){         
        http_response_code(201);         
        echo json_encode(array("message" => "book was created."));
    } else{         
        http_response_code(503);        
        echo json_encode(array("message" => "Unable to create book."));
    }
}else{    
    http_response_code(400);    
    echo json_encode(array("message" => "Unable to create book. Data is incomplete."));
}
?>