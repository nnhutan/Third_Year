<?php
header('Access-Control-Allow-Origin:*');
 $action = '';
 $_POST = json_decode(file_get_contents('php://input'), true);
 if(!empty($_POST)){
     $action = $_POST['action'];
     switch($action){
         case 'add':
            addCar();
            break;
        }
    }
    
    function addCar() {
        $connect = new mysqli("localhost", "root", "", "examples");
        $sql = "ALTER TABLE cars MODIFY COLUMN id INT auto_increment";
        mysqli_query($connect, $sql);
        $name = $year = '';
        if(isset($_POST["name"])){
            $name = $_POST["name"];
            $year = $_POST["year"]; 
            $sql = "insert into cars (name, year) values ('$name', $year)";
            mysqli_query($connect, $sql);
        }
        mysqli_close($connect);
        http_response_code(200);
		header("Content-Type: application/json");
    }
    ?>