<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/category.php';  ?>
<?php include '../classes/direct.php';  ?>
<?php
    // gọi class category
    $dir = new direct(); 
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $directName = $_POST['directName'];
        $linkdirect = $_POST['link'];
        $direct_desc = $_POST['direct_desc'];
        $insertdirect = $dir -> insert_direct($directName,$linkdirect,$direct_desc); // hàm check catName khi submit lên
    }
  ?>
        <div class="grid_8">
            <div class="box round first grid">
                <h2>Thêm hướng dẫn</h2>      
               <div class="block"> 
                <?php 
                    if(isset($insertdirect)){
                        echo $insertdirect;
                    }
                 ?>
                 <form action="directadd.php" method="post" >
                    <table class="form">					
                        <tr>
                            <td>
                        <label>Hướng dẫn</label>
                    </td>
                            <td>
                                <input type="text" name="directName" placeholder="Thêm hướng dẫn..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                        <label>Đường dẫn</label>
                    </td>
                            <td>
                                <input type="text" name="link" placeholder="Đường link hướng dẫn..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                    <td style="vertical-align: top; padding-top: 9px;">
                        <label>Mô tả</label>
                    </td>
                    <td>
                        <textarea name="direct_desc" class="tinymce"></textarea>
                    </td>
                </tr>
                <tr> 
                            <td>
                                <input type="submit" name="submit" Value="Lưu lại" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
   <script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<?php include 'inc/footer.php';?>