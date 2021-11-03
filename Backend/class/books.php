<?php
class books{   
    
    private $booksTable = "books";      
    public $id;
    public $name;
	public $author;
    public $description;
    public $created; 
	public $modified; 
    private $conn;
	
    public function __construct($db){
        $this->conn = $db;
    }	
	
	function read(){	
		if($this->id) {
			$stmt = $this->conn->prepare("SELECT * FROM ".$this->booksTable." WHERE id = ?");
			$stmt->bind_param("i", $this->id);					
		} else {
			$stmt = $this->conn->prepare("SELECT * FROM ".$this->booksTable);		
		}		
		$stmt->execute();			
		$result = $stmt->get_result();		
		return $result;	
	}
	
	function create(){
		
		$stmt = $this->conn->prepare("
			INSERT INTO ".$this->booksTable."(`name`, `author`, `description`, `created`)
			VALUES(?,?,?,?)");
		
		$this->name = htmlspecialchars(strip_tags($this->name));
		$this->author = htmlspecialchars(strip_tags($this->author));
		$this->description = htmlspecialchars(strip_tags($this->description));
		$this->created = htmlspecialchars(strip_tags($this->created));
		
		$stmt->bind_param("ssss", $this->name, $this->author, $this->description, $this->created);
		
		if($stmt->execute()){
			return true;
		}
	 
		return false;		 
	}
		
	function update(){
	 
		$stmt = $this->conn->prepare("
			UPDATE ".$this->booksTable." 
			SET name= ?, author= ?, description = ?, created = ?
			WHERE id = ?");
	 
		$this->id = htmlspecialchars(strip_tags($this->id));
		$this->name = htmlspecialchars(strip_tags($this->name));
		$this->author = htmlspecialchars(strip_tags($this->author));
		$this->description = htmlspecialchars(strip_tags($this->description));
		$this->created = htmlspecialchars(strip_tags($this->created));
	 
		$stmt->bind_param("sssii", $this->name, $this->author, $this->description, $this->created, $this->id);
		
		if($stmt->execute()){
			return true;
		}
	 
		return false;
	}
	
	function delete(){
		
		$stmt = $this->conn->prepare("
			DELETE FROM ".$this->booksTable." 
			WHERE id = ?");
			
		$this->id = htmlspecialchars(strip_tags($this->id));
	 
		$stmt->bind_param("i", $this->id);
	 
		if($stmt->execute()){
			return true;
		}
	 
		return false;		 
	}
}
?>