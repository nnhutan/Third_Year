<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
        <?php
        echo "Dùng vòng lặp for <br />";
        for($i=0;$i<=100;$i++) {
            if($i%2==0) continue;
            echo $i.' ';
        }
        echo "<br />Dùng vòng lặp while <br />";
        $i = 0;
        while(true) {
            if($i == 100) break;
            if($i%2==0&&$i++) continue;
            echo $i++.' ';
        }
        ?>
    </div>
</body>
</html>