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
                <h2>Liệt kê tất cả dữ liệu từ bảng cars</h2>
            </div>
            <div class="card-body">
                <a href="./b.php" class="btn btn-primary">
                    Thêm dữ liệu
                </a>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Year</th>
                            <th style="width:60px"></th>
                            <th style="width:60px"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $connect = new mysqli("localhost", "root", "", "examples");
                        $sql = "select * from cars";
                        $resultSet = mysqli_query($connect, $sql);
                        $data = [];
                        while($row = mysqli_fetch_array($resultSet, 1)){
                            $data[] = $row;
                        }
                        mysqli_close($connect);
                        $i=1;
                        foreach($data as $item){
                            echo '
                            <tr>
                                <td>'.$i++.'</td>
                                <td>'.$item['name'].'</td>
                                <td>'.$item['year'].'</td>
                                <td><a href="./c.php?id='.$item['id'].'" class="btn btn-warning">Edit</a></td>
                                <td><a href="./d.php?id='.$item['id'].'" class="btn btn-danger">Delete</a></td>
                            </tr>
                            ';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>