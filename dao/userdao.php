<?php
 class UserDao {
     private $conn;
    private $table_name = "registration_tb";  
    
    public $mobileNo;
    public $password;
    public $imei;
    public $outCode;
    public $outMessage;
    public $requestCode;
    
    public function __construct($db) {       
        $this->conn = $db;
    }
    
    
     function login() {       
        $query = "SELECT
      *
      FROM user_mst u      
      WHERE
      u.MOBILE_NO='" . $this->mobileNo . "' AND u.PASSWORD='" . $this->password . "' AND u.ACTFLG='Y' ";
        $stmt = $this->conn->prepare($query);       
        $stmt->execute();
        return $stmt;
    }
    
 }
 
?>
