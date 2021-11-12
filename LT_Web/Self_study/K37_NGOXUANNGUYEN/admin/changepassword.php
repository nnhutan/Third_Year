<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/user.php';?>

<?php
$us = new user();
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $passold = $_POST['passold'];
        $passnew = $_POST['passnew'];
        $change_pass_admin = $us->change_pass_admin($_POST); // hàm check catName khi submit lên
    }
?>

<div class="grid_8">
    <div class="box round first grid">
        <h2>Thay đổi mật khẩu</h2>
        <?php 
        if(isset($change_pass_admin))
        {
            echo $change_pass_admin;
        }
            ?>
        <div class="block">               
         <form action="changepassword.php" method="post">
            <table class="form">					
                <tr>
                    <td>
                        <label>Mật khẩu cũ</label>
                    </td>
                    <td>
                        <input type="password" placeholder="Nhập mật khẩu cũ..."  name="passold" class="medium" />
                    </td>
                </tr>
				 <tr>
                    <td>
                        <label>Mật khẩu mới</label>
                    </td>
                    <td>
                        <input type="password" placeholder="Nhập mật khẩu mới..." name="passnew" class="medium" />
                    </td>
                </tr>
				 
				
				 <tr>
                    <td>
                    </td>
                    <td>
                        <input type="submit" name="submit" Value="Cập nhật" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<?php include 'inc/footer.php';?>