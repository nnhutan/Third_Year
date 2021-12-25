    <?php
header('Access-Control-Allow-Origin:*');
 $action = '';
 $_POST = json_decode(file_get_contents('php://input'), true);
 if(!empty($_POST)){
     $action = $_POST['action'];
     switch($action){
         case 'delete':
            deleteCar();
            break;
        }
    }
    
    function deleteCar() {
        $id = $_POST['id'];
        $connect = new mysqli("localhost", "root", "", "examples");
         $sql = "delete from cars where id = $id";
         mysqli_query($connect, $sql);
        mysqli_close($connect);
        http_response_code(200);
		header("Content-Type: application/json");
    }
    ?>