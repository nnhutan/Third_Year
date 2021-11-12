 <?php
 header('Access-Control-Allow-Origin:*');
 $action = '';
 if(!empty($_GET)){
     $action = $_GET['action'];
     switch($action){
         case 'list':
            getCarLists();
            break;
     }
 }

 function getCarLists(){
     $connect = new mysqli("localhost", "root", "", "examples");
     $sql = "select * from cars";
     $resultSet = mysqli_query($connect, $sql);
     $data = [];
     while($row = mysqli_fetch_array($resultSet, 1)){
         $data[] = $row;
     }
     mysqli_close($connect);
        http_response_code(200);
		header("Content-Type: application/json");
		echo json_encode($data,JSON_HEX_QUOT | JSON_HEX_TAG);
 }
?>