<?php
$connect = new mysqli("localhost", "root", "", "examples");
$id = '';
if(isset($_POST['id'])){
$id = $_POST['id'];
if($id != ''){
    $sql = "delete from cars where id = $id";
    mysqli_query($connect, $sql);
}
}
    mysqli_close($connect);