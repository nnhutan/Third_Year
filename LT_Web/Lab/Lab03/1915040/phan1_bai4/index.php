<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table, td, th {
        border: 1px solid black;
        }
        table{
            border-collapse: collapse;
            background-color: yellow;
        }
        td{
            min-width: 40px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <table>
            <tbody>
        <?php
            for($i=1; $i<=7;$i++) {
                echo "<tr>";
                    for($j = $i; $j <=7*$i; $j=$j+ $i) {
                        echo "<td>$j</td>";
                    }
                echo "</tr>";
            }
        ?>
            </tbody>
        </table>
    </div>
</body>
</html>