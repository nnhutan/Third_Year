<?php
$connect = new mysqli("localhost", "root", "", "examples");
$id = '';
if(isset($_GET['id'])){
$id = $_GET['id'];
if($id != ''){
    $sql = "delete from cars where id = $id";
    mysqli_query($connect, $sql);
    header("Location: a.php") ;
}
}
    mysqli_close($connect);