<?php
session_start();
if (!isset($_SESSION['user'])) {
header('Location: login.php');
die();
}
else{
    $username=$_SESSION['user'];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1 class="text-center"><span class="fw-light fst-italic">Xin chào</span> <?=$username?><span
                class="fw-light fst-italic">!</span></h1>
        <a href="./logout.php" class="btn btn-warning">Logout</a>
    </div>
</body>

</html>