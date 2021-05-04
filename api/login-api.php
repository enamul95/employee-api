<?php
include '../db_connection/database.php';
include '../dao/userdao.php';

$database = new Database();
$db = $database->getConnection();

$userDao = new UserDao($db);

// takes raw data from the request 
$json = file_get_contents('php://input');
// Converts it into a PHP object 
$data = json_decode($json, true);

$userDao->requestCode = $data['requestCode'];
$userDao->mobileNo = $data['phone'];
$userDao->password = $data['password'];
$stmt = $userDao->login();

if ($stmt->rowCount() > 0) {
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    $user_arr = array(
        "outCode" => "0",
        "outMessage" => "Successfully Login ",
        "userId" => $row['USER_ID'],
        "fullName" => $row['FULL_NAME'],
        "mobile" => $row['MOBILE_NO'],
        "email" => $row['EMAIL'],
        "usertype" => $row['USER_TYPE'],
        "userRole" => $row['USER_ROLE']
    );
} else {
   
    $user_arr = array(
        "outCode" => "1",
        "outMessage" => "Invalid User Id Or Password"
    );
}

// make it json format
print_r(json_encode($user_arr));
?>
