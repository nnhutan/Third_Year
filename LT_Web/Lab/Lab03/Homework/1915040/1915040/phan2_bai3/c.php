<?php
$connect = new mysqli("localhost", "root", "", "examples");
$id = $name = $year = '';
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "select * from cars where id = $id";
    $result = mysqli_query($connect, $sql);
    $data = mysqli_fetch_array($result);
    $name = $data['name'];
    $year = $data['year'];
}
if(isset($_POST["name"])){
    $name = $_POST["name"];
    $year = $_POST["year"];
    $err = '';
    if(strlen($name)<5||strlen($name)>40) $err = $err.'Name phải có độ dài từ 5 tới 40 kí tự. ';
    if(!ctype_digit($year)||$year<1990||$year>2015) $err = $err.'Year phải là số nguyên và nằm trong khoảng 1990 tới 2015.';
    if($err == ''){
        $sql = "update cars set name = '$name', year = '$year' where id = $id";
        mysqli_query($connect, $sql);
        header("location: a.php");
        mysqli_close($connect);
        die();
    }
    else echo $err;
}
mysqli_close($connect);
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
        <div class="card">
            <div class="card-header text-center">
                <h2>Sửa dữ liệu ở bảng cars</h2>
            </div>
            <div class="card-body">
                <a href="./a.php" class="btn btn-primary">Quay lại</a>
                <form action="#" method="POST">
                    <label for="name" class="form-label mt-3">Name</label>
                    <input value="<?=$name?>" type="text" name="name" class="form-control" id="name"
                        placeholder="Enter name" required>
                    <label for="year" class="form-label mt-3">Year</label>
                    <input value="<?=$year?>" type="text" class="form-control" id="year" name="year"
                        placeholder="Enter year..." required>
                    <button type="submit" class="btn btn-warning mt-3">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>