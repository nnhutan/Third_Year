<?php
header('Access-Control-Allow-Origin:*');
 $action = '';
 $_POST = json_decode(file_get_contents('php://input'), true);
 if(!empty($_POST)){
     $action = $_POST['action'];
     switch($action){
         case 'edit':
            editCar();
            break;
        }
    }
    
    function editCar() {
        $connect = new mysqli("localhost", "root", "", "examples");
        $id = $name = $year = '';
        if(isset($_POST["id"])){
            $id = $_POST["id"];
            $name = $_POST["name"];
            $year = $_POST["year"]; 
            $sql = "update cars set name = '$name', year = '$year' where id = $id";
            mysqli_query($connect, $sql);
        }
        mysqli_close($connect);
        http_response_code(200);
		header("Content-Type: application/json");
    }
    ?>