<?php
    $result = 0;
    $a = $b = $o = '';
    if(isset($_POST['a'])&&isset($_POST['b'])&&isset($_POST['o'])){
        $a = $_POST['a'];
        $b = $_POST['b'];
        $o = $_POST['o'];
        if(is_numeric($a) && is_numeric($b)){
            switch($o){
                case '+':
                    $result = $a+$b;
                    break;
                case '-':
                    $result = $a - $b;
                    break;
                case '*':
                    $result = $a * $b;
                    break;
                case '/':
                    if($b==0) $result = "Không thể chia cho 0!";
                    else
                        $result = $a / $b;
                    break;
                case '^':
                    $result = pow($a, $b);
                    break;
                case '!':
                    $result = "a = $b, b = $a";
                    break;
            }
        }
       else $result = "Dữ liệu nhập vào không đúng!";
    }
?>
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
        <form action="#" method="POST">
            <label>Số a</label>
            <input type="text" name='a'>
            <label >Số b</label>
            <input type="text" name='b'>
            <label >Chọn phép tính</label>
            <select name="o" >
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
                <option value="^">^</option>
                <option value="!">!</option>
            </select>
            <button type="submit">Solve</button>
        </form>
        <label >Kết quả</label>
        <input type="text" value="<?=$result?>" style = "min-width:400px">
    </div>
</body>
</html>